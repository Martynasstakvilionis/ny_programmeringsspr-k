$numbers = 1, 2, 3

Write-Host "Velg en av disse: $($numbers -join ', ')"
$input = Read-Host "Skriv inn ditt valg"
Write-Host "Du valgte: $input"


$randomNumber = Get-Random -Minimum 1 -Maximum 3
Write-Host "Vinneren: $randomNumber"

# Sjekk om spilleren har gjettet riktig
if ($input -eq $randomNumber) {
    Write-Host "Gratulerer! Du vant! ingenting. ):"
} elseif ($input -gt $randomNumber) {
    Write-Host "aww, du tapte. Ditt valg var høyere enn vinneren."
} else {
    Write-Host "aww, du tapte. Ditt valg var lavere enn vinneren."
}
# spør om du vil spile ny runde
$playAgain = Read-Host "Vil du spille igjen? (ja/nei)"
if ($playAgain -eq 'ja') {
    & $MyInvocation.MyCommand.Path 
}
