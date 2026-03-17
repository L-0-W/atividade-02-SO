# exercicio 1

# 1 - ENTRADA
# Keyboard | Dispositivo de teclado HID 
# Mouse | Mouse compatível com HID
#
# 1 - OS DOIS
# DiskDrive | NVMe SM2P41C3 NVMe ADATA 256GB
# Net | WAN Miniport (SSTP)
#
# 1- SAIDA
#  Monitor | Generic Monitor (DELL E1920H
#  Volume | Volume
#
#
#
# 2 - O estado atual do dispositivo, OK = Funcionando, Unknown = Não sabe o estado atual, Disable = Desabilitado


# exercicio 2 ------------------------------------------------------------------------------------------------

$exercicio1 = "
# exercicio 1

# 1 - ENTRADA
# Keyboard | Dispositivo de teclado HID 
# Mouse | Mouse compatível com HID
#
# 1 - OS DOIS
# DiskDrive | NVMe SM2P41C3 NVMe ADATA 256GB
	# Porque? Usuario 'entra' com dados no disco, criando arquivos, por mais que seja o computador que crie, isso e uma ação do usuario. saida de dados, como o monitor sai alguma informação para o usuario, o Disco retorna informações de um arquivo ou o arquivo em si.

# Net | WAN Miniport (SSTP)
#
# 1- SAIDA
#  Monitor | Generic Monitor (DELL E1920H
#  Volume | Volume
#
#
#
# 2 - O estado atual do dispositivo, OK = Funcionando, Unknown = Não sabe o estado atual, Disable = Desabilitado
"

echo $exercicio1 | Out-File -FilePath "./exercicio-1.txt" 

Sleep -Seconds 1

# uso -Path para escolher o caminho do arquivo/conteudo que desejo pegar
# uso -Filter para filtrar o arquivo, aqui digo que vai ser 'qualquer nome': '*' mas seo com a extensão '.txt'
Get-Content -Path "./exercicio-1.txt" -Filter "*.txt"



# 1 Out-File escreve dados em um arquivo, podendo ser texto, Já o Get-Content busca o conteudo de um arquivo, "ele busca um conteudo"

# 2 - buffer/cache


# exercicio 3 ------------------------------------------------------------------------------------------------------

# Get-WinEvent -ProviderName "Microsoft-Windows-KnownFolders" | ForEach { $level = $_.LevelDisplayName; $id = $_.Id; if ($level -eq "Err") { echo $_ }  }

# 1

# Microsoft-Windows-Kernel-Cache
# Microsoft-Windows-KnownFolders

# 2 - Saber onde e quando ocorreu a falha, tanto em qual provedor ocorreu essa falha, saber se o porque dessa falha internamente, com campos disponibilizados
# como id, Message, LevelDisplay, TimeCreated

