#!/usr/bin/env bash

# list of words from
# https://github.com/trezor/python-mnemonic/blob/master/src/mnemonic/wordlist/english.txt
declare -a english=(
  abandon ability able about above absent absorb abstract absurd abuse
  access accident account accuse achieve acid acoustic acquire across act
  action actor actress actual adapt add addict address adjust admit adult
  advance advice aerobic affair afford afraid again age agent agree ahead
  aim air airport aisle alarm album alcohol alert alien all alley allow
  almost alone alpha already also alter always amateur amazing among amount
  amused analyst anchor ancient anger angle angry animal ankle announce
  annual another answer antenna antique anxiety any apart apology appear
  apple approve april arch arctic area arena argue arm armed armor army
  around arrange arrest arrive arrow art artefact artist artwork ask aspect
  assault asset assist assume asthma athlete atom attack attend attitude
  attract auction audit august aunt author auto autumn average avocado
  avoid awake aware away awesome awful awkward axis baby bachelor bacon
  badge bag balance balcony ball bamboo banana banner bar barely bargain
  barrel base basic basket battle beach bean beauty because become beef
  before begin behave behind believe below belt bench benefit best betray
  better between beyond bicycle bid bike bind biology bird birth bitter
  black blade blame blanket blast bleak bless blind blood blossom blouse
  blue blur blush board boat body boil bomb bone bonus book boost border
  boring borrow boss bottom bounce box boy bracket brain brand brass brave
  bread breeze brick bridge brief bright bring brisk broccoli broken bronze
  broom brother brown brush bubble buddy budget buffalo build bulb bulk
  bullet bundle bunker burden burger burst bus business busy butter buyer
  buzz cabbage cabin cable cactus cage cake call calm camera camp can canal
  cancel candy cannon canoe canvas canyon capable capital captain car carbon
  card cargo carpet carry cart case cash casino castle casual cat catalog
  catch category cattle caught cause caution cave ceiling celery cement
  census century cereal certain chair chalk champion change chaos chapter
  charge chase chat cheap check cheese chef cherry chest chicken chief child
  chimney choice choose chronic chuckle chunk churn cigar cinnamon circle
  citizen city civil claim clap clarify claw clay clean clerk clever click
  client cliff climb clinic clip clock clog close cloth cloud clown club
  clump cluster clutch coach coast coconut code coffee coil coin collect
  color column combine come comfort comic common company concert conduct
  confirm congress connect consider control convince cook cool copper copy
  coral core corn correct cost cotton couch country couple course cousin
  cover coyote crack cradle craft cram crane crash crater crawl crazy
  cream credit creek crew cricket crime crisp critic crop cross crouch
  crowd crucial cruel cruise crumble crunch crush cry crystal cube culture
  cup cupboard curious current curtain curve cushion custom cute cycle
  dad damage damp dance danger daring dash daughter dawn day deal debate
  debris decade december decide decline decorate decrease deer defense
  define defy degree delay deliver demand demise denial dentist deny depart
  depend deposit depth deputy derive describe desert design desk despair
  destroy detail detect develop device devote diagram dial diamond diary
  dice diesel diet differ digital dignity dilemma dinner dinosaur direct
  dirt disagree discover disease dish dismiss disorder display distance
  divert divide divorce dizzy doctor document dog doll dolphin domain
  donate donkey donor door dose double dove draft dragon drama drastic
  draw dream dress drift drill drink drip drive drop drum dry duck dumb
  dune during dust dutch duty dwarf dynamic eager eagle early earn earth
  easily east easy echo ecology economy edge edit educate effort egg eight
  either elbow elder electric elegant element elephant elevator elite else
  embark embody embrace emerge emotion employ empower empty enable enact
  end endless endorse enemy energy enforce engage engine enhance enjoy
  enlist enough enrich enroll ensure enter entire entry envelope episode
  equal equip era erase erode erosion error erupt escape essay essence
  estate eternal ethics evidence evil evoke evolve exact example excess
  exchange excite exclude excuse execute exercise exhaust exhibit exile
  exist exit exotic expand expect expire explain expose express extend extra
  eye eyebrow fabric face faculty fade faint faith fall false fame family
  famous fan fancy fantasy farm fashion fat fatal father fatigue fault
  favorite feature february federal fee feed feel female fence festival
  fetch fever few fiber fiction field figure file film filter final find
  fine finger finish fire firm first fiscal fish fit fitness fix flag flame
  flash flat flavor flee flight flip float flock floor flower fluid flush
  fly foam focus fog foil fold follow food foot force forest forget fork
  fortune forum forward fossil foster found fox fragile frame frequent
  fresh friend fringe frog front frost frown frozen fruit fuel fun funny
  furnace fury future gadget gain galaxy gallery game gap garage garbage
  garden garlic garment gas gasp gate gather gauge gaze general genius
  genre gentle genuine gesture ghost giant gift giggle ginger giraffe
  girl give glad glance glare glass glide glimpse globe gloom glory glove
  glow glue goat goddess gold good goose gorilla gospel gossip govern gown
  grab grace grain grant grape grass gravity great green grid grief grit
  grocery group grow grunt guard guess guide guilt guitar gun gym habit
  hair half hammer hamster hand happy harbor hard harsh harvest hat have
  hawk hazard head health heart heavy hedgehog height hello helmet help hen
  hero hidden high hill hint hip hire history hobby hockey hold hole holiday
  hollow home honey hood hope horn horror horse hospital host hotel hour
  hover hub huge human humble humor hundred hungry hunt hurdle hurry hurt
  husband hybrid ice icon idea identify idle ignore ill illegal illness
  image imitate immense immune impact impose improve impulse inch include
  income increase index indicate indoor industry infant inflict inform
  inhale inherit initial inject injury inmate inner innocent input inquiry
  insane insect inside inspire install intact interest into invest invite
  involve iron island isolate issue item ivory jacket jaguar jar jazz
  jealous jeans jelly jewel job join joke journey joy judge juice jump
  jungle junior junk just kangaroo keen keep ketchup key kick kid kidney
  kind kingdom kiss kit kitchen kite kitten kiwi knee knife knock know
  lab label labor ladder lady lake lamp language laptop large later latin
  laugh laundry lava law lawn lawsuit layer lazy leader leaf learn leave
  lecture left leg legal legend leisure lemon lend length lens leopard
  lesson letter level liar liberty library license life lift light like
  limb limit link lion liquid list little live lizard load loan lobster
  local lock logic lonely long loop lottery loud lounge love loyal lucky
  luggage lumber lunar lunch luxury lyrics machine mad magic magnet maid
  mail main major make mammal man manage mandate mango mansion manual maple
  marble march margin marine market marriage mask mass master match material
  math matrix matter maximum maze meadow mean measure meat mechanic medal
  media melody melt member memory mention menu mercy merge merit merry mesh
  message metal method middle midnight milk million mimic mind minimum minor
  minute miracle mirror misery miss mistake mix mixed mixture mobile model
  modify mom moment monitor monkey monster month moon moral more morning
  mosquito mother motion motor mountain mouse move movie much muffin mule
  multiply muscle museum mushroom music must mutual myself mystery myth
  naive name napkin narrow nasty nation nature near neck need negative
  neglect neither nephew nerve nest net network neutral never news next
  nice night noble noise nominee noodle normal north nose notable note
  nothing notice novel now nuclear number nurse nut oak obey object oblige
  obscure observe obtain obvious occur ocean october odor off offer office
  often oil okay old olive olympic omit once one onion online only open
  opera opinion oppose option orange orbit orchard order ordinary organ
  orient original orphan ostrich other outdoor outer output outside oval
  oven over own owner oxygen oyster ozone pact paddle page pair palace palm
  panda panel panic panther paper parade parent park parrot party pass patch
  path patient patrol pattern pause pave payment peace peanut pear peasant
  pelican pen penalty pencil people pepper perfect permit person pet phone
  photo phrase physical piano picnic picture piece pig pigeon pill pilot
  pink pioneer pipe pistol pitch pizza place planet plastic plate play
  please pledge pluck plug plunge poem poet point polar pole police pond
  pony pool popular portion position possible post potato pottery poverty
  powder power practice praise predict prefer prepare present pretty prevent
  price pride primary print priority prison private prize problem process
  produce profit program project promote proof property prosper protect
  proud provide public pudding pull pulp pulse pumpkin punch pupil puppy
  purchase purity purpose purse push put puzzle pyramid quality quantum
  quarter question quick quit quiz quote rabbit raccoon race rack radar
  radio rail rain raise rally ramp ranch random range rapid rare rate
  rather raven raw razor ready real reason rebel rebuild recall receive
  recipe record recycle reduce reflect reform refuse region regret regular
  reject relax release relief rely remain remember remind remove render
  renew rent reopen repair repeat replace report require rescue resemble
  resist resource response result retire retreat return reunion reveal
  review reward rhythm rib ribbon rice rich ride ridge rifle right rigid
  ring riot ripple risk ritual rival river road roast robot robust rocket
  romance roof rookie room rose rotate rough round route royal rubber rude
  rug rule run runway rural sad saddle sadness safe sail salad salmon salon
  salt salute same sample sand satisfy satoshi sauce sausage save say scale
  scan scare scatter scene scheme school science scissors scorpion scout
  scrap screen script scrub sea search season seat second secret section
  security seed seek segment select sell seminar senior sense sentence
  series service session settle setup seven shadow shaft shallow share
  shed shell sheriff shield shift shine ship shiver shock shoe shoot shop
  short shoulder shove shrimp shrug shuffle shy sibling sick side siege
  sight sign silent silk silly silver similar simple since sing siren
  sister situate six size skate sketch ski skill skin skirt skull slab
  slam sleep slender slice slide slight slim slogan slot slow slush small
  smart smile smoke smooth snack snake snap sniff snow soap soccer social
  sock soda soft solar soldier solid solution solve someone song soon
  sorry sort soul sound soup source south space spare spatial spawn speak
  special speed spell spend sphere spice spider spike spin spirit split
  spoil sponsor spoon sport spot spray spread spring spy square squeeze
  squirrel stable stadium staff stage stairs stamp stand start state stay
  steak steel stem step stereo stick still sting stock stomach stone stool
  story stove strategy street strike strong struggle student stuff stumble
  style subject submit subway success such sudden suffer sugar suggest suit
  summer sun sunny sunset super supply supreme sure surface surge surprise
  surround survey suspect sustain swallow swamp swap swarm swear sweet
  swift swim swing switch sword symbol symptom syrup system table tackle
  tag tail talent talk tank tape target task taste tattoo taxi teach team
  tell ten tenant tennis tent term test text thank that theme then theory
  there they thing this thought three thrive throw thumb thunder ticket tide
  tiger tilt timber time tiny tip tired tissue title toast tobacco today
  toddler toe together toilet token tomato tomorrow tone tongue tonight
  tool tooth top topic topple torch tornado tortoise toss total tourist
  toward tower town toy track trade traffic tragic train transfer trap
  trash travel tray treat tree trend trial tribe trick trigger trim trip
  trophy trouble truck true truly trumpet trust truth try tube tuition
  tumble tuna tunnel turkey turn turtle twelve twenty twice twin twist two
  type typical ugly umbrella unable unaware uncle uncover under undo unfair
  unfold unhappy uniform unique unit universe unknown unlock until unusual
  unveil update upgrade uphold upon upper upset urban urge usage use used
  useful useless usual utility vacant vacuum vague valid valley valve van
  vanish vapor various vast vault vehicle velvet vendor venture venue verb
  verify version very vessel veteran viable vibrant vicious victory video
  view village vintage violin virtual virus visa visit visual vital vivid
  vocal voice void volcano volume vote voyage wage wagon wait walk wall
  walnut want warfare warm warrior wash wasp waste water wave way wealth
  weapon wear weasel weather web wedding weekend weird welcome west wet
  whale what wheat wheel when where whip whisper wide width wife wild will
  win window wine wing wink winner winter wire wisdom wise wish witness
  wolf woman wonder wood wool word work world worry worth wrap wreck wrestle
  wrist write wrong yard year yellow you young youth zebra zero zone zoo
)

