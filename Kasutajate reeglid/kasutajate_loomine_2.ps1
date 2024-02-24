#määrame kus on asumas fail,mille sees on kasutajate andmed 
"Fail = "C:\Users\Admin\Documents\andmed.csv
#loome failist sisu ,info jaotatakse ;jargi 
$Kasutajad =Import-Csv $Fail -Encoding Default -Delimiten ";"
#failis iga kasutaja andmestik on eraldi reas 
#vaatame faili sisu ridade kaupa 
#seleks salvestame iga rida $Kasutaja muutuja sisse
foreach ($Kasutaja in $Kasutajad)
{
    #kuna reas on mittu väärtust ,siis iga element on kätte saadav veeru nimetuse järgi ,mis me paneme
    #$muutuja.VeeruNimetus kujul kirja 
    $kasutajanimi =$kasutaja.Kasutajanimi
    $TaisNimi =$kasutaja.Taisnimi
    $Kontokirjeldus= $kasutaja.Kontokirjeldus
    $Parool = $kasutaja.Parool |ConvertTo-SecureString  -AsPlainText -Force 
    #kasutades saadud info lisame kasutaja 
    New-LocalUser -Name  $Kasutajanimi -Password $Parool -FullName $Taisnimi -Description $Kontokirjeldus"
 }