# Aula 08
# Script para verificacao de politicas de seguranca 

Get-ExecutionPolicy
Get-ProcessMitigation -System
Get-MpPreference | Select-Object -Property *Detection*

# Este script exibe informacoes sobre a politica de execucao, politica de mitigacao
# de processos e preferencias de deteccao do Windows Defender