declare -a spanish=(
  ábaco abdomen abeja abierto abogado abono aborto abrazo abrir abuelo abuso
  acabar academia acceso acción aceite acelga acento aceptar ácido aclarar acné
  acoger acoso activo acto actriz actuar acudir acuerdo acusar adicto admitir
  adoptar adorno aduana adulto aéreo afectar afición afinar afirmar ágil agitar
  agonía agosto agotar agregar agrio agua agudo águila aguja ahogo ahorro aire
  aislar ajedrez ajeno ajuste alacrán alambre alarma alba álbum alcalde aldea
  alegre alejar alerta aleta alfiler alga algodón aliado aliento alivio alma
  almeja almíbar altar alteza altivo alto altura alumno alzar amable amante
  amapola amargo amasar ámbar ámbito ameno amigo amistad amor amparo amplio ancho
  anciano ancla andar andén anemia ángulo anillo ánimo anís anotar antena antiguo
  antojo anual anular anuncio añadir añejo año apagar aparato apetito apio
  aplicar apodo aporte apoyo aprender aprobar apuesta apuro arado araña arar
  árbitro árbol arbusto archivo arco arder ardilla arduo área árido aries armonía
  arnés aroma arpa arpón arreglo arroz arruga arte artista asa asado asalto
  ascenso asegurar aseo asesor asiento asilo asistir asno asombro áspero astilla
  astro astuto asumir asunto atajo ataque atar atento ateo ático atleta átomo
  atraer atroz atún audaz audio auge aula aumento ausente autor aval avance avaro
  ave avellana avena avestruz avión aviso ayer ayuda ayuno azafrán azar azote
  azúcar azufre azul baba babor bache bahía baile bajar balanza balcón balde
  bambú banco banda baño barba barco barniz barro báscula bastón basura batalla
  batería batir batuta baúl bazar bebé bebida bello besar beso bestia bicho bien
  bingo blanco bloque blusa boa bobina bobo boca bocina boda bodega boina bola
  bolero bolsa bomba bondad bonito bono bonsái borde borrar bosque bote botín
  bóveda bozal bravo brazo brecha breve brillo brinco brisa broca broma bronce
  brote bruja brusco bruto buceo bucle bueno buey bufanda bufón búho buitre bulto
  burbuja burla burro buscar butaca buzón caballo cabeza cabina cabra cacao
  cadáver cadena caer café caída caimán caja cajón cal calamar calcio caldo
  calidad calle calma calor calvo cama cambio camello camino campo cáncer candil
  canela canguro canica canto caña cañón caoba caos capaz capitán capote captar
  capucha cara carbón cárcel careta carga cariño carne carpeta carro carta casa
  casco casero caspa castor catorce catre caudal causa cazo cebolla ceder cedro
  celda célebre celoso célula cemento ceniza centro cerca cerdo cereza cero
  cerrar certeza césped cetro chacal chaleco champú chancla chapa charla chico
  chiste chivo choque choza chuleta chupar ciclón ciego cielo cien cierto cifra
  cigarro cima cinco cine cinta ciprés circo ciruela cisne cita ciudad clamor
  clan claro clase clave cliente clima clínica cobre cocción cochino cocina coco
  código codo cofre coger cohete cojín cojo cola colcha colegio colgar colina
  collar colmo columna combate comer comida cómodo compra conde conejo conga
  conocer consejo contar copa copia corazón corbata corcho cordón corona correr
  coser cosmos costa cráneo cráter crear crecer creído crema cría crimen cripta
  crisis cromo crónica croqueta crudo cruz cuadro cuarto cuatro cubo cubrir
  cuchara cuello cuento cuerda cuesta cueva cuidar culebra culpa culto cumbre
  cumplir cuna cuneta cuota cupón cúpula curar curioso curso curva cutis dama
  danza dar dardo dátil deber débil década decir dedo defensa definir dejar
  delfín delgado delito demora denso dental deporte derecho derrota desayuno
  deseo desfile desnudo destino desvío detalle detener deuda día diablo diadema
  diamante diana diario dibujo dictar diente dieta diez difícil digno dilema
  diluir dinero directo dirigir disco diseño disfraz diva divino doble doce dolor
  domingo don donar dorado dormir dorso dos dosis dragón droga ducha duda duelo
  dueño dulce dúo duque durar dureza duro ébano ebrio echar eco ecuador edad
  edición edificio editor educar efecto eficaz eje ejemplo elefante elegir
  elemento elevar elipse élite elixir elogio eludir embudo emitir emoción empate
  empeño empleo empresa enano encargo enchufe encía enemigo enero enfado enfermo
  engaño enigma enlace enorme enredo ensayo enseñar entero entrar envase envío
  época equipo erizo escala escena escolar escribir escudo esencia esfera
  esfuerzo espada espejo espía esposa espuma esquí estar este estilo estufa etapa
  eterno ética etnia evadir evaluar evento evitar exacto examen exceso excusa
  exento exigir exilio existir éxito experto explicar exponer extremo fábrica
  fábula fachada fácil factor faena faja falda fallo falso faltar fama familia
  famoso faraón farmacia farol farsa fase fatiga fauna favor fax febrero fecha
  feliz feo feria feroz fértil fervor festín fiable fianza fiar fibra ficción
  ficha fideo fiebre fiel fiera fiesta figura fijar fijo fila filete filial
  filtro fin finca fingir finito firma flaco flauta flecha flor flota fluir flujo
  flúor fobia foca fogata fogón folio folleto fondo forma forro fortuna forzar
  fosa foto fracaso frágil franja frase fraude freír freno fresa frío frito fruta
  fuego fuente fuerza fuga fumar función funda furgón furia fusil fútbol futuro
  gacela gafas gaita gajo gala galería gallo gamba ganar gancho ganga ganso
  garaje garza gasolina gastar gato gavilán gemelo gemir gen género genio gente
  geranio gerente germen gesto gigante gimnasio girar giro glaciar globo gloria
  gol golfo goloso golpe goma gordo gorila gorra gota goteo gozar grada gráfico
  grano grasa gratis grave grieta grillo gripe gris grito grosor grúa grueso
  grumo grupo guante guapo guardia guerra guía guiño guion guiso guitarra gusano
  gustar haber hábil hablar hacer hacha hada hallar hamaca harina haz hazaña
  hebilla hebra hecho helado helio hembra herir hermano héroe hervir hielo hierro
  hígado higiene hijo himno historia hocico hogar hoguera hoja hombre hongo honor
  honra hora hormiga horno hostil hoyo hueco huelga huerta hueso huevo huida huir
  humano húmedo humilde humo hundir huracán hurto icono ideal idioma ídolo
  iglesia iglú igual ilegal ilusión imagen imán imitar impar imperio imponer
  impulso incapaz índice inerte infiel informe ingenio inicio inmenso inmune
  innato insecto instante interés íntimo intuir inútil invierno ira iris ironía
  isla islote jabalí jabón jamón jarabe jardín jarra jaula jazmín jefe jeringa
  jinete jornada joroba joven joya juerga jueves juez jugador jugo juguete juicio
  junco jungla junio juntar júpiter jurar justo juvenil juzgar kilo koala labio
  lacio lacra lado ladrón lagarto lágrima laguna laico lamer lámina lámpara lana
  lancha langosta lanza lápiz largo larva lástima lata látex latir laurel lavar
  lazo leal lección leche lector leer legión legumbre lejano lengua lento leña
  león leopardo lesión letal letra leve leyenda libertad libro licor líder lidiar
  lienzo liga ligero lima límite limón limpio lince lindo línea lingote lino
  linterna líquido liso lista litera litio litro llaga llama llanto llave llegar
  llenar llevar llorar llover lluvia lobo loción loco locura lógica logro lombriz
  lomo lonja lote lucha lucir lugar lujo luna lunes lupa lustro luto luz maceta
  macho madera madre maduro maestro mafia magia mago maíz maldad maleta malla
  malo mamá mambo mamut manco mando manejar manga maniquí manjar mano manso manta
  mañana mapa máquina mar marco marea marfil margen marido mármol marrón martes
  marzo masa máscara masivo matar materia matiz matriz máximo mayor mazorca mecha
  medalla medio médula mejilla mejor melena melón memoria menor mensaje mente
  menú mercado merengue mérito mes mesón meta meter método metro mezcla miedo
  miel miembro miga mil milagro militar millón mimo mina minero mínimo minuto
  miope mirar misa miseria misil mismo mitad mito mochila moción moda modelo moho
  mojar molde moler molino momento momia monarca moneda monja monto moño morada
  morder moreno morir morro morsa mortal mosca mostrar motivo mover móvil mozo
  mucho mudar mueble muela muerte muestra mugre mujer mula muleta multa mundo
  muñeca mural muro músculo museo musgo música muslo nácar nación nadar naipe
  naranja nariz narrar nasal natal nativo natural náusea naval nave navidad necio
  néctar negar negocio negro neón nervio neto neutro nevar nevera nicho nido
  niebla nieto niñez niño nítido nivel nobleza noche nómina noria norma norte
  nota noticia novato novela novio nube nuca núcleo nudillo nudo nuera nueve nuez
  nulo número nutria oasis obeso obispo objeto obra obrero observar obtener obvio
  oca ocaso océano ochenta ocho ocio ocre octavo octubre oculto ocupar ocurrir
  odiar odio odisea oeste ofensa oferta oficio ofrecer ogro oído oír ojo ola
  oleada olfato olivo olla olmo olor olvido ombligo onda onza opaco opción ópera
  opinar oponer optar óptica opuesto oración orador oral órbita orca orden oreja
  órgano orgía orgullo oriente origen orilla oro orquesta oruga osadía oscuro
  osezno oso ostra otoño otro oveja óvulo óxido oxígeno oyente ozono pacto padre
  paella página pago país pájaro palabra palco paleta pálido palma paloma palpar
  pan panal pánico pantera pañuelo papá papel papilla paquete parar parcela pared
  parir paro párpado parque párrafo parte pasar paseo pasión paso pasta pata
  patio patria pausa pauta pavo payaso peatón pecado pecera pecho pedal pedir
  pegar peine pelar peldaño pelea peligro pellejo pelo peluca pena pensar peñón
  peón peor pepino pequeño pera percha perder pereza perfil perico perla permiso
  perro persona pesa pesca pésimo pestaña pétalo petróleo pez pezuña picar pichón
  pie piedra pierna pieza pijama pilar piloto pimienta pino pintor pinza piña
  piojo pipa pirata pisar piscina piso pista pitón pizca placa plan plata playa
  plaza pleito pleno plomo pluma plural pobre poco poder podio poema poesía poeta
  polen policía pollo polvo pomada pomelo pomo pompa poner porción portal posada
  poseer posible poste potencia potro pozo prado precoz pregunta premio prensa
  preso previo primo príncipe prisión privar proa probar proceso producto proeza
  profesor programa prole promesa pronto propio próximo prueba público puchero
  pudor pueblo puerta puesto pulga pulir pulmón pulpo pulso puma punto puñal puño
  pupa pupila puré quedar queja quemar querer queso quieto química quince quitar
  rábano rabia rabo ración radical raíz rama rampa rancho rango rapaz rápido
  rapto rasgo raspa rato rayo raza razón reacción realidad rebaño rebote recaer
  receta rechazo recoger recreo recto recurso red redondo reducir reflejo reforma
  refrán refugio regalo regir regla regreso rehén reino reír reja relato relevo
  relieve relleno reloj remar remedio remo rencor rendir renta reparto repetir
  reposo reptil res rescate resina respeto resto resumen retiro retorno retrato
  reunir revés revista rey rezar rico riego rienda riesgo rifa rígido rigor
  rincón riñón río riqueza risa ritmo rito rizo roble roce rociar rodar rodeo
  rodilla roer rojizo rojo romero romper ron ronco ronda ropa ropero rosa rosca
  rostro rotar rubí rubor rudo rueda rugir ruido ruina ruleta rulo rumbo rumor
  ruptura ruta rutina sábado saber sabio sable sacar sagaz sagrado sala saldo
  salero salir salmón salón salsa salto salud salvar samba sanción sandía sanear
  sangre sanidad sano santo sapo saque sardina sartén sastre satán sauna saxofón
  sección seco secreto secta sed seguir seis sello selva semana semilla senda
  sensor señal señor separar sepia sequía ser serie sermón servir sesenta sesión
  seta setenta severo sexo sexto sidra siesta siete siglo signo sílaba silbar
  silencio silla símbolo simio sirena sistema sitio situar sobre socio sodio sol
  solapa soldado soledad sólido soltar solución sombra sondeo sonido sonoro
  sonrisa sopa soplar soporte sordo sorpresa sorteo sostén sótano suave subir
  suceso sudor suegra suelo sueño suerte sufrir sujeto sultán sumar superar
  suplir suponer supremo sur surco sureño surgir susto sutil tabaco tabique tabla
  tabú taco tacto tajo talar talco talento talla talón tamaño tambor tango tanque
  tapa tapete tapia tapón taquilla tarde tarea tarifa tarjeta tarot tarro tarta
  tatuaje tauro taza tazón teatro techo tecla técnica tejado tejer tejido tela
  teléfono tema temor templo tenaz tender tener tenis tenso teoría terapia terco
  término ternura terror tesis tesoro testigo tetera texto tez tibio tiburón
  tiempo tienda tierra tieso tigre tijera tilde timbre tímido timo tinta tío
  típico tipo tira tirón titán títere título tiza toalla tobillo tocar tocino
  todo toga toldo tomar tono tonto topar tope toque tórax torero tormenta torneo
  toro torpedo torre torso tortuga tos tosco toser tóxico trabajo tractor traer
  tráfico trago traje tramo trance trato trauma trazar trébol tregua treinta tren
  trepar tres tribu trigo tripa triste triunfo trofeo trompa tronco tropa trote
  trozo truco trueno trufa tubería tubo tuerto tumba tumor túnel túnica turbina
  turismo turno tutor ubicar úlcera umbral unidad unir universo uno untar uña
  urbano urbe urgente urna usar usuario útil utopía uva vaca vacío vacuna vagar
  vago vaina vajilla vale válido valle valor válvula vampiro vara variar varón
  vaso vecino vector vehículo veinte vejez vela velero veloz vena vencer venda
  veneno vengar venir venta venus ver verano verbo verde vereda verja verso
  verter vía viaje vibrar vicio víctima vida vídeo vidrio viejo viernes vigor vil
  villa vinagre vino viñedo violín viral virgo virtud visor víspera vista
  vitamina viudo vivaz vivero vivir vivo volcán volumen volver voraz votar voto
  voz vuelo vulgar yacer yate yegua yema yerno yeso yodo yoga yogur zafiro zanja
  zapato zarza zona zorro zumo zurdo
)

