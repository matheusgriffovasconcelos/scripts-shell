#!/bin/bash
echo "Compara dois numeros"
echo "Escreva o primeiro numero:"
read n1
echo "Escreva o segundo numero:"
read n2
if [ $n1 == $n2 ]; then
    echo "Os números são iguais"
else
    echo "Os números são diferentes"
fi
