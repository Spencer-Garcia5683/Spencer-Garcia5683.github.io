<#
PowerShell image optimization script (requires ImageMagick 'magick' on PATH)
Creates an images/optimized directory and writes resized/compressed copies.
#>

$src = Join-Path $PSScriptRoot "..\images"
$dst = Join-Path $src "optimized"

if (-not (Test-Path $dst)) { New-Item -ItemType Directory -Path $dst | Out-Null }

Get-ChildItem -Path $src -Include *.jpg,*.jpeg,*.png -File | ForEach-Object {
    $in = $_.FullName
    $out = Join-Path $dst $_.Name
    Write-Host "Processing: $($_.Name) -> optimized/$($_.Name)"
    magick convert "$in" -strip -resize 1200x1200\> -quality 85 "$out"
}

Write-Host "Done. Optimized images are in images/optimized/"
