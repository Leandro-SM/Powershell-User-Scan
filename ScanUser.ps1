#Usar como função é mais prático, pois permite que você adiciona essa função ao Profile do Powershell e chame diretamente pelo nome ou Alias da Função
Function UsuariosServidores{ 
while ($true) {
    Clear-Host
    Write-Host "=== USUÁRIOS CONECTADOS NOS SERVIDORES ===" -ForegroundColor Cyan
    Write-Host ""

    Write-Host "[----------------Servidor 1----------------]" -ForegroundColor Magenta
    Write-Host ""
    $OutServidor1 = qwinsta /server:#IP DO SERVIDOR2 | Out-String
    Write-Host $OutServidor1 -ForegroundColor Yellow -NoNewline
    Write-Host ""
    Write-Host ""

    Write-Host "[----------------Servidor 2----------------]" -ForegroundColor Magenta
    Write-Host ""
    $OutServidor2 = qwinsta /server:#IP DO SERVIDOR2 | Out-String
    Write-Host $OutServidor2 -ForegroundColor Yellow -NoNewline
    Write-Host ""
    Write-Host ""

    Write-Host "[----------------Servidor 3----------------]" -ForegroundColor Magenta
    Write-Host ""
    $OutServidor3 = qwinsta /server:#IP DO SERVIDOR3 | Out-String
    Write-Host $OutServidor3 -ForegroundColor Yellow -NoNewline
    Write-Host ""
    Write-Host ""

    Write-Host "=============================================" -ForegroundColor Cyan
    Start-Sleep -Seconds 30  #Intervalo de atualização
    #Interrompe a execução e lista os Qwinsta mais uma vez, enquanto o .ps1 ou função estiverem em execução
        }
}
