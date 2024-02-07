# aula 04
# funções

# Função saudação com dois parametros
function Saudacao {
	param(
	[string]$nome,
	[string]$cumprimento = "Olá"
	)
	Write-Host "$cumprimento, $nome!"
}

# Chamando a Função
Saudacao -nome "Amigo"
Saudacao -nome "Amigo" -cumprimento "Bom dia"
#Saídas
# Olá, Amigo!
# Bom dia, Amigo!