declare -a chinese_simplified=(
  的 一 是 在 不 了 有 和 人 这 中 大 为 上 个 国 我 以 要 他 时 来 用 们 生 到
  作 地 于 出 就 分 对 成 会 可 主 发 年 动 同 工 也 能 下 过 子 说 产 种 面 而
  方 后 多 定 行 学 法 所 民 得 经 十 三 之 进 着 等 部 度 家 电 力 里 如 水 化
  高 自 二 理 起 小 物 现 实 加 量 都 两 体 制 机 当 使 点 从 业 本 去 把 性 好
  应 开 它 合 还 因 由 其 些 然 前 外 天 政 四 日 那 社 义 事 平 形 相 全 表 间
  样 与 关 各 重 新 线 内 数 正 心 反 你 明 看 原 又 么 利 比 或 但 质 气 第 向
  道 命 此 变 条 只 没 结 解 问 意 建 月 公 无 系 军 很 情 者 最 立 代 想 已 通
  并 提 直 题 党 程 展 五 果 料 象 员 革 位 入 常 文 总 次 品 式 活 设 及 管 特
  件 长 求 老 头 基 资 边 流 路 级 少 图 山 统 接 知 较 将 组 见 计 别 她 手 角
  期 根 论 运 农 指 几 九 区 强 放 决 西 被 干 做 必 战 先 回 则 任 取 据 处 队
  南 给 色 光 门 即 保 治 北 造 百 规 热 领 七 海 口 东 导 器 压 志 世 金 增 争
  济 阶 油 思 术 极 交 受 联 什 认 六 共 权 收 证 改 清 美 再 采 转 更 单 风 切
  打 白 教 速 花 带 安 场 身 车 例 真 务 具 万 每 目 至 达 走 积 示 议 声 报 斗
  完 类 八 离 华 名 确 才 科 张 信 马 节 话 米 整 空 元 况 今 集 温 传 土 许 步
  群 广 石 记 需 段 研 界 拉 林 律 叫 且 究 观 越 织 装 影 算 低 持 音 众 书 布
  复 容 儿 须 际 商 非 验 连 断 深 难 近 矿 千 周 委 素 技 备 半 办 青 省 列 习
  响 约 支 般 史 感 劳 便 团 往 酸 历 市 克 何 除 消 构 府 称 太 准 精 值 号 率
  族 维 划 选 标 写 存 候 毛 亲 快 效 斯 院 查 江 型 眼 王 按 格 养 易 置 派 层
  片 始 却 专 状 育 厂 京 识 适 属 圆 包 火 住 调 满 县 局 照 参 红 细 引 听 该
  铁 价 严 首 底 液 官 德 随 病 苏 失 尔 死 讲 配 女 黄 推 显 谈 罪 神 艺 呢 席
  含 企 望 密 批 营 项 防 举 球 英 氧 势 告 李 台 落 木 帮 轮 破 亚 师 围 注 远
  字 材 排 供 河 态 封 另 施 减 树 溶 怎 止 案 言 士 均 武 固 叶 鱼 波 视 仅 费
  紧 爱 左 章 早 朝 害 续 轻 服 试 食 充 兵 源 判 护 司 足 某 练 差 致 板 田 降
  黑 犯 负 击 范 继 兴 似 余 坚 曲 输 修 故 城 夫 够 送 笔 船 占 右 财 吃 富 春
  职 觉 汉 画 功 巴 跟 虽 杂 飞 检 吸 助 升 阳 互 初 创 抗 考 投 坏 策 古 径 换
  未 跑 留 钢 曾 端 责 站 简 述 钱 副 尽 帝 射 草 冲 承 独 令 限 阿 宣 环 双 请
  超 微 让 控 州 良 轴 找 否 纪 益 依 优 顶 础 载 倒 房 突 坐 粉 敌 略 客 袁 冷
  胜 绝 析 块 剂 测 丝 协 诉 念 陈 仍 罗 盐 友 洋 错 苦 夜 刑 移 频 逐 靠 混 母
  短 皮 终 聚 汽 村 云 哪 既 距 卫 停 烈 央 察 烧 迅 境 若 印 洲 刻 括 激 孔 搞
  甚 室 待 核 校 散 侵 吧 甲 游 久 菜 味 旧 模 湖 货 损 预 阻 毫 普 稳 乙 妈 植
  息 扩 银 语 挥 酒 守 拿 序 纸 医 缺 雨 吗 针 刘 啊 急 唱 误 训 愿 审 附 获 茶
  鲜 粮 斤 孩 脱 硫 肥 善 龙 演 父 渐 血 欢 械 掌 歌 沙 刚 攻 谓 盾 讨 晚 粒 乱
  燃 矛 乎 杀 药 宁 鲁 贵 钟 煤 读 班 伯 香 介 迫 句 丰 培 握 兰 担 弦 蛋 沉 假
  穿 执 答 乐 谁 顺 烟 缩 征 脸 喜 松 脚 困 异 免 背 星 福 买 染 井 概 慢 怕 磁
  倍 祖 皇 促 静 补 评 翻 肉 践 尼 衣 宽 扬 棉 希 伤 操 垂 秋 宜 氢 套 督 振 架
  亮 末 宪 庆 编 牛 触 映 雷 销 诗 座 居 抓 裂 胞 呼 娘 景 威 绿 晶 厚 盟 衡 鸡
  孙 延 危 胶 屋 乡 临 陆 顾 掉 呀 灯 岁 措 束 耐 剧 玉 赵 跳 哥 季 课 凯 胡 额
  款 绍 卷 齐 伟 蒸 殖 永 宗 苗 川 炉 岩 弱 零 杨 奏 沿 露 杆 探 滑 镇 饭 浓 航
  怀 赶 库 夺 伊 灵 税 途 灭 赛 归 召 鼓 播 盘 裁 险 康 唯 录 菌 纯 借 糖 盖 横
  符 私 努 堂 域 枪 润 幅 哈 竟 熟 虫 泽 脑 壤 碳 欧 遍 侧 寨 敢 彻 虑 斜 薄 庭
  纳 弹 饲 伸 折 麦 湿 暗 荷 瓦 塞 床 筑 恶 户 访 塔 奇 透 梁 刀 旋 迹 卡 氯 遇
  份 毒 泥 退 洗 摆 灰 彩 卖 耗 夏 择 忙 铜 献 硬 予 繁 圈 雪 函 亦 抽 篇 阵 阴
  丁 尺 追 堆 雄 迎 泛 爸 楼 避 谋 吨 野 猪 旗 累 偏 典 馆 索 秦 脂 潮 爷 豆 忽
  托 惊 塑 遗 愈 朱 替 纤 粗 倾 尚 痛 楚 谢 奋 购 磨 君 池 旁 碎 骨 监 捕 弟 暴
  割 贯 殊 释 词 亡 壁 顿 宝 午 尘 闻 揭 炮 残 冬 桥 妇 警 综 招 吴 付 浮 遭 徐
  您 摇 谷 赞 箱 隔 订 男 吹 园 纷 唐 败 宋 玻 巨 耕 坦 荣 闭 湾 键 凡 驻 锅 救
  恩 剥 凝 碱 齿 截 炼 麻 纺 禁 废 盛 版 缓 净 睛 昌 婚 涉 筒 嘴 插 岸 朗 庄 街
  藏 姑 贸 腐 奴 啦 惯 乘 伙 恢 匀 纱 扎 辩 耳 彪 臣 亿 璃 抵 脉 秀 萨 俄 网 舞
  店 喷 纵 寸 汗 挂 洪 贺 闪 柬 爆 烯 津 稻 墙 软 勇 像 滚 厘 蒙 芳 肯 坡 柱 荡
  腿 仪 旅 尾 轧 冰 贡 登 黎 削 钻 勒 逃 障 氨 郭 峰 币 港 伏 轨 亩 毕 擦 莫 刺
  浪 秘 援 株 健 售 股 岛 甘 泡 睡 童 铸 汤 阀 休 汇 舍 牧 绕 炸 哲 磷 绩 朋 淡
  尖 启 陷 柴 呈 徒 颜 泪 稍 忘 泵 蓝 拖 洞 授 镜 辛 壮 锋 贫 虚 弯 摩 泰 幼 廷
  尊 窗 纲 弄 隶 疑 氏 宫 姐 震 瑞 怪 尤 琴 循 描 膜 违 夹 腰 缘 珠 穷 森 枝 竹
  沟 催 绳 忆 邦 剩 幸 浆 栏 拥 牙 贮 礼 滤 钠 纹 罢 拍 咱 喊 袖 埃 勤 罚 焦 潜
  伍 墨 欲 缝 姓 刊 饱 仿 奖 铝 鬼 丽 跨 默 挖 链 扫 喝 袋 炭 污 幕 诸 弧 励 梅
  奶 洁 灾 舟 鉴 苯 讼 抱 毁 懂 寒 智 埔 寄 届 跃 渡 挑 丹 艰 贝 碰 拔 爹 戴 码
  梦 芽 熔 赤 渔 哭 敬 颗 奔 铅 仲 虎 稀 妹 乏 珍 申 桌 遵 允 隆 螺 仓 魏 锐 晓
  氮 兼 隐 碍 赫 拨 忠 肃 缸 牵 抢 博 巧 壳 兄 杜 讯 诚 碧 祥 柯 页 巡 矩 悲 灌
  龄 伦 票 寻 桂 铺 圣 恐 恰 郑 趣 抬 荒 腾 贴 柔 滴 猛 阔 辆 妻 填 撤 储 签 闹
  扰 紫 砂 递 戏 吊 陶 伐 喂 疗 瓶 婆 抚 臂 摸 忍 虾 蜡 邻 胸 巩 挤 偶 弃 槽 劲
  乳 邓 吉 仁 烂 砖 租 乌 舰 伴 瓜 浅 丙 暂 燥 橡 柳 迷 暖 牌 秧 胆 详 簧 踏 瓷
  谱 呆 宾 糊 洛 辉 愤 竞 隙 怒 粘 乃 绪 肩 籍 敏 涂 熙 皆 侦 悬 掘 享 纠 醒 狂
  锁 淀 恨 牲 霸 爬 赏 逆 玩 陵 祝 秒 浙 貌 役 彼 悉 鸭 趋 凤 晨 畜 辈 秩 卵 署
  梯 炎 滩 棋 驱 筛 峡 冒 啥 寿 译 浸 泉 帽 迟 硅 疆 贷 漏 稿 冠 嫩 胁 芯 牢 叛
  蚀 奥 鸣 岭 羊 凭 串 塘 绘 酵 融 盆 锡 庙 筹 冻 辅 摄 袭 筋 拒 僚 旱 钾 鸟 漆
  沈 眉 疏 添 棒 穗 硝 韩 逼 扭 侨 凉 挺 碗 栽 炒 杯 患 馏 劝 豪 辽 勃 鸿 旦 吏
  拜 狗 埋 辊 掩 饮 搬 骂 辞 勾 扣 估 蒋 绒 雾 丈 朵 姆 拟 宇 辑 陕 雕 偿 蓄 崇
  剪 倡 厅 咬 驶 薯 刷 斥 番 赋 奉 佛 浇 漫 曼 扇 钙 桃 扶 仔 返 俗 亏 腔 鞋 棱
  覆 框 悄 叔 撞 骗 勘 旺 沸 孤 吐 孟 渠 屈 疾 妙 惜 仰 狠 胀 谐 抛 霉 桑 岗 嘛
  衰 盗 渗 脏 赖 涌 甜 曹 阅 肌 哩 厉 烃 纬 毅 昨 伪 症 煮 叹 钉 搭 茎 笼 酷 偷
  弓 锥 恒 杰 坑 鼻 翼 纶 叙 狱 逮 罐 络 棚 抑 膨 蔬 寺 骤 穆 冶 枯 册 尸 凸 绅
  坯 牺 焰 轰 欣 晋 瘦 御 锭 锦 丧 旬 锻 垄 搜 扑 邀 亭 酯 迈 舒 脆 酶 闲 忧 酚
  顽 羽 涨 卸 仗 陪 辟 惩 杭 姚 肚 捉 飘 漂 昆 欺 吾 郎 烷 汁 呵 饰 萧 雅 邮 迁
  燕 撒 姻 赴 宴 烦 债 帐 斑 铃 旨 醇 董 饼 雏 姿 拌 傅 腹 妥 揉 贤 拆 歪 葡 胺
  丢 浩 徽 昂 垫 挡 览 贪 慰 缴 汪 慌 冯 诺 姜 谊 凶 劣 诬 耀 昏 躺 盈 骑 乔 溪
  丛 卢 抹 闷 咨 刮 驾 缆 悟 摘 铒 掷 颇 幻 柄 惠 惨 佳 仇 腊 窝 涤 剑 瞧 堡 泼
  葱 罩 霍 捞 胎 苍 滨 俩 捅 湘 砍 霞 邵 萄 疯 淮 遂 熊 粪 烘 宿 档 戈 驳 嫂 裕
  徙 箭 捐 肠 撑 晒 辨 殿 莲 摊 搅 酱 屏 疫 哀 蔡 堵 沫 皱 畅 叠 阁 莱 敲 辖 钩
  痕 坝 巷 饿 祸 丘 玄 溜 曰 逻 彭 尝 卿 妨 艇 吞 韦 怨 矮 歇
)

