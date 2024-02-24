# Uue kasutaja palume sisestada kasutajanimi. 

#Kasutaja sisestab oma kasutajanimi
$username = Read-Host "Sisesta oma kasutajanimi"
$KasutajaParool = ConvertTo-SecureString "ParoolAvatudTekstina" -AsPlainText -Force

New-LocalUser "kasutaja1" -Password $KasutajaParool -FullName "Esimene kasutaja" -Description "Local Acount -kasutaja1"
Read-Host "Kasutaja on loodud
