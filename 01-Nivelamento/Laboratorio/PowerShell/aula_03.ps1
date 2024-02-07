# aula 03
# funções

# Função saudação com um parametro
function Saudacao {
	param(
	[string]$nome
	)
	Write-Host "Olá, $nome!"
}

# Chamando a Função
Saudacao -nome "Amigo"

#Saída
# Olá, Amigo!