declare -a chinese_traditional=(
  的 一 是 在 不 了 有 和 人 這 中 大 為 上 個 國 我 以 要 他 時 來 用 們 生 到
  作 地 於 出 就 分 對 成 會 可 主 發 年 動 同 工 也 能 下 過 子 說 產 種 面 而
  方 後 多 定 行 學 法 所 民 得 經 十 三 之 進 著 等 部 度 家 電 力 裡 如 水 化
  高 自 二 理 起 小 物 現 實 加 量 都 兩 體 制 機 當 使 點 從 業 本 去 把 性 好
  應 開 它 合 還 因 由 其 些 然 前 外 天 政 四 日 那 社 義 事 平 形 相 全 表 間
  樣 與 關 各 重 新 線 內 數 正 心 反 你 明 看 原 又 麼 利 比 或 但 質 氣 第 向
  道 命 此 變 條 只 沒 結 解 問 意 建 月 公 無 系 軍 很 情 者 最 立 代 想 已 通
  並 提 直 題 黨 程 展 五 果 料 象 員 革 位 入 常 文 總 次 品 式 活 設 及 管 特
  件 長 求 老 頭 基 資 邊 流 路 級 少 圖 山 統 接 知 較 將 組 見 計 別 她 手 角
  期 根 論 運 農 指 幾 九 區 強 放 決 西 被 幹 做 必 戰 先 回 則 任 取 據 處 隊
  南 給 色 光 門 即 保 治 北 造 百 規 熱 領 七 海 口 東 導 器 壓 志 世 金 增 爭
  濟 階 油 思 術 極 交 受 聯 什 認 六 共 權 收 證 改 清 美 再 採 轉 更 單 風 切
  打 白 教 速 花 帶 安 場 身 車 例 真 務 具 萬 每 目 至 達 走 積 示 議 聲 報 鬥
  完 類 八 離 華 名 確 才 科 張 信 馬 節 話 米 整 空 元 況 今 集 溫 傳 土 許 步
  群 廣 石 記 需 段 研 界 拉 林 律 叫 且 究 觀 越 織 裝 影 算 低 持 音 眾 書 布
  复 容 兒 須 際 商 非 驗 連 斷 深 難 近 礦 千 週 委 素 技 備 半 辦 青 省 列 習
  響 約 支 般 史 感 勞 便 團 往 酸 歷 市 克 何 除 消 構 府 稱 太 準 精 值 號 率
  族 維 劃 選 標 寫 存 候 毛 親 快 效 斯 院 查 江 型 眼 王 按 格 養 易 置 派 層
  片 始 卻 專 狀 育 廠 京 識 適 屬 圓 包 火 住 調 滿 縣 局 照 參 紅 細 引 聽 該
  鐵 價 嚴 首 底 液 官 德 隨 病 蘇 失 爾 死 講 配 女 黃 推 顯 談 罪 神 藝 呢 席
  含 企 望 密 批 營 項 防 舉 球 英 氧 勢 告 李 台 落 木 幫 輪 破 亞 師 圍 注 遠
  字 材 排 供 河 態 封 另 施 減 樹 溶 怎 止 案 言 士 均 武 固 葉 魚 波 視 僅 費
  緊 愛 左 章 早 朝 害 續 輕 服 試 食 充 兵 源 判 護 司 足 某 練 差 致 板 田 降
  黑 犯 負 擊 范 繼 興 似 餘 堅 曲 輸 修 故 城 夫 夠 送 筆 船 佔 右 財 吃 富 春
  職 覺 漢 畫 功 巴 跟 雖 雜 飛 檢 吸 助 昇 陽 互 初 創 抗 考 投 壞 策 古 徑 換
  未 跑 留 鋼 曾 端 責 站 簡 述 錢 副 盡 帝 射 草 衝 承 獨 令 限 阿 宣 環 雙 請
  超 微 讓 控 州 良 軸 找 否 紀 益 依 優 頂 礎 載 倒 房 突 坐 粉 敵 略 客 袁 冷
  勝 絕 析 塊 劑 測 絲 協 訴 念 陳 仍 羅 鹽 友 洋 錯 苦 夜 刑 移 頻 逐 靠 混 母
  短 皮 終 聚 汽 村 雲 哪 既 距 衛 停 烈 央 察 燒 迅 境 若 印 洲 刻 括 激 孔 搞
  甚 室 待 核 校 散 侵 吧 甲 遊 久 菜 味 舊 模 湖 貨 損 預 阻 毫 普 穩 乙 媽 植
  息 擴 銀 語 揮 酒 守 拿 序 紙 醫 缺 雨 嗎 針 劉 啊 急 唱 誤 訓 願 審 附 獲 茶
  鮮 糧 斤 孩 脫 硫 肥 善 龍 演 父 漸 血 歡 械 掌 歌 沙 剛 攻 謂 盾 討 晚 粒 亂
  燃 矛 乎 殺 藥 寧 魯 貴 鐘 煤 讀 班 伯 香 介 迫 句 豐 培 握 蘭 擔 弦 蛋 沉 假
  穿 執 答 樂 誰 順 煙 縮 徵 臉 喜 松 腳 困 異 免 背 星 福 買 染 井 概 慢 怕 磁
  倍 祖 皇 促 靜 補 評 翻 肉 踐 尼 衣 寬 揚 棉 希 傷 操 垂 秋 宜 氫 套 督 振 架
  亮 末 憲 慶 編 牛 觸 映 雷 銷 詩 座 居 抓 裂 胞 呼 娘 景 威 綠 晶 厚 盟 衡 雞
  孫 延 危 膠 屋 鄉 臨 陸 顧 掉 呀 燈 歲 措 束 耐 劇 玉 趙 跳 哥 季 課 凱 胡 額
  款 紹 卷 齊 偉 蒸 殖 永 宗 苗 川 爐 岩 弱 零 楊 奏 沿 露 桿 探 滑 鎮 飯 濃 航
  懷 趕 庫 奪 伊 靈 稅 途 滅 賽 歸 召 鼓 播 盤 裁 險 康 唯 錄 菌 純 借 糖 蓋 橫
  符 私 努 堂 域 槍 潤 幅 哈 竟 熟 蟲 澤 腦 壤 碳 歐 遍 側 寨 敢 徹 慮 斜 薄 庭
  納 彈 飼 伸 折 麥 濕 暗 荷 瓦 塞 床 築 惡 戶 訪 塔 奇 透 梁 刀 旋 跡 卡 氯 遇
  份 毒 泥 退 洗 擺 灰 彩 賣 耗 夏 擇 忙 銅 獻 硬 予 繁 圈 雪 函 亦 抽 篇 陣 陰
  丁 尺 追 堆 雄 迎 泛 爸 樓 避 謀 噸 野 豬 旗 累 偏 典 館 索 秦 脂 潮 爺 豆 忽
  托 驚 塑 遺 愈 朱 替 纖 粗 傾 尚 痛 楚 謝 奮 購 磨 君 池 旁 碎 骨 監 捕 弟 暴
  割 貫 殊 釋 詞 亡 壁 頓 寶 午 塵 聞 揭 炮 殘 冬 橋 婦 警 綜 招 吳 付 浮 遭 徐
  您 搖 谷 贊 箱 隔 訂 男 吹 園 紛 唐 敗 宋 玻 巨 耕 坦 榮 閉 灣 鍵 凡 駐 鍋 救
  恩 剝 凝 鹼 齒 截 煉 麻 紡 禁 廢 盛 版 緩 淨 睛 昌 婚 涉 筒 嘴 插 岸 朗 莊 街
  藏 姑 貿 腐 奴 啦 慣 乘 夥 恢 勻 紗 扎 辯 耳 彪 臣 億 璃 抵 脈 秀 薩 俄 網 舞
  店 噴 縱 寸 汗 掛 洪 賀 閃 柬 爆 烯 津 稻 牆 軟 勇 像 滾 厘 蒙 芳 肯 坡 柱 盪
  腿 儀 旅 尾 軋 冰 貢 登 黎 削 鑽 勒 逃 障 氨 郭 峰 幣 港 伏 軌 畝 畢 擦 莫 刺
  浪 秘 援 株 健 售 股 島 甘 泡 睡 童 鑄 湯 閥 休 匯 舍 牧 繞 炸 哲 磷 績 朋 淡
  尖 啟 陷 柴 呈 徒 顏 淚 稍 忘 泵 藍 拖 洞 授 鏡 辛 壯 鋒 貧 虛 彎 摩 泰 幼 廷
  尊 窗 綱 弄 隸 疑 氏 宮 姐 震 瑞 怪 尤 琴 循 描 膜 違 夾 腰 緣 珠 窮 森 枝 竹
  溝 催 繩 憶 邦 剩 幸 漿 欄 擁 牙 貯 禮 濾 鈉 紋 罷 拍 咱 喊 袖 埃 勤 罰 焦 潛
  伍 墨 欲 縫 姓 刊 飽 仿 獎 鋁 鬼 麗 跨 默 挖 鏈 掃 喝 袋 炭 污 幕 諸 弧 勵 梅
  奶 潔 災 舟 鑑 苯 訟 抱 毀 懂 寒 智 埔 寄 屆 躍 渡 挑 丹 艱 貝 碰 拔 爹 戴 碼
  夢 芽 熔 赤 漁 哭 敬 顆 奔 鉛 仲 虎 稀 妹 乏 珍 申 桌 遵 允 隆 螺 倉 魏 銳 曉
  氮 兼 隱 礙 赫 撥 忠 肅 缸 牽 搶 博 巧 殼 兄 杜 訊 誠 碧 祥 柯 頁 巡 矩 悲 灌
  齡 倫 票 尋 桂 鋪 聖 恐 恰 鄭 趣 抬 荒 騰 貼 柔 滴 猛 闊 輛 妻 填 撤 儲 簽 鬧
  擾 紫 砂 遞 戲 吊 陶 伐 餵 療 瓶 婆 撫 臂 摸 忍 蝦 蠟 鄰 胸 鞏 擠 偶 棄 槽 勁
  乳 鄧 吉 仁 爛 磚 租 烏 艦 伴 瓜 淺 丙 暫 燥 橡 柳 迷 暖 牌 秧 膽 詳 簧 踏 瓷
  譜 呆 賓 糊 洛 輝 憤 競 隙 怒 粘 乃 緒 肩 籍 敏 塗 熙 皆 偵 懸 掘 享 糾 醒 狂
  鎖 淀 恨 牲 霸 爬 賞 逆 玩 陵 祝 秒 浙 貌 役 彼 悉 鴨 趨 鳳 晨 畜 輩 秩 卵 署
  梯 炎 灘 棋 驅 篩 峽 冒 啥 壽 譯 浸 泉 帽 遲 矽 疆 貸 漏 稿 冠 嫩 脅 芯 牢 叛
  蝕 奧 鳴 嶺 羊 憑 串 塘 繪 酵 融 盆 錫 廟 籌 凍 輔 攝 襲 筋 拒 僚 旱 鉀 鳥 漆
  沈 眉 疏 添 棒 穗 硝 韓 逼 扭 僑 涼 挺 碗 栽 炒 杯 患 餾 勸 豪 遼 勃 鴻 旦 吏
  拜 狗 埋 輥 掩 飲 搬 罵 辭 勾 扣 估 蔣 絨 霧 丈 朵 姆 擬 宇 輯 陝 雕 償 蓄 崇
  剪 倡 廳 咬 駛 薯 刷 斥 番 賦 奉 佛 澆 漫 曼 扇 鈣 桃 扶 仔 返 俗 虧 腔 鞋 棱
  覆 框 悄 叔 撞 騙 勘 旺 沸 孤 吐 孟 渠 屈 疾 妙 惜 仰 狠 脹 諧 拋 黴 桑 崗 嘛
  衰 盜 滲 臟 賴 湧 甜 曹 閱 肌 哩 厲 烴 緯 毅 昨 偽 症 煮 嘆 釘 搭 莖 籠 酷 偷
  弓 錐 恆 傑 坑 鼻 翼 綸 敘 獄 逮 罐 絡 棚 抑 膨 蔬 寺 驟 穆 冶 枯 冊 屍 凸 紳
  坯 犧 焰 轟 欣 晉 瘦 禦 錠 錦 喪 旬 鍛 壟 搜 撲 邀 亭 酯 邁 舒 脆 酶 閒 憂 酚
  頑 羽 漲 卸 仗 陪 闢 懲 杭 姚 肚 捉 飄 漂 昆 欺 吾 郎 烷 汁 呵 飾 蕭 雅 郵 遷
  燕 撒 姻 赴 宴 煩 債 帳 斑 鈴 旨 醇 董 餅 雛 姿 拌 傅 腹 妥 揉 賢 拆 歪 葡 胺
  丟 浩 徽 昂 墊 擋 覽 貪 慰 繳 汪 慌 馮 諾 姜 誼 兇 劣 誣 耀 昏 躺 盈 騎 喬 溪
  叢 盧 抹 悶 諮 刮 駕 纜 悟 摘 鉺 擲 頗 幻 柄 惠 慘 佳 仇 臘 窩 滌 劍 瞧 堡 潑
  蔥 罩 霍 撈 胎 蒼 濱 倆 捅 湘 砍 霞 邵 萄 瘋 淮 遂 熊 糞 烘 宿 檔 戈 駁 嫂 裕
  徙 箭 捐 腸 撐 曬 辨 殿 蓮 攤 攪 醬 屏 疫 哀 蔡 堵 沫 皺 暢 疊 閣 萊 敲 轄 鉤
  痕 壩 巷 餓 禍 丘 玄 溜 曰 邏 彭 嘗 卿 妨 艇 吞 韋 怨 矮 歇
)

