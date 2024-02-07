# Aula 10
# Script para verificar acesso no Windows

Get-WinEvent -LogName Security | Where-Object { $_.Id -eq 4624 -or $_.Id -eq 4634 } | Select-Object -Property TimeCreated, Id, Message

# Este script analisa eventos de logon (apenas login e logoff) no log de seguranca do Windows