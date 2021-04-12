#!/usr/bin/env bash

# Site:		https://www.youtube.com/user/SuperDeivid22/featured?sub_confirmation=1
# Github	https://github.com/deividduarte20
# Autor:	Deivid Duarte

# ------------------------------------------------------------------------#
# Esse programa irá acessar o endereço web do rep dimep no modo texto
# Corta partes da informação para filtrar
# Para retornar apenas o necessário que no caso é se a operação está normal ou modo manutenção do relógio de ponto DIMEP
# Converte a informação para codificação UTF-8
# E armazena o resulta na variavel status
# O $1 exigirá um parametro na execução do script que deve ser o ip do rep
# Faz a verificação condicional e se for verdadeira escreve 1 senão 0
# ------------------------ MODO DE EXECUÇÃO ------------------------------#
# ./rep.sh 192.168.2.242
# ------------------------ TESTE EM BASH --------------------------------#
# Testado em:
#   bash 4.19
# ------------------------ EXECUÇÃO --------------------------------------#
#
status=$(lynx -source $1 | grep -a "t10-->" | cut -d \> -f3 | sed 's/<.*//' | iconv -f iso-8859-1 -t utf-8)


        if [ "$status" == "Operação normal" ]; then

        # Está está ok
                echo "1"

        else
        # senão, está fora

                echo "0"
        fi

