# Aula 07
# Script para decodificar texto em Base64
# OBS: Este script precisa do script da aula 06 para funcionar, uma vez que algumas variáves estão "setadas" lá

# Import Module
Import-Module -Name C:\Users\SeuUser\Desktop\PowerShell\aula_06.ps1

# Convert the Base64 encrypted text back to bytes
$encryptedBytesWithIV = [Convert]::FromBase64String($encryptedText)
$iv = $encryptedBytesWithIV[0..15]
$encryptedBytesOnly = $encryptedBytesWithIV[16..($encryptedBytesWithIV.Length -1)]

# Set the IV and decrypt
$aes.IV = $iv
$decryptor = $aes.CreateDecryptor()
$decryptedBytes = $decryptor.TransformFinalBlock($encryptedBytesOnly, 0, $encryptedBytesOnly.Length)

# Convert the decrypted bytes back to text
$decryptedText = [Text.Encoding]::UTF8.GetString($decryptedBytes)

# Display the decrypted text
Write-Host "Decrypted Text: $decryptedText"