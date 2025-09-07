#!/bin/bash

# Este script executa a segunda parte da instalação do ubiquity-slideshow.

# 1. Entra nos diretórios para encontrar o pacote a ser copiado
echo "Navegando até o diretório do pacote..."
cd xdpkg/ubiquity-slideshow-lubuntu/usr/share

# 2. Copia o arquivo para o diretório de destino (/usr/share)
echo "Copiando ubiquity-slideshow.tar.gz para /usr/share..."
sudo cp -r ubiquity-slideshow.tar.gz /usr/share

# 3. Entra no diretório de destino
echo "Entrando no diretório /usr/share..."
cd /usr/share

# 4. Descompacta o arquivo no local de destino
echo "Descompactando o arquivo ubiquity-slideshow.tar.gz em /usr/share..."
sudo tar -vzxf ubiquity-slideshow.tar.gz

# 5. Remove o arquivo compactado para limpar o sistema
echo "Removendo o arquivo compactado ubiquity-slideshow.tar.gz..."
sudo rm ubiquity-slideshow.tar.gz

echo "Instalação da segunda etapa concluída com sucesso!"
echo "As equipes edxlinux edxOs xdlinux fostonlinux agradecem!"
