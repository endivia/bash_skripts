# Palume kasutaja sisestada oma kasutaja mis soovib kustutada . 

#Kasutajate andmed mis vaja emaldada. 
$username = Read-Host "Sisesta oma kasutajanimi"

# Kontrollimine kasutajate olemasolu. 
if (Get-LocalUser -Name $username -ErrorAction SilentlyContinue) {
    # Kasutajate emaldamine
    Remove-LocalUser -Name $username
    Write-Host "Kasutaja $username on emaldanud "
} else {
    Write-Host "Kasutaja $username ei leitud."
}