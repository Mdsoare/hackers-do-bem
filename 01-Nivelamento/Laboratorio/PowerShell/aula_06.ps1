# Aula 06
# Script para codificar texto em Base64

# Encryption Key (16, 24 or 32 bytes)
$encryptionKey = [Text.Encoding]::UTF8.GetBytes("MySecretEncryptionKey")

# Text to encrypt
$textToEncrypt = "Digite seu texto aqui"

# Convert the text to bytes
$bytesToEncrypt = [Text.Encoding]::UTF8.GetBytes($textToEncrypt)

# Create AES encryption object
$aes = [System.Security.Cryptography.Aes]::Create()
$aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7

$aes = [System.Security.Cryptography.Aes]::Create()

$aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7

# Generate a random IV (Initialization Vector)
$aes.GenerateIV()

# Create an encryption stream
$encryptor = $aes.CreateEncryptor()

# Encrypt the bytes
$encryptedBytes = $encryptor.TransformFinalBlock($bytesToEncrypt, 0, $bytesToEncrypt.Length)

# Convert the encrypted bytes to base64 for storage
$encryptedText = [Convert]::ToBase64String($aes.IV + $encryptedBytes)

# Display the encrypted Text
Write-Host "Encrypted Text: $encryptedText"