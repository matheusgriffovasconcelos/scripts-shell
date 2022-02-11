#!/bin/bash
echo "Entre com um número:"
read num
if (( $num > 10 )); then
    echo "Você digitou um número maior que 10."
else
    echo "Você digitou o número $num."
fi