# Aula 01
# Script que compara dois numeros

# Definindo Variaveis
$a = 5
$b = 8

# Tabela
#
# -gt	O lado esquerdo é maior
# -ge	O lado esquerdo é maior ou igual
# -lt	O lado esquerdo é menor
# -le	O lado esquerdo é menor ou igual

# Executando a comparacao
if ($a -gt $b) {
	Write-Host "A é maior que B"
} elseif ($a -lt $b){
	Write-Host "A é menor que B"
} else {
	Write-Host "A é igual a B"
}