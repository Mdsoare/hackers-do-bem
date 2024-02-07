#!/bin/bash
# Script para verificar atualizações disponiveis em um servidor
# Requisito: sudo apt install mailutils

email="seginfo@gmail.com"

apt update > updates.txt
upgrades=$(apt list --upgradable)

if [ -z "$upgrades" ]; then
    echo "Não existe atualização disponível no momento" | mail -s "Atualizações" $email
else
    echo "As atualizações abaixo estão disponíveis:" > updates.txt
    echo "$upgrades" >> updates.txt
    mail -s "Atualizações disponíveis" -A updates.txt $email
fi