declare -a french=(
  abaisser abandon abdiquer abeille abolir aborder aboutir aboyer abrasif
  abreuver abriter abroger abrupt absence absolu absurde abusif abyssal académie
  acajou acarien accabler accepter acclamer accolade accroche accuser acerbe
  achat acheter aciduler acier acompte acquérir acronyme acteur actif actuel
  adepte adéquat adhésif adjectif adjuger admettre admirer adopter adorer adoucir
  adresse adroit adulte adverbe aérer aéronef affaire affecter affiche affreux
  affubler agacer agencer agile agiter agrafer agréable agrume aider aiguille
  ailier aimable aisance ajouter ajuster alarmer alchimie alerte algèbre algue
  aliéner aliment alléger alliage allouer allumer alourdir alpaga altesse alvéole
  amateur ambigu ambre aménager amertume amidon amiral amorcer amour amovible
  amphibie ampleur amusant analyse anaphore anarchie anatomie ancien anéantir
  angle angoisse anguleux animal annexer annonce annuel anodin anomalie anonyme
  anormal antenne antidote anxieux apaiser apéritif aplanir apologie appareil
  appeler apporter appuyer aquarium aqueduc arbitre arbuste ardeur ardoise argent
  arlequin armature armement armoire armure arpenter arracher arriver arroser
  arsenic artériel article aspect asphalte aspirer assaut asservir assiette
  associer assurer asticot astre astuce atelier atome atrium atroce attaque
  attentif attirer attraper aubaine auberge audace audible augurer aurore automne
  autruche avaler avancer avarice avenir averse aveugle aviateur avide avion
  aviser avoine avouer avril axial axiome badge bafouer bagage baguette baignade
  balancer balcon baleine balisage bambin bancaire bandage banlieue bannière
  banquier barbier baril baron barque barrage bassin bastion bataille bateau
  batterie baudrier bavarder belette bélier belote bénéfice berceau berger
  berline bermuda besace besogne bétail beurre biberon bicycle bidule bijou bilan
  bilingue billard binaire biologie biopsie biotype biscuit bison bistouri bitume
  bizarre blafard blague blanchir blessant blinder blond bloquer blouson bobard
  bobine boire boiser bolide bonbon bondir bonheur bonifier bonus bordure borne
  botte boucle boueux bougie boulon bouquin bourse boussole boutique boxeur
  branche brasier brave brebis brèche breuvage bricoler brigade brillant brioche
  brique brochure broder bronzer brousse broyeur brume brusque brutal bruyant
  buffle buisson bulletin bureau burin bustier butiner butoir buvable buvette
  cabanon cabine cachette cadeau cadre caféine caillou caisson calculer calepin
  calibre calmer calomnie calvaire camarade caméra camion campagne canal caneton
  canon cantine canular capable caporal caprice capsule capter capuche carabine
  carbone caresser caribou carnage carotte carreau carton cascade casier casque
  cassure causer caution cavalier caverne caviar cédille ceinture céleste cellule
  cendrier censurer central cercle cérébral cerise cerner cerveau cesser chagrin
  chaise chaleur chambre chance chapitre charbon chasseur chaton chausson
  chavirer chemise chenille chéquier chercher cheval chien chiffre chignon
  chimère chiot chlorure chocolat choisir chose chouette chrome chute cigare
  cigogne cimenter cinéma cintrer circuler cirer cirque citerne citoyen citron
  civil clairon clameur claquer classe clavier client cligner climat clivage
  cloche clonage cloporte cobalt cobra cocasse cocotier coder codifier coffre
  cogner cohésion coiffer coincer colère colibri colline colmater colonel combat
  comédie commande compact concert conduire confier congeler connoter consonne
  contact convexe copain copie corail corbeau cordage corniche corpus correct
  cortège cosmique costume coton coude coupure courage couteau couvrir coyote
  crabe crainte cravate crayon créature créditer crémeux creuser crevette cribler
  crier cristal critère croire croquer crotale crucial cruel crypter cubique
  cueillir cuillère cuisine cuivre culminer cultiver cumuler cupide curatif
  curseur cyanure cycle cylindre cynique daigner damier danger danseur dauphin
  débattre débiter déborder débrider débutant décaler décembre déchirer décider
  déclarer décorer décrire décupler dédale déductif déesse défensif défiler
  défrayer dégager dégivrer déglutir dégrafer déjeuner délice déloger demander
  demeurer démolir dénicher dénouer dentelle dénuder départ dépenser déphaser
  déplacer déposer déranger dérober désastre descente désert désigner désobéir
  dessiner destrier détacher détester détourer détresse devancer devenir deviner
  devoir diable dialogue diamant dicter différer digérer digital digne diluer
  dimanche diminuer dioxyde directif diriger discuter disposer dissiper distance
  divertir diviser docile docteur dogme doigt domaine domicile dompter donateur
  donjon donner dopamine dortoir dorure dosage doseur dossier dotation douanier
  double douceur douter doyen dragon draper dresser dribbler droiture duperie
  duplexe durable durcir dynastie éblouir écarter écharpe échelle éclairer
  éclipse éclore écluse école économie écorce écouter écraser écrémer écrivain
  écrou écume écureuil édifier éduquer effacer effectif effigie effort effrayer
  effusion égaliser égarer éjecter élaborer élargir électron élégant éléphant
  élève éligible élitisme éloge élucider éluder emballer embellir embryon
  émeraude émission emmener émotion émouvoir empereur employer emporter emprise
  émulsion encadrer enchère enclave encoche endiguer endosser endroit enduire
  énergie enfance enfermer enfouir engager engin englober énigme enjamber enjeu
  enlever ennemi ennuyeux enrichir enrobage enseigne entasser entendre entier
  entourer entraver énumérer envahir enviable envoyer enzyme éolien épaissir
  épargne épatant épaule épicerie épidémie épier épilogue épine épisode épitaphe
  époque épreuve éprouver épuisant équerre équipe ériger érosion erreur éruption
  escalier espadon espèce espiègle espoir esprit esquiver essayer essence essieu
  essorer estime estomac estrade étagère étaler étanche étatique éteindre
  étendoir éternel éthanol éthique ethnie étirer étoffer étoile étonnant étourdir
  étrange étroit étude euphorie évaluer évasion éventail évidence éviter évolutif
  évoquer exact exagérer exaucer exceller excitant exclusif excuse exécuter
  exemple exercer exhaler exhorter exigence exiler exister exotique expédier
  explorer exposer exprimer exquis extensif extraire exulter fable fabuleux
  facette facile facture faiblir falaise fameux famille farceur farfelu farine
  farouche fasciner fatal fatigue faucon fautif faveur favori fébrile féconder
  fédérer félin femme fémur fendoir féodal fermer féroce ferveur festival feuille
  feutre février fiasco ficeler fictif fidèle figure filature filetage filière
  filleul filmer filou filtrer financer finir fiole firme fissure fixer flairer
  flamme flasque flatteur fléau flèche fleur flexion flocon flore fluctuer fluide
  fluvial folie fonderie fongible fontaine forcer forgeron formuler fortune
  fossile foudre fougère fouiller foulure fourmi fragile fraise franchir frapper
  frayeur frégate freiner frelon frémir frénésie frère friable friction frisson
  frivole froid fromage frontal frotter fruit fugitif fuite fureur furieux furtif
  fusion futur gagner galaxie galerie gambader garantir gardien garnir garrigue
  gazelle gazon géant gélatine gélule gendarme général génie genou gentil
  géologie géomètre géranium germe gestuel geyser gibier gicler girafe givre
  glace glaive glisser globe gloire glorieux golfeur gomme gonfler gorge gorille
  goudron gouffre goulot goupille gourmand goutte graduel graffiti graine grand
  grappin gratuit gravir grenat griffure griller grimper grogner gronder grotte
  groupe gruger grutier gruyère guépard guerrier guide guimauve guitare gustatif
  gymnaste gyrostat habitude hachoir halte hameau hangar hanneton haricot
  harmonie harpon hasard hélium hématome herbe hérisson hermine héron hésiter
  heureux hiberner hibou hilarant histoire hiver homard hommage homogène honneur
  honorer honteux horde horizon horloge hormone horrible houleux housse hublot
  huileux humain humble humide humour hurler hydromel hygiène hymne hypnose
  idylle ignorer iguane illicite illusion image imbiber imiter immense immobile
  immuable impact impérial implorer imposer imprimer imputer incarner incendie
  incident incliner incolore indexer indice inductif inédit ineptie inexact
  infini infliger informer infusion ingérer inhaler inhiber injecter injure
  innocent inoculer inonder inscrire insecte insigne insolite inspirer instinct
  insulter intact intense intime intrigue intuitif inutile invasion inventer
  inviter invoquer ironique irradier irréel irriter isoler ivoire ivresse jaguar
  jaillir jambe janvier jardin jauger jaune javelot jetable jeton jeudi jeunesse
  joindre joncher jongler joueur jouissif journal jovial joyau joyeux jubiler
  jugement junior jupon juriste justice juteux juvénile kayak kimono kiosque
  label labial labourer lacérer lactose lagune laine laisser laitier lambeau
  lamelle lampe lanceur langage lanterne lapin largeur larme laurier lavabo
  lavoir lecture légal léger légume lessive lettre levier lexique lézard liasse
  libérer libre licence licorne liège lièvre ligature ligoter ligue limer limite
  limonade limpide linéaire lingot lionceau liquide lisière lister lithium litige
  littoral livreur logique lointain loisir lombric loterie louer lourd loutre
  louve loyal lubie lucide lucratif lueur lugubre luisant lumière lunaire lundi
  luron lutter luxueux machine magasin magenta magique maigre maillon maintien
  mairie maison majorer malaxer maléfice malheur malice mallette mammouth
  mandater maniable manquant manteau manuel marathon marbre marchand mardi
  maritime marqueur marron marteler mascotte massif matériel matière matraque
  maudire maussade mauve maximal méchant méconnu médaille médecin méditer méduse
  meilleur mélange mélodie membre mémoire menacer mener menhir mensonge mentor
  mercredi mérite merle messager mesure métal météore méthode métier meuble
  miauler microbe miette mignon migrer milieu million mimique mince minéral
  minimal minorer minute miracle miroiter missile mixte mobile moderne moelleux
  mondial moniteur monnaie monotone monstre montagne monument moqueur morceau
  morsure mortier moteur motif mouche moufle moulin mousson mouton mouvant
  multiple munition muraille murène murmure muscle muséum musicien mutation muter
  mutuel myriade myrtille mystère mythique nageur nappe narquois narrer natation
  nation nature naufrage nautique navire nébuleux nectar néfaste négation
  négliger négocier neige nerveux nettoyer neurone neutron neveu niche nickel
  nitrate niveau noble nocif nocturne noirceur noisette nomade nombreux nommer
  normatif notable notifier notoire nourrir nouveau novateur novembre novice
  nuage nuancer nuire nuisible numéro nuptial nuque nutritif obéir objectif
  obliger obscur observer obstacle obtenir obturer occasion occuper océan octobre
  octroyer octupler oculaire odeur odorant offenser officier offrir ogive oiseau
  oisillon olfactif olivier ombrage omettre onctueux onduler onéreux onirique
  opale opaque opérer opinion opportun opprimer opter optique orageux orange
  orbite ordonner oreille organe orgueil orifice ornement orque ortie osciller
  osmose ossature otarie ouragan ourson outil outrager ouvrage ovation oxyde
  oxygène ozone paisible palace palmarès palourde palper panache panda pangolin
  paniquer panneau panorama pantalon papaye papier papoter papyrus paradoxe
  parcelle paresse parfumer parler parole parrain parsemer partager parure
  parvenir passion pastèque paternel patience patron pavillon pavoiser payer
  paysage peigne peintre pelage pélican pelle pelouse peluche pendule pénétrer
  pénible pensif pénurie pépite péplum perdrix perforer période permuter perplexe
  persil perte peser pétale petit pétrir peuple pharaon phobie phoque photon
  phrase physique piano pictural pièce pierre pieuvre pilote pinceau pipette
  piquer pirogue piscine piston pivoter pixel pizza placard plafond plaisir
  planer plaque plastron plateau pleurer plexus pliage plomb plonger pluie
  plumage pochette poésie poète pointe poirier poisson poivre polaire policier
  pollen polygone pommade pompier ponctuel pondérer poney portique position
  posséder posture potager poteau potion pouce poulain poumon pourpre poussin
  pouvoir prairie pratique précieux prédire préfixe prélude prénom présence
  prétexte prévoir primitif prince prison priver problème procéder prodige
  profond progrès proie projeter prologue promener propre prospère protéger
  prouesse proverbe prudence pruneau psychose public puceron puiser pulpe pulsar
  punaise punitif pupitre purifier puzzle pyramide quasar querelle question
  quiétude quitter quotient racine raconter radieux ragondin raideur raisin
  ralentir rallonge ramasser rapide rasage ratisser ravager ravin rayonner
  réactif réagir réaliser réanimer recevoir réciter réclamer récolter recruter
  reculer recycler rédiger redouter refaire réflexe réformer refrain refuge
  régalien région réglage régulier réitérer rejeter rejouer relatif relever
  relief remarque remède remise remonter remplir remuer renard renfort renifler
  renoncer rentrer renvoi replier reporter reprise reptile requin réserve
  résineux résoudre respect rester résultat rétablir retenir réticule retomber
  retracer réunion réussir revanche revivre révolte révulsif richesse rideau
  rieur rigide rigoler rincer riposter risible risque rituel rival rivière
  rocheux romance rompre ronce rondin roseau rosier rotatif rotor rotule rouge
  rouille rouleau routine royaume ruban rubis ruche ruelle rugueux ruiner
  ruisseau ruser rustique rythme sabler saboter sabre sacoche safari sagesse
  saisir salade salive salon saluer samedi sanction sanglier sarcasme sardine
  saturer saugrenu saumon sauter sauvage savant savonner scalpel scandale
  scélérat scénario sceptre schéma science scinder score scrutin sculpter séance
  sécable sécher secouer sécréter sédatif séduire seigneur séjour sélectif
  semaine sembler semence séminal sénateur sensible sentence séparer séquence
  serein sergent sérieux serrure sérum service sésame sévir sevrage sextuple
  sidéral siècle siéger siffler sigle signal silence silicium simple sincère
  sinistre siphon sirop sismique situer skier social socle sodium soigneux soldat
  soleil solitude soluble sombre sommeil somnoler sonde songeur sonnette sonore
  sorcier sortir sosie sottise soucieux soudure souffle soulever soupape source
  soutirer souvenir spacieux spatial spécial sphère spiral stable station sternum
  stimulus stipuler strict studieux stupeur styliste sublime substrat subtil
  subvenir succès sucre suffixe suggérer suiveur sulfate superbe supplier surface
  suricate surmener surprise sursaut survie suspect syllabe symbole symétrie
  synapse syntaxe système tabac tablier tactile tailler talent talisman talonner
  tambour tamiser tangible tapis taquiner tarder tarif tartine tasse tatami
  tatouage taupe taureau taxer témoin temporel tenaille tendre teneur tenir
  tension terminer terne terrible tétine texte thème théorie thérapie thorax
  tibia tiède timide tirelire tiroir tissu titane titre tituber toboggan tolérant
  tomate tonique tonneau toponyme torche tordre tornade torpille torrent torse
  tortue totem toucher tournage tousser toxine traction trafic tragique trahir
  train trancher travail trèfle tremper trésor treuil triage tribunal tricoter
  trilogie triomphe tripler triturer trivial trombone tronc tropical troupeau
  tuile tulipe tumulte tunnel turbine tuteur tutoyer tuyau tympan typhon typique
  tyran ubuesque ultime ultrason unanime unifier union unique unitaire univers
  uranium urbain urticant usage usine usuel usure utile utopie vacarme vaccin
  vagabond vague vaillant vaincre vaisseau valable valise vallon valve vampire
  vanille vapeur varier vaseux vassal vaste vecteur vedette végétal véhicule
  veinard véloce vendredi vénérer venger venimeux ventouse verdure vérin vernir
  verrou verser vertu veston vétéran vétuste vexant vexer viaduc viande victoire
  vidange vidéo vignette vigueur vilain village vinaigre violon vipère virement
  virtuose virus visage viseur vision visqueux visuel vital vitesse viticole
  vitrine vivace vivipare vocation voguer voile voisin voiture volaille volcan
  voltiger volume vorace vortex voter vouloir voyage voyelle wagon xénon yacht
  zèbre zénith zeste zoologie
)

