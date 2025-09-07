#!/bin/bash

# Este script executa a instalação do ubiquity-slideshow de forma automática.

# 1. Baixa o pacote do GitHub
echo "Baixando o pacote xdpkg.tar.gz..."
wget https://github.com/lcn6560-lab/xdlinux/blob/main/xdpkg.tar.gz

# Verifica se o download foi bem-sucedido
if [ ! -f "xdpkg.tar.gz" ]; then
    echo "Erro: O download do pacote falhou. Verifique a URL e sua conexão com a internet."
    exit 1
fi

# 2. Descompacta o arquivo xdpkg.tar.gz
echo "Descompactando o arquivo xdpkg.tar.gz..."
tar -vzxf xdpkg.tar.gz

# 3. Entra nos diretórios para encontrar o pacote a ser copiado
echo "Navegando até o diretório do pacote..."
cd xdpkg/ubiquity-slideshow-lubuntu/usr/share/doc

# 4. Copia o arquivo para o diretório de destino (/usr/share/doc)
echo "Copiando ubiquity-slideshow.tar.gz para /usr/share/doc..."
sudo cp -r ubiquity-slideshow.tar.gz /usr/share/doc

# 5. Entra no diretório de destino
echo "Entrando no diretório /usr/share/doc..."
cd /usr/share/doc

# 6. Descompacta o arquivo no local de destino
echo "Descompactando o arquivo ubiquity-slideshow.tar.gz em /usr/share/doc..."
sudo tar -vzxf ubiquity-slideshow.tar.gz

# 7. Remove o arquivo compactado para limpar o sistema
echo "Removendo o arquivo compactado ubiquity-slideshow.tar.gz..."
sudo rm ubiquity-slideshow.tar.gz

echo "Instalação concluída com sucesso!"
