#!/bin/bash


listar_processos()
{
    ps -e;


}

pid_processo()
{

    echo "Digite o nome do processo que deseja ver o PID: "
    read resp 

    echo -e "\nPID do processo $resp : "
    pidof $resp 

}

parar_processo()
{

    echo "Informe o PID do processo: "
    read resp
    kill -STOP $resp


}

continua_processo()
{

    echo "Informe o PID do processo que deseja CONTINUAR: "
    read resp
    kill -CONT $resp
}

mata_processo()
{
    echo "Informe o PID do processo que deseja FINALIZAR: "
    read resp
    kill -9 $resp

}

muda_prioridade()
{
    echo "Informe o PID do processo que deseja ALTERAR PRIORIDADE: "
        read resp
        echo "Informe o parametro de prioridade do processo (-20 a 19): "
        read parametro

        sudo renice $parametro $resp

}


opcao=1

while (($opcao != 0))
do
echo -e " \n\n--- MENU OPÇÕES ---
(1) Listar processos em execução 
(2) Mostrar o PID de um processo
(3) Parar um processo
(4) Continuar um processo parado
(5) Matar um processo
(6) Mudar a prioridade de um processo 
\n(0) ENCERRAR SCRIPT\n"

echo "Escolha o numero da OPÇÃO DESEJADA: "
read opcao
case $opcao in
    1) 
        clear
        listar_processos ;;  
    2)
        clear
        pid_processo ;;
    3) 
        parar_processo ;;
    
    4) 
        continua_processo ;;
    
    5) 
        mata_processo ;;

    6) 
        muda_prioridade ;;
    
        

esac
done

