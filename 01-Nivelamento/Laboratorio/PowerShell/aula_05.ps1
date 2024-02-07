# aula 05
# Removendo chave do registro

# Definindo caminho da chave 
$chaveMaliciosa = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run\EncryptorMalicioso"

# Realisando test e remocao
if (Test-Path $chaveMaliciosa){
	Write-Host "Removendo a chave maliciosa do registro..."
	Remove-Item -Path $chaveMaliciosa -Force
	Write-Host "Chave maliciosa removida com sucesso!"
} else {
	Write-Host "Nenhuma chave maliciosa encontrada no registro"
}