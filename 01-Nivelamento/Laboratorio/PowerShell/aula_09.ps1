# Aula 9
# Script de varredura de portas e conexoes ativas

Get-NetTCPConnection | Select-Object -Property LocalAddress, LocalPort, RemoteAddress, RemotePort, State
Test-NetConnection -ComputerName localhost -Port 80

# Este script lista as conexoes TCP ativas e verifica a conectividade com uma porta especifica