declare -a japanese=(
あいこくしん あいさつ あいだ あおぞら あかちゃん あきる あけがた あける
あこがれる あさい あさひ あしあと あじわう あずかる あずき あそぶ あたえる
あたためる あたりまえ あたる あつい あつかう あっしゅく あつまり あつめる
あてな あてはまる あひる あぶら あぶる あふれる あまい あまど あまやかす あまり
あみもの あめりか あやまる あゆむ あらいぐま あらし あらすじ あらためる
あらゆる あらわす ありがとう あわせる あわてる あんい あんがい あんこ あんぜん
あんてい あんない あんまり いいだす いおん いがい いがく いきおい いきなり
いきもの いきる いくじ いくぶん いけばな いけん いこう いこく いこつ いさましい
いさん いしき いじゅう いじょう いじわる いずみ いずれ いせい いせえび いせかい
いせき いぜん いそうろう いそがしい いだい いだく いたずら いたみ いたりあ
いちおう いちじ いちど いちば いちぶ いちりゅう いつか いっしゅん いっせい
いっそう いったん いっち いってい いっぽう いてざ いてん いどう いとこ いない
いなか いねむり いのち いのる いはつ いばる いはん いびき いひん いふく いへん
いほう いみん いもうと いもたれ いもり いやがる いやす いよかん いよく いらい
いらすと いりぐち いりょう いれい いれもの いれる いろえんぴつ いわい いわう
いわかん いわば いわゆる いんげんまめ いんさつ いんしょう いんよう うえき
うえる うおざ うがい うかぶ うかべる うきわ うくらいな うくれれ うけたまわる
うけつけ うけとる うけもつ うける うごかす うごく うこん うさぎ うしなう
うしろがみ うすい うすぎ うすぐらい うすめる うせつ うちあわせ うちがわ うちき
うちゅう うっかり うつくしい うったえる うつる うどん うなぎ うなじ うなずく
うなる うねる うのう うぶげ うぶごえ うまれる うめる うもう うやまう うよく
うらがえす うらぐち うらない うりあげ うりきれ うるさい うれしい うれゆき
うれる うろこ うわき うわさ うんこう うんちん うんてん うんどう えいえん えいが
えいきょう えいご えいせい えいぶん えいよう えいわ えおり えがお えがく
えきたい えくせる えしゃく えすて えつらん えのぐ えほうまき えほん えまき
えもじ えもの えらい えらぶ えりあ えんえん えんかい えんぎ えんげき えんしゅう
えんぜつ えんそく えんちょう えんとつ おいかける おいこす おいしい おいつく
おうえん おうさま おうじ おうせつ おうたい おうふく おうべい おうよう おえる
おおい おおう おおどおり おおや おおよそ おかえり おかず おがむ おかわり
おぎなう おきる おくさま おくじょう おくりがな おくる おくれる おこす おこなう
おこる おさえる おさない おさめる おしいれ おしえる おじぎ おじさん おしゃれ
おそらく おそわる おたがい おたく おだやか おちつく おっと おつり おでかけ
おとしもの おとなしい おどり おどろかす おばさん おまいり おめでとう おもいで
おもう おもたい おもちゃ おやつ おやゆび およぼす おらんだ おろす おんがく
おんけい おんしゃ おんせん おんだん おんちゅう おんどけい かあつ かいが がいき
がいけん がいこう かいさつ かいしゃ かいすいよく かいぜん かいぞうど かいつう
かいてん かいとう かいふく がいへき かいほう かいよう がいらい かいわ かえる
かおり かかえる かがく かがし かがみ かくご かくとく かざる がぞう かたい
かたち がちょう がっきゅう がっこう がっさん がっしょう かなざわし かのう
がはく かぶか かほう かほご かまう かまぼこ かめれおん かゆい かようび からい
かるい かろう かわく かわら がんか かんけい かんこう かんしゃ かんそう かんたん
かんち がんばる きあい きあつ きいろ ぎいん きうい きうん きえる きおう きおく
きおち きおん きかい きかく きかんしゃ ききて きくばり きくらげ きけんせい
きこう きこえる きこく きさい きさく きさま きさらぎ ぎじかがく ぎしき
ぎじたいけん ぎじにってい ぎじゅつしゃ きすう きせい きせき きせつ きそう
きぞく きぞん きたえる きちょう きつえん ぎっちり きつつき きつね きてい きどう
きどく きない きなが きなこ きぬごし きねん きのう きのした きはく きびしい
きひん きふく きぶん きぼう きほん きまる きみつ きむずかしい きめる きもだめし
きもち きもの きゃく きやく ぎゅうにく きよう きょうりゅう きらい きらく きりん
きれい きれつ きろく ぎろん きわめる ぎんいろ きんかくじ きんじょ きんようび
ぐあい くいず くうかん くうき くうぐん くうこう ぐうせい くうそう ぐうたら
くうふく くうぼ くかん くきょう くげん ぐこう くさい くさき くさばな くさる
くしゃみ くしょう くすのき くすりゆび くせげ くせん ぐたいてき くださる
くたびれる くちこみ くちさき くつした ぐっすり くつろぐ くとうてん くどく
くなん くねくね くのう くふう くみあわせ くみたてる くめる くやくしょ くらす
くらべる くるま くれる くろう くわしい ぐんかん ぐんしょく ぐんたい ぐんて
けあな けいかく けいけん けいこ けいさつ げいじゅつ けいたい げいのうじん
けいれき けいろ けおとす けおりもの げきか げきげん げきだん げきちん げきとつ
げきは げきやく げこう げこくじょう げざい けさき げざん けしき けしごむ
けしょう げすと けたば けちゃっぷ けちらす けつあつ けつい けつえき けっこん
けつじょ けっせき けってい けつまつ げつようび げつれい けつろん げどく
けとばす けとる けなげ けなす けなみ けぬき げねつ けねん けはい げひん
けぶかい げぼく けまり けみかる けむし けむり けもの けらい けろけろ けわしい
けんい けんえつ けんお けんか げんき けんげん けんこう けんさく けんしゅう
けんすう げんそう けんちく けんてい けんとう けんない けんにん げんぶつ けんま
けんみん けんめい けんらん けんり こあくま こいぬ こいびと ごうい こうえん
こうおん こうかん ごうきゅう ごうけい こうこう こうさい こうじ こうすい
ごうせい こうそく こうたい こうちゃ こうつう こうてい こうどう こうない
こうはい ごうほう ごうまん こうもく こうりつ こえる こおり ごかい ごがつ ごかん
こくご こくさい こくとう こくない こくはく こぐま こけい こける ここのか こころ
こさめ こしつ こすう こせい こせき こぜん こそだて こたい こたえる こたつ
こちょう こっか こつこつ こつばん こつぶ こてい こてん ことがら ことし ことば
ことり こなごな こねこね このまま このみ このよ ごはん こひつじ こふう こふん
こぼれる ごまあぶら こまかい ごますり こまつな こまる こむぎこ こもじ こもち
こもの こもん こやく こやま こゆう こゆび こよい こよう こりる これくしょん
ころっけ こわもて こわれる こんいん こんかい こんき こんしゅう こんすい
こんだて こんとん こんなん こんびに こんぽん こんまけ こんや こんれい こんわく
ざいえき さいかい さいきん ざいげん ざいこ さいしょ さいせい ざいたく
ざいちゅう さいてき ざいりょう さうな さかいし さがす さかな さかみち さがる
さぎょう さくし さくひん さくら さこく さこつ さずかる ざせき さたん さつえい
ざつおん ざっか ざつがく さっきょく ざっし さつじん ざっそう さつたば
さつまいも さてい さといも さとう さとおや さとし さとる さのう さばく さびしい
さべつ さほう さほど さます さみしい さみだれ さむけ さめる さやえんどう さゆう
さよう さよく さらだ ざるそば さわやか さわる さんいん さんか さんきゃく
さんこう さんさい ざんしょ さんすう さんせい さんそ さんち さんま さんみ
さんらん しあい しあげ しあさって しあわせ しいく しいん しうち しえい しおけ
しかい しかく じかん しごと しすう じだい したうけ したぎ したて したみ
しちょう しちりん しっかり しつじ しつもん してい してき してつ じてん じどう
しなぎれ しなもの しなん しねま しねん しのぐ しのぶ しはい しばかり しはつ
しはらい しはん しひょう しふく じぶん しへい しほう しほん しまう しまる
しみん しむける じむしょ しめい しめる しもん しゃいん しゃうん しゃおん
じゃがいも しやくしょ しゃくほう しゃけん しゃこ しゃざい しゃしん しゃせん
しゃそう しゃたい しゃちょう しゃっきん じゃま しゃりん しゃれい じゆう
じゅうしょ しゅくはく じゅしん しゅっせき しゅみ しゅらば じゅんばん しょうかい
しょくたく しょっけん しょどう しょもつ しらせる しらべる しんか しんこう
じんじゃ しんせいじ しんちく しんりん すあげ すあし すあな ずあん すいえい
すいか すいとう ずいぶん すいようび すうがく すうじつ すうせん すおどり すきま
すくう すくない すける すごい すこし ずさん すずしい すすむ すすめる すっかり
ずっしり ずっと すてき すてる すねる すのこ すはだ すばらしい ずひょう ずぶぬれ
すぶり すふれ すべて すべる ずほう すぼん すまい すめし すもう すやき すらすら
するめ すれちがう すろっと すわる すんぜん すんぽう せあぶら せいかつ せいげん
せいじ せいよう せおう せかいかん せきにん せきむ せきゆ せきらんうん せけん
せこう せすじ せたい せたけ せっかく せっきゃく ぜっく せっけん せっこつ
せっさたくま せつぞく せつだん せつでん せっぱん せつび せつぶん せつめい
せつりつ せなか せのび せはば せびろ せぼね せまい せまる せめる せもたれ
せりふ ぜんあく せんい せんえい せんか せんきょ せんく せんげん ぜんご せんさい
せんしゅ せんすい せんせい せんぞ せんたく せんちょう せんてい せんとう
せんぬき せんねん せんぱい ぜんぶ ぜんぽう せんむ せんめんじょ せんもん
せんやく せんゆう せんよう ぜんら ぜんりゃく せんれい せんろ そあく そいとげる
そいね そうがんきょう そうき そうご そうしん そうだん そうなん そうび そうめん
そうり そえもの そえん そがい そげき そこう そこそこ そざい そしな そせい
そせん そそぐ そだてる そつう そつえん そっかん そつぎょう そっけつ そっこう
そっせん そっと そとがわ そとづら そなえる そなた そふぼ そぼく そぼろ そまつ
そまる そむく そむりえ そめる そもそも そよかぜ そらまめ そろう そんかい
そんけい そんざい そんしつ そんぞく そんちょう ぞんび ぞんぶん そんみん たあい
たいいん たいうん たいえき たいおう だいがく たいき たいぐう たいけん たいこ
たいざい だいじょうぶ だいすき たいせつ たいそう だいたい たいちょう たいてい
だいどころ たいない たいねつ たいのう たいはん だいひょう たいふう たいへん
たいほ たいまつばな たいみんぐ たいむ たいめん たいやき たいよう たいら
たいりょく たいる たいわん たうえ たえる たおす たおる たおれる たかい たかね
たきび たくさん たこく たこやき たさい たしざん だじゃれ たすける たずさわる
たそがれ たたかう たたく ただしい たたみ たちばな だっかい だっきゃく だっこ
だっしゅつ だったい たてる たとえる たなばた たにん たぬき たのしみ たはつ
たぶん たべる たぼう たまご たまる だむる ためいき ためす ためる たもつ
たやすい たよる たらす たりきほんがん たりょう たりる たると たれる たれんと
たろっと たわむれる だんあつ たんい たんおん たんか たんき たんけん たんご
たんさん たんじょうび だんせい たんそく たんたい だんち たんてい たんとう
だんな たんにん だんねつ たんのう たんぴん だんぼう たんまつ たんめい だんれつ
だんろ だんわ ちあい ちあん ちいき ちいさい ちえん ちかい ちから ちきゅう
ちきん ちけいず ちけん ちこく ちさい ちしき ちしりょう ちせい ちそう ちたい
ちたん ちちおや ちつじょ ちてき ちてん ちぬき ちぬり ちのう ちひょう ちへいせん
ちほう ちまた ちみつ ちみどろ ちめいど ちゃんこなべ ちゅうい ちゆりょく
ちょうし ちょさくけん ちらし ちらみ ちりがみ ちりょう ちるど ちわわ ちんたい
ちんもく ついか ついたち つうか つうじょう つうはん つうわ つかう つかれる
つくね つくる つけね つける つごう つたえる つづく つつじ つつむ つとめる
つながる つなみ つねづね つのる つぶす つまらない つまる つみき つめたい つもり
つもる つよい つるぼ つるみく つわもの つわり てあし てあて てあみ ていおん
ていか ていき ていけい ていこく ていさつ ていし ていせい ていたい ていど
ていねい ていひょう ていへん ていぼう てうち ておくれ てきとう てくび でこぼこ
てさぎょう てさげ てすり てそう てちがい てちょう てつがく てつづき でっぱ
てつぼう てつや でぬかえ てぬき てぬぐい てのひら てはい てぶくろ てふだ
てほどき てほん てまえ てまきずし てみじか てみやげ てらす てれび てわけ
てわたし でんあつ てんいん てんかい てんき てんぐ てんけん てんごく てんさい
てんし てんすう でんち てんてき てんとう てんない てんぷら てんぼうだい
てんめつ てんらんかい でんりょく でんわ どあい といれ どうかん とうきゅう
どうぐ とうし とうむぎ とおい とおか とおく とおす とおる とかい とかす
ときおり ときどき とくい とくしゅう とくてん とくに とくべつ とけい とける
とこや とさか としょかん とそう とたん とちゅう とっきゅう とっくん とつぜん
とつにゅう とどける ととのえる とない となえる となり とのさま とばす どぶがわ
とほう とまる とめる ともだち ともる どようび とらえる とんかつ どんぶり
ないかく ないこう ないしょ ないす ないせん ないそう なおす ながい なくす なげる
なこうど なさけ なたでここ なっとう なつやすみ ななおし なにごと なにもの
なにわ なのか なふだ なまいき なまえ なまみ なみだ なめらか なめる なやむ
ならう ならび ならぶ なれる なわとび なわばり にあう にいがた にうけ におい
にかい にがて にきび にくしみ にくまん にげる にさんかたんそ にしき にせもの
にちじょう にちようび にっか にっき にっけい にっこう にっさん にっしょく
にっすう にっせき にってい になう にほん にまめ にもつ にやり にゅういん
にりんしゃ にわとり にんい にんか にんき にんげん にんしき にんずう にんそう
にんたい にんち にんてい にんにく にんぷ にんまり にんむ にんめい にんよう
ぬいくぎ ぬかす ぬぐいとる ぬぐう ぬくもり ぬすむ ぬまえび ぬめり ぬらす
ぬんちゃく ねあげ ねいき ねいる ねいろ ねぐせ ねくたい ねくら ねこぜ ねこむ
ねさげ ねすごす ねそべる ねだん ねつい ねっしん ねつぞう ねったいぎょ ねぶそく
ねふだ ねぼう ねほりはほり ねまき ねまわし ねみみ ねむい ねむたい ねもと ねらう
ねわざ ねんいり ねんおし ねんかん ねんきん ねんぐ ねんざ ねんし ねんちゃく
ねんど ねんぴ ねんぶつ ねんまつ ねんりょう ねんれい のいず のおづま のがす
のきなみ のこぎり のこす のこる のせる のぞく のぞむ のたまう のちほど のっく
のばす のはら のべる のぼる のみもの のやま のらいぬ のらねこ のりもの のりゆき
のれん のんき ばあい はあく ばあさん ばいか ばいく はいけん はいご はいしん
はいすい はいせん はいそう はいち ばいばい はいれつ はえる はおる はかい ばかり
はかる はくしゅ はけん はこぶ はさみ はさん はしご ばしょ はしる はせる
ぱそこん はそん はたん はちみつ はつおん はっかく はづき はっきり はっくつ
はっけん はっこう はっさん はっしん はったつ はっちゅう はってん はっぴょう
はっぽう はなす はなび はにかむ はぶらし はみがき はむかう はめつ はやい はやし
はらう はろうぃん はわい はんい はんえい はんおん はんかく はんきょう ばんぐみ
はんこ はんしゃ はんすう はんだん ぱんち ぱんつ はんてい はんとし はんのう
はんぱ はんぶん はんぺん はんぼうき はんめい はんらん はんろん ひいき ひうん
ひえる ひかく ひかり ひかる ひかん ひくい ひけつ ひこうき ひこく ひさい
ひさしぶり ひさん びじゅつかん ひしょ ひそか ひそむ ひたむき ひだり ひたる
ひつぎ ひっこし ひっし ひつじゅひん ひっす ひつぜん ぴったり ぴっちり ひつよう
ひてい ひとごみ ひなまつり ひなん ひねる ひはん ひびく ひひょう ひほう ひまわり
ひまん ひみつ ひめい ひめじし ひやけ ひやす ひよう びょうき ひらがな ひらく
ひりつ ひりょう ひるま ひるやすみ ひれい ひろい ひろう ひろき ひろゆき ひんかく
ひんけつ ひんこん ひんしゅ ひんそう ぴんち ひんぱん びんぼう ふあん ふいうち
ふうけい ふうせん ぷうたろう ふうとう ふうふ ふえる ふおん ふかい ふきん
ふくざつ ふくぶくろ ふこう ふさい ふしぎ ふじみ ふすま ふせい ふせぐ ふそく
ぶたにく ふたん ふちょう ふつう ふつか ふっかつ ふっき ふっこく ぶどう ふとる
ふとん ふのう ふはい ふひょう ふへん ふまん ふみん ふめつ ふめん ふよう ふりこ
ふりる ふるい ふんいき ぶんがく ぶんぐ ふんしつ ぶんせき ふんそう ぶんぽう
へいあん へいおん へいがい へいき へいげん へいこう へいさ へいしゃ へいせつ
へいそ へいたく へいてん へいねつ へいわ へきが へこむ べにいろ べにしょうが
へらす へんかん べんきょう べんごし へんさい へんたい べんり ほあん ほいく
ぼうぎょ ほうこく ほうそう ほうほう ほうもん ほうりつ ほえる ほおん ほかん
ほきょう ぼきん ほくろ ほけつ ほけん ほこう ほこる ほしい ほしつ ほしゅ
ほしょう ほせい ほそい ほそく ほたて ほたる ぽちぶくろ ほっきょく ほっさ
ほったん ほとんど ほめる ほんい ほんき ほんけ ほんしつ ほんやく まいにち まかい
まかせる まがる まける まこと まさつ まじめ ますく まぜる まつり まとめ まなぶ
まぬけ まねく まほう まもる まゆげ まよう まろやか まわす まわり まわる まんが
まんきつ まんぞく まんなか みいら みうち みえる みがく みかた みかん みけん
みこん みじかい みすい みすえる みせる みっか みつかる みつける みてい みとめる
みなと みなみかさい みねらる みのう みのがす みほん みもと みやげ みらい
みりょく みわく みんか みんぞく むいか むえき むえん むかい むかう むかえ
むかし むぎちゃ むける むげん むさぼる むしあつい むしば むじゅん むしろ むすう
むすこ むすぶ むすめ むせる むせん むちゅう むなしい むのう むやみ むよう
むらさき むりょう むろん めいあん めいうん めいえん めいかく めいきょく
めいさい めいし めいそう めいぶつ めいれい めいわく めぐまれる めざす めした
めずらしい めだつ めまい めやす めんきょ めんせき めんどう もうしあげる
もうどうけん もえる もくし もくてき もくようび もちろん もどる もらう もんく
もんだい やおや やける やさい やさしい やすい やすたろう やすみ やせる やそう
やたい やちん やっと やっぱり やぶる やめる ややこしい やよい やわらかい ゆうき
ゆうびんきょく ゆうべ ゆうめい ゆけつ ゆしゅつ ゆせん ゆそう ゆたか ゆちゃく
ゆでる ゆにゅう ゆびわ ゆらい ゆれる ようい ようか ようきゅう ようじ ようす
ようちえん よかぜ よかん よきん よくせい よくぼう よけい よごれる よさん
よしゅう よそう よそく よっか よてい よどがわく よねつ よやく よゆう よろこぶ
よろしい らいう らくがき らくご らくさつ らくだ らしんばん らせん らぞく らたい
らっか られつ りえき りかい りきさく りきせつ りくぐん りくつ りけん りこう
りせい りそう りそく りてん りねん りゆう りゅうがく りよう りょうり りょかん
りょくちゃ りょこう りりく りれき りろん りんご るいけい るいさい るいじ
るいせき るすばん るりがわら れいかん れいぎ れいせい れいぞうこ れいとう
れいぼう れきし れきだい れんあい れんけい れんこん れんさい れんしゅう
れんぞく れんらく ろうか ろうご ろうじん ろうそく ろくが ろこつ ろじうら
ろしゅつ ろせん ろてん ろめん ろれつ ろんぎ ろんぱ ろんぶん ろんり わかす
わかめ わかやま わかれる わしつ わじまし わすれもの わらう われる
)

