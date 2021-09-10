if [[ ! -f secp256k1.dc ]]
then
  1>&2 echo "could not find dc script file"
fi

secp256k1()
  if (( $# == 0 ))
  then
    {
      echo 16doi0
      sed 's/.*/&dlYxr2 2 8^^%lm*+lAx/'
      echo lEx
    } | dc -f secp256k1.dc -
  elif
    local OPTIND OPTARG o
    getopts hu: o
  then
    shift $((OPTIND - 1))
    case "$o" in
      u)
        if [[ "$OPTARG" =~ ^0[23][[:xdigit:]{2}{32}$ ]]
        then
	  dc -f secp256k1.dc -e "4 2 512^*16doi${OPTARG^^}dlYxr2 2 8^^%2 2 8^^*++P" |
	  xxd -p -u -c 65
        else return 7
        fi
        ;;
      h) cat <<-EOF
	Usage:
	  secp256k1
	  secp256k1 exponent
	  secp256k1 exponent1 exponent2 ...
	  secp256k1 -u compressed-point
	
	With no parameters, parses stdin as a list of compressed points
	and echoes their sum as a compressed point.

	With a single exponent parameter, echoes the corresponding
	compressed point.

	With more than one parameters, echoes their sum modulo the order of
	the curve, in hexadecimal.

	The -u option echoes the uncompressed form of a compressed point.
	
	An exponent is a natural integer in either decimal or hexadecimal format
	(with the 0x prefix for hexadecimal).
	EOF
        ;;
    esac
  elif (( $# > 1 ))
  then
    local i
    {
      echo 0
      for i in "$@"
      do
        if [[ "$i" =~ ^[[:digit:]]+$ ]]
        then echo "5d+i$i+"
	elif [[ "$i" =~ ^0x([[:xdigit:]]+)$ ]]
        then echo "8d+i${BASH_REMATCH[1]^^}+"
        fi
      done
      echo 'ln%[0x]P8d+op'
    } | dc -f secp256k1.dc -
  elif [[ "$1" =~ ^[[:digit:]]+$ ]]
  then $FUNCNAME "0x$(dc -e "$1 16on")"
  elif [[ "$1" =~ ^(0x)?([[:xdigit:]]+)$ ]]
  then dc -f secp256k1.dc -e "16doilG${BASH_REMATCH[2]^^}lMxlEx"
  else return 1
  fi

parse256() { xxd -u -p -c32; }
