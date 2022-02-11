#!/bin/bash
echo "Qual sua resposta?"
read opcao
case $opcao in
sim ) echo "Você concordou!" ;;
nao ) echo "Que pena!" ;;
* ) echo "Nem sim, nem não";;
esac