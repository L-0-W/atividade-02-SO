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

# FilterHashTable faz um filtro igual (-LogName, -ProviderName ou Where-Object), mas aqui e feito em um estilo (chave: valor), igual umas hashTable mesmo
	#sendo mais rapida do que Where-Object pelo motivo do filtro ser feito no arquivo de log. e não busca todos os dados e depois faz o filtro

# LogName e o nome do arquivo de log(System, Application ou Security) e ProviderName e o nome do provedor que publicou esse evento
# Get-WinEvent -FilterHashTable @{ LogName='System'; ProviderName='Microsoft-Windows-Ntfs' }

# 1

# Microsoft-Windows-Ntfs

# 2 - Saber onde e quando ocorreu a falha, qual provedor publicou a informação ou falha, saber o porque dessa falha internamente, com campos disponibilizados
# como id, Message, LevelDisplay, TimeCreated