bip39_language()
  case "${LANG::5}" in
    fr_*) echo french ;;
    es_*) echo spanish ;;
    zh_CN) echo chinese_simplified ;;
    zh_TW) echo chinese_traditional ;;
    ja_*) echo japanese ;;
    *) echo english ;;
  esac

pbkdf2() {
  local hash_name="$1" key_str="$2" salt_str="$3"
  local -i iterations=$4

  case "$PBKDF2_METHOD" in
    python)
      python -c "import hashlib; \
      print( \
	hashlib.pbkdf2_hmac( \
	  \"$hash_name\", \
	  \"$key_str\".encode(\"utf-8\"), \
	  \"$salt_str\".encode(\"utf-8\"), \
	  $iterations, \
	  ${5:None} \
	  ).hex()
      )"
      ;;
    *)
      # Translated from https://github.com/bitpay/bitcore/blob/master/packages/bitcore-mnemonic/lib/pbkdf2.js
      # /**
      # * PBKDF2
      # * Credit to: https://github.com/stayradiated/pbkdf2-sha512
      # * Copyright (c) 2014, JP Richardson Copyright (c) 2010-2011 Intalio Pte, All Rights Reserved
      # */
      declare -ai key salt u t block1 dk
      declare -i hLen="$(openssl dgst "-$hash_name" -binary <<<"foo" |wc -c)"
      declare -i dkLen=${5:-hLen}
      declare -i i j k l=$(( (dkLen+hLen-1)/hLen ))

      for ((i=0; i<${#key_str}; i++))
      do printf -v "key[$i]" "%d" "'${key_str:i:1}"
      done

      for ((i=0; i<${#salt_str}; i++))
      do printf -v "salt[$i]" "%d" "'${salt_str:i:1}"
      done

      block1=(${salt[@]} 0 0 0 0)

      (
	step() {
	  printf '%02x' "$@" |
	  xxd -p -r |
	  openssl dgst -"$hash_name" -hmac "$key_str" -binary |
	  xxd -p -c 1 |
	  sed 's/^/0x/'
	}
	for ((i=1;i<=l;i++))
	do
	  block1[${#salt[@]}+0]=$((i >> 24 & 0xff))
	  block1[${#salt[@]}+1]=$((i >> 16 & 0xff))
	  block1[${#salt[@]}+2]=$((i >>  8 & 0xff))
	  block1[${#salt[@]}+3]=$((i >>  0 & 0xff))
	  
	  u=($(step "${block1[@]}"))
	  printf "\rPBKDF2: bloc %d/%d, iteration %d/%d" $i $l 1 $iterations >&2
	  t=(${u[@]})
	  for ((j=1; j<iterations; j++))
	  do
	    printf "\rPBKDF2: bloc %d/%d, iteration %d/%d" $i $l $((j+1)) $iterations >&2
	    u=($(step "${u[@]}"))
	    for ((k=0; k<hLen; k++))
	    do t[k]=$((t[k]^u[k]))
	    done
	  done
	  echo >&2
	  
	  dk+=(${t[@]})

	done
	printf "%02x" "${dk[@]:0:dkLen}"
      )
      echo
    ;;
  esac |
  xxd -p -r |
  if [[ -t 1 ]]
  then cat -v
  else cat
  fi
}

check-mnemonic()
  if [[ $# =~ ^(12|15|18|21|24)$ ]]
  then
    local -n wordlist="$(bip39_language)"
    local -A wordlist_reverse
    local -i i
    for ((i=0; i<${#wordlist[@]}; i++))
    do wordlist_reverse[${wordlist[$i]}]=$((i+1))
    done

    local word
    for word
    do ((${wordlist_reverse[$word]})) || return 1
    done
    create-mnemonic $(
      {
        echo '16o0'
	for word
	do echo "2048*${wordlist_reverse[$word]} 1-+"
	done
	echo 2 $(($#*11/33))^ 0k/ p
      } |
      dc |
      { read -r; printf "%$(($#*11*32/33/4))s" $REPLY; } |
      sed 's/ /0/g'
    ) |
    grep -q " ${@: -1}$" || return 2
  else return 3;
  fi

complete -W "${english[*]}" mnemonic-to-seed
function mnemonic-to-seed() {
  local OPTIND 
  if getopts hbpP o
  then
    shift $((OPTIND - 1))
    case "$o" in
      h) cat <<-USAGE_3
	${FUNCNAME[0]} -h
	${FUNCNAME[@]} [-p|-P] [-b] word ...
	USAGE_3
        ;;
      p)
	read -p "Passphrase: "
	BIP39_PASSPHRASE="$REPLY" ${FUNCNAME[0]} "$@"
	;;
      P)
	local passphrase
	read -p "Passphrase:" -s passphrase
	read -p "Confirm passphrase:" -s
	if [[ "$REPLY" = "$passphrase" ]]
	then BIP39_PASSPHRASE=$passphrase $FUNCNAME "$@"
	else echo "passphrase input error" >&2; return 3;
	fi
	;;
    esac
  else
    check-mnemonic "$@"
    case "$?" in
      1) echo "WARNING: unreckognized word in mnemonic." >&2 ;;&
      2) echo "WARNING: wrong mnemonic checksum."        >&2 ;;&
      3) echo "WARNING: unexpected number of words."     >&2 ;;&
      *) pbkdf2 sha512 "$*" "mnemonic$BIP39_PASSPHRASE" 2048 ;;
    esac
  fi
}

function create-mnemonic() {
  local -n wordlist="$(bip39_language)"
  local OPTIND OPTARG o
  if getopts h o
  then
    shift $((OPTIND - 1))
    case "$o" in
      h) cat <<-USAGE
	${FUNCNAME[@]} -h
	${FUNCNAME[@]} entropy-size
	USAGE
        ;;
    esac
  elif (( ${#wordlist[@]} != 2048 ))
  then
    1>&2 echo "unexpected number of words (${#wordlist[@]}) in wordlist array"
    return 2
  elif [[ $1 =~ ^(128|160|192|224|256)$ ]]
  then $FUNCNAME $(openssl rand -hex $(($1/8)))
  elif [[ "$1" =~ ^([[:xdigit:]]{2}){16,32}$ ]]
  then
    local hexnoise="${1^^}"
    local -i ENT=${#hexnoise}*4 #bits
    if ((ENT % 32))
    then
      1>&2 echo entropy must be a multiple of 32, yet it is $ENT
      return 2
    fi
    { 
      # "A checksum is generated by taking the first <pre>ENT / 32</pre> bits
      # of its SHA256 hash"
      local -i CS=$ENT/32
      local -i MS=$(( (ENT+CS)/11 )) #bits
      #1>&2 echo $ENT $CS $MS
      echo "$MS 1- sn16doi"
      echo "$hexnoise 2 $CS^*"
      echo -n "$hexnoise" |
      xxd -r -p |
      openssl dgst -sha256 -binary |
      head -c1 |
      xxd -p -u
      echo "0k 2 8 $CS -^/+"
      echo "[800 ~r ln1-dsn0<x]dsxx Aof"
    } |
    dc |
    while read -r
    do echo ${wordlist[REPLY]}
    done |
    {
      mapfile -t
      echo "${MAPFILE[*]}"
    }
  elif (($# == 0))
  then $FUNCNAME 160
  else
    1>&2 echo parameters have insufficient entropy or wrong format
    return 4
  fi
}
