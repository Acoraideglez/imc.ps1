<#
.DESCRIPTION
    Calcular el indice de masa corporal:
    IMC=peso/(altura2) altura en metros
.EXAMPLE
    \IMC.ps1
    ¿Peso? ---> 82
    ¿Altura (cm)? 175
    tu IMC es 26.8
    [Bajo Peso|sobrepeso|obeso|normal]
#>

Param(
    [FLOAT] $peso,
    [FlOAT] $altura
)
if ($altura -eq 0 ) {
    $altura=[float](Read-Host -Prompt "¿Cual es tu altura?")
}
if ($peso -eq 0 ) {
    $peso=[float](Read-Host -Prompt "¿Cual es tu peso?")
}
$altura=$altura / 100
$imc=$peso / ($altura*$altura)
Write-host "Tu IMC es: " $imc


if ( $imc -le 18.5 ) {
    write-host "Bajo Peso" 
}
elseif ( $imc -ge 18.5 -and $imc -le 25) {
    write-host "Estás normal" 
}
elseif ( $imc -ge 25 -and $imc -le 30) {
    write-host "Tienes sobrepeso" 
}
elseif ( $imc -ge 30) {
    write-host "Estás obeso" 
}
