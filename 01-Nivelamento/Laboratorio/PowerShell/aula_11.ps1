# Aula 11
# Script para verificar processos suspeitos no Windows

Get-Process | Where-Object { $_.Path -eq $null -and $_.Handles -gt 500 -and $_.CPU -gt 50 }

# Este script lista processos que nao tem um caminho de arquivo associado,
# tem um numero significativo de identificadores de objetos 
# ou estao usando uma quantidade consideravel de CPU 