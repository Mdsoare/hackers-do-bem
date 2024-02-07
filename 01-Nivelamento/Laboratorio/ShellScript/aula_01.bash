#!/bin/bash

# Define o arquivo de log
log_file="/var/log/auth.log"
padrao="Failed password"

# Exibe a mensagem na tela
echo "Procurando por tentativas de login falhadas nos logs:"

# Verifica se o arquivo de log existe e pode ser lido
if [[ -r "$log_file" ]]; then
    # Procura a ocorrência e exibe na tela
    grep "$padrao" "$log_file"
else
    echo "Erro: Não foi possível ler o arquivo $log_file"
fi
