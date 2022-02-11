#!/bin/bash
saudacao () # Declaração da função saudacao().
{
    echo "entre com seu nome:"
    read nome
    echo "Boa noite $nome!"
}
saudacao