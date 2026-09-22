# Script para empaquetar la Entrega 1 de Ingenieria Web segun las normas del enunciado:
# Formato exigido: IW-[DNI]-E1.zip
# Uso: .\empaquetar_entrega.ps1 -DNI "12345678Z"

param(
    [string]$DNI = "12345678Z"
)

$nombreZip = "IW-$DNI-E1.zip"
$elementos = @(
    "index.html",
    "animales.html",
    "detalle.html",
    "formulario.html",
    "url_sitio.txt",
    "README.md",
    "css",
    "img",
    "media"
)

Write-Host "Comprobando existencia de ficheros..." -ForegroundColor Cyan
foreach ($elem in $elementos) {
    if (-not (Test-Path $elem)) {
        Write-Warning "Atención: No se encuentra '$elem'"
    }
}

Write-Host "Generando archivo comprimido $nombreZip..." -ForegroundColor Yellow
if (Test-Path $nombreZip) {
    Remove-Item -Force $nombreZip
}

Compress-Archive -Path $elementos -DestinationPath $nombreZip -Force

if (Test-Path $nombreZip) {
    $peso = (Get-Item $nombreZip).Length / 1KB
    Write-Host "Exito: Archivo $nombreZip generado correctamente ($([math]::Round($peso, 2)) KB)." -ForegroundColor Green
    Write-Host "Listo para subir a la plataforma de la asignatura." -ForegroundColor Green
} else {
    Write-Error "Error al generar el archivo comprimido."
}
