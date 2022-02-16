#!/bin/bash



echo -e " \n\n--- MENU OPÇÕES ---
(1) Lista de processos em execução: 
(2) Mostra o PID de um processo
(3) Parar um processo
(4) Continuar um processo parado
(5) Matar um processo
(6) Mudar a prioridade de um processo \n\n"

echo "Escolha o numero da OPÇÃO DESEJADA: "
read opcao
case $opcao in
    1)
        ps -e; ;;

    2) 
        echo "digite o nome do processo que deseja ver o PID: "
        read resp 

        echo "PID do processo $resp : "
        pidof $resp ;;

    3) 
    
        echo "Informe o PID do processo: "
        read resp
        kill -STOP $resp ;;
        

    4)  
        echo "Informe o PID do processo que deseja CONTINUAR: "
        read resp
        kill -CONT $resp ;;

    5)  
        echo "Informe o PID do processo que deseja FINALIZAR: "
        read resp
        kill -9 $resp ;;

    6) 
        echo "Informe o PID do processo que deseja ALTERAR PRIORIDADE: "
        read resp
        echo "Informe o parametro de prioridade do processo (-20 a 19): "
        read parametro

        sudo renice $parametro $resp ;;



esac