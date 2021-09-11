if ! test -v base58
then . base58.sh
fi
. secp256k1.sh

BIP32_MAINNET_PUBLIC_VERSION_CODE=0x0488B21E
BIP32_MAINNET_PRIVATE_VERSION_CODE=0x0488ADE4
BIP32_TESTNET_PUBLIC_VERSION_CODE=0x043587CF
BIP32_TESTNET_PRIVATE_VERSION_CODE=0x04358394

isPrivate() ((
  $1 == BIP32_TESTNET_PRIVATE_VERSION_CODE ||
  $1 == BIP32_MAINNET_PRIVATE_VERSION_CODE
))

isPublic() ((
  $1 == BIP32_TESTNET_PUBLIC_VERSION_CODE ||
  $1 == BIP32_MAINNET_PUBLIC_VERSION_CODE
))

chr()
  if (( $1 < 0 || $1 > 255 ))
  then return 1
  else printf "\\$(printf '%03o' "$1")"
  fi

fingerprint() {
  xxd -p -r <<<"$1" |
  openssl dgst -sha256 -binary |
  openssl dgst -rmd160 -binary |
  head -c 4 |
  xxd -p -u -c 8
}

bip32()
  if local OPTIND OPTARG o
    getopts ht o
  then
    shift $((OPTIND - 1))
    case "$o" in
      h) cat <<-END_USAGE
	Usage:
	  $FUNCNAME extended-key
	  $FUNCNAME derivation-path
	  $FUNCNAME version depth parent-fingerprint child-number chain-code key

        Without
	END_USAGE
        ;;
      t) BITCOIN_NET=TEST $FUNCNAME "$@" ;;
    esac
  elif (($# == 0))
  then read; $FUNCNAME "$REPLY"
  elif base58 -v "$1"
  then
    base58 -d "$1" |
    xxd -p -c $((2*(78+4))) |
    {
      read
      local -a args=(
	"0x${REPLY:0:8}"   # 4 bytes:  version
	"0x${REPLY:8:2}"   # 1 byte:   depth
	"0x${REPLY:10:8}"  # 4 bytes:  fingerprint of the parent's key
	"0x${REPLY:18:8}"  # 4 bytes:  child number
	"${REPLY:26:64}"   # 32 bytes: chain code
	"${REPLY:90:66}"   # 33 bytes: public or private key data
      )
      if $FUNCNAME "${args[@]}" >/dev/null
      then echo "${args[@]}"
      else return $?
      fi
    }
  elif (( $# == 6 ))
  then
    local -i version=$1 depth=$2 fingerprint=$3 childnumber=$4
    local chaincode=$5 key=$6
    if ((
      version != BIP32_TESTNET_PRIVATE_VERSION_CODE &&
      version != BIP32_MAINNET_PRIVATE_VERSION_CODE &&
      version != BIP32_TESTNET_PUBLIC_VERSION_CODE  &&
      version != BIP32_MAINNET_PUBLIC_VERSION_CODE
    ))
    then return 1
    elif ((depth < 0 || depth > 255))
    then return 2
    elif ((fingerprint < 0 || fingerprint > 0xffffffff))
    then return 3
    elif ((childnumber < 0 || childnumber > 0xffffffff))
    then return 4
    elif [[ ! "$chaincode" =~ ^[[:xdigit:]]{64}$ ]]
    then return 5
    elif [[ ! "$key" =~ ^[[:xdigit:]]{66}$ ]]
    then return 6
    elif isPublic  $version && [[ "$key" =~ ^00    ]]
    then return 7
    elif isPrivate $version && [[ "$key" =~ ^0[23] ]]
    then return 8
    elif local decompressedKey="$(secp256k1 -u "${key^^}")"
      [[ "$key" =~ ^03 && "$decompressedKey" =~ [02468ACE]$ ]] ||
      [[ "$key" =~ ^02 && "$decompressedKey" =~ [13579BDF]$ ]]
    then return 9
    else
      {
        ser32 $version
	chr   $depth
	ser32 $fingerprint
	ser32 $childnumber
	xxd -p -r <<<"$chaincode$key"
      } | base58 -c
    fi
  elif [[ "$1" = m ]]
  then
    local -i version=$BIP32_MAINNET_PRIVATE_VERSION_CODE
    if [[ "$BITCOIN_NET" = 'TEST' ]]
    then version=$BIP32_TESTNET_PRIVATE_VERSION_CODE
    fi
    openssl dgst -sha512 -hmac "Bitcoin seed" -binary |
    xxd -u -p -c 64 |
    {
      read
      $FUNCNAME $version 0 0 0 "${REPLY:64:64}" "00${REPLY:0:64}"
    }
  elif [[ "$1" = M ]]
  then
    $FUNCNAME |
    {
      local -i version depth pfp index
      local    cc key
      read version depth pfp index cc key
      if ((
	version == $BIP32_MAINNET_PRIVATE_VERSION_CODE ||
        version == $BIP32_TESTNET_PRIVATE_VERSION_CODE
      ))
      then return 1
      elif (( depth != 0 || pfp != 0 || index != 0 ))
      then return 2
      fi
      $FUNCNAME $version $depth $pfp $index $cc $key
    }
  elif [[ "$1" = fp ]]
  then
    read
    if [[ "$REPLY" =~ ^[tx]prv ]]
    then echo "$REPLY" | $FUNCNAME 'n/fp'
    else
      $FUNCNAME <<<"$REPLY" |
      {
        local -i v d p i
        local c k
        read v d p i c key
        fingerprint "$key"
      }
    fi
  elif [[ "$1" = n ]]
  then
    $FUNCNAME |
    {
      local -i version depth pfp index
      local    cc key
      read version depth pfp index cc key
      case $version in
         $((BIP32_TESTNET_PUBLIC_VERSION_CODE)))
           ;;
         $((BIP32_MAINNET_PUBLIC_VERSION_CODE)))
           ;;
         $((BIP32_MAINNET_PRIVATE_VERSION_CODE)))
           version=$BIP32_MAINNET_PUBLIC_VERSION_CODE;;&
         $((BIP32_TESTNET_PRIVATE_VERSION_CODE)))
           version=$BIP32_TESTNET_PUBLIC_VERSION_CODE;;&
         *)
           key="$(secp256k1 "0x$key")"
      esac
      $FUNCNAME $version $depth $pfp $index $cc $key
    }
  elif [[ "$1" =~ ^([[:digit:]]+)(h?)$ ]]
  then
    local -i childIndex=${BASH_REMATCH[1]}
    test -n "${BASH_REMATCH[2]}" && ((childIndex+= 1<<31))
    $FUNCNAME |
    {
      local -i version depth pfp index    fp
      local    cc key
      read version depth pfp index cc key
      
      if isPrivate $version
      then
        CKDpriv "$key" "$cc" $childIndex |
        {
           local ki ci
           read ki ci
	   fp="0x$(fingerprint "$(secp256k1 "0x$key")")"
           $FUNCNAME $version $((depth+1)) $fp $childIndex $ci $ki
        }
      elif isPublic $version
      then
        CKDpub "$key" "$cc" $childIndex |
        {
           local Ki ci
           read Ki ci
	   fp="0x$(fingerprint "$key")"
           $FUNCNAME $version $((depth+1)) $fp $childIndex $ci $Ki
        }
      else return 255  # should never happen
      fi
    } 

  elif [[ "$1" = json ]]
  then
    $FUNCNAME |
    {
      local -i version depth pfp index
      local    cc key
      read version depth pfp index cc key
      printf '{
         "version": %u,
         "depth": %u,
         "parent fingerprint": %u,
         "child number": %u,
         "chain code": "%s",
         "key": "%s"
      }\n' $version $depth $pfp $index $cc $key
    }
  elif [[ "$1" =~ / ]]
  then $FUNCNAME "${1%%/*}" |$FUNCNAME "${1#*/}"
  else return 1
  fi

