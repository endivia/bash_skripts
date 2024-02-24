# Küsi kasutaja eesnime ja perenime
$firstName = Read-Host "Sisesta kasutaja eesnimi"
$lastName = Read-Host "Sisesta kasutaja perenimi"

# Loo kasutajanimi kujul ees.perenimi
$username = "$($firstName.ToLower()).$($lastName.ToLower())"

# Loo kasutaja täisnimi
$fullName = "$firstName $lastName"

# Loo kasutaja kirjeldus
$description = "Lokaalne kasutaja loodud PowerShell skriptiga"

# Loo kasutaja, kasutades loodud nime ja määra parooliks "Parool1!"
try {
    New-LocalUser -Name $username -Description $description -Password (ConvertTo-SecureString "Parool1!" -AsPlainText -Force) -ErrorAction Stop
    Write-Host "Kasutaja $fullName (kasutajanimi: $username) on edukalt loodud."
} catch {
    Write-Host "Kasutaja loomine ebaõnnestus. Viga: $_"
}