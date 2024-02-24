#kontrollime edastatud paraametrite arv 
if($args.Count  -ne 3){
#kui edastatud paraametrite arv ei ole 3
#siis trüükime kasutusjuhend 
echo .\SkriptiNimi kasutajanimi "Ees Perenimi "Kinto kirjeldus "
} else { 
#defiinerime muutuja
$kasutajanimi,
$TaisNimi
$Kontokirjeldus
)
#loome kasutajate parool
$KasutajaParool = ConectTo-SecureString "qwerty" -AsPlainText -Force
#lisame kasutaja vastavate andmetega 
New-LocalUser "$Kasutajanimi " -Password $KasutajaParool -FullName "$TaisNimi" -Description "$Kontokirjeldus"