CKDpub()
  if [[ ! "$1" =~ ^0[23]([[:xdigit:]]{2}){32}$ ]]
  then return 1
  elif [[ ! "$2" =~ ^([[:xdigit:]]{2}){32}$ ]]
  then return 2
  elif local Kpar="$1" cpar="$2"
       local -i i=$3
    ((i < 0 || i > 1<<32))
  then return 3
  else
    if (( i >= (1 << 31) ))
    then return 4
    else
      {
	xxd -p -r <<<"$Kpar"
	ser32 $i
      } |
      openssl dgst -sha512 -mac hmac -macopt hexkey:$cpar -binary |
      xxd -p -u -c 64 |
      {
	read
	local Ki="$({ secp256k1 "0x${REPLY:0:64}"; echo "${Kpar^^}"; } |secp256k1 )"
	local ci="${REPLY:64:64}"
	echo $Ki $ci
      }
    fi
  fi

CKDpriv()
  if [[ ! "$1" =~ ^00([[:xdigit:]]{2}){32}$ ]]
  then return 1
  elif [[ ! "$2" =~ ^([[:xdigit:]]{2}){32}$ ]]
  then return 2
  elif local kpar="${1:2}" cpar="$2"
       local -i i=$3
    ((i < 0 || i > 1<<32))
  then return 3
  else
    if (( i >= (1 << 31) ))
    then
      printf "\x00"
      ser256 "0x$kpar"
      ser32 $i
    else
      secp256k1 "0x$kpar" |xxd -p -r
      ser32 $i
    fi |
    openssl dgst -sha512 -mac hmac -macopt hexkey:$cpar -binary |
    xxd -p -c 64 |
    {
      read
      local ki ci
      ki="$(secp256k1 "0x$kpar" "0x${REPLY:0:64}")"
      ki="00$(ser256 "$ki" |xxd -p -c 64)"
      ci="${REPLY:64:64}"
      echo $ki $ci
    }
  fi

ser32()
  if
    local -i i=$1
    ((i >= 0 && i < 1<<32)) 
  then printf "%08x" $i |xxd -p -r
  else
    1>&2 echo index out of range
    return 1
  fi

ser256()
  if   [[ "$1" =~ ^(0x)?([[:xdigit:]]{2}{32})$ ]]
  then xxd -p -r <<<"${BASH_REMATCH[2]}"
  elif [[ "$1" =~ ^(0x)?([[:xdigit:]]{,63})$ ]]
  then $FUNCNAME "0x0${BASH_REMATCH[2]}"
  else return 1
  fi

