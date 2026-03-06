#!/bin/bash

# Configurações iniciais de codificação e data
export LANG=en_US.UTF-8
now=$(date "+%Y-%m-%d %H:%M")

# Pega o diretório atual de onde o script está sendo rodado
DEVAPP_HOME=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# ---------------------------------------------------------
# VARIÁVEIS COM URLs para download dos programas complementares
# ---------------------------------------------------------
export downvscode="https://code.visualstudio.com/thank-you?dv=linux64/code-stable-x64-1772587898.tar.gz"
export arqvscode="code-stable-x64-1772587898.tar.gz"
export nomevscode="vscode"

export downnetbeans=""
export arqnetbeans=".tar.gz"
export nomenetbeans="netbeans"

export downnode="https://nodejs.org/pt-br/download/node-v22.22.1.tar.gz"
export arqnode="node-v22.22.1.tar.gz"
export nomenode="node-v22.22.1"

# ---------------------------------------------------------
# VARIÁVEIS DE AMBIENTE (Substitui os set por export)
# ---------------------------------------------------------
export ANDROID_STUDIO_HOME="$DEVAPP_HOME/android/android-studio"
export ANDROID_HOME="$DEVAPP_HOME/android/sdk"
export JAVA_HOME="$DEVAPP_HOME/jdk"
export NODE_HOME="$DEVAPP_HOME/node"
export VSCODE_HOME="$DEVAPP_HOME/vscode"
export POSTGRES_HOME="$DEVAPP_HOME/pgsql"

export PGDATA="$POSTGRES_HOME/data"
export PGDATABASE="postgres"
export PGUSER="postgres"
export PGPORT="5439"

# Altera o PATH temporariamente
export PATH="$DEVAPP_HOME:$JAVA_HOME/bin:$NODE_HOME/bin:$VSCODE_HOME/bin:$POSTGRES_HOME/bin:$PATH"

# ---------------------------------------------------------
# SEÇÃO DE FUNÇÕES (Equivalente aos :Rótulos e GOTO do .bat)
# ---------------------------------------------------------

# Função para pausar a tela (Equivalente ao comando 'pause')
pause() {
    read -p "Pressione Enter para continuar..."
}

# Menu de Execução
menu_executar() {
    clear
    echo "--- OPÇÕES DE EXECUÇÃO ---"
    echo "( 0 ) Voltar"
    echo "( 1 ) VSCODE"
    echo "( 2 ) POSTGRES"
    echo ":::::::::::::::::::::::::::"
    read -p "Escolha uma opcao: " op_exec

    case $op_exec in
        0) return ;;
        1) 
            if [ -d "$VSCODE_HOME" ]; then
                # No Linux, o executável do vscode se chama apenas 'code'
                nohup "$VSCODE_HOME/bin/code" --extensions-dir "$VSCODE_HOME/extensions" --user-data-dir "$VSCODE_HOME/userdir" > /dev/null 2>&1 &
            else
                echo -e "\033[31mVSCODE NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO\033[0m"
                pause
            fi
            ;;
        2)
            if [ -f "$POSTGRES_HOME/bin/initdb" ]; then
                if [ ! -d "$POSTGRES_HOME/data" ]; then
                    echo "Primeira execucao do postgres."
                    "$POSTGRES_HOME/bin/initdb" -U postgres -A trust
                fi
                echo "Iniciando Postgres na porta $PGPORT..."
                "$POSTGRES_HOME/bin/pg_ctl" -D "$POSTGRES_HOME/data" -l "$POSTGRES_HOME/logfile" start
                echo "Para fechar o banco volte aqui e prossiga."
                pause
                "$POSTGRES_HOME/bin/pg_ctl" -D "$POSTGRES_HOME/data" stop
            else
                echo -e "\033[31mPOSTGRES NÃO INSTALADO\033[0m"
                pause
            fi
            ;;
        *) echo "Opção Invalida" ; pause ;;
    esac
}

# Menu de Instalação
menu_instalar() {
    clear
    echo "--- OPÇÕES DE INSTALAÇÃO ---"
    echo "( 0 ) Voltar"
    echo "( 1 ) Instala VSCODE"
    echo "( 2 ) Instala NODE"
    echo ":::::::::::::::::::::::::::::"
    read -p "Escolha uma opcao: " op_inst

    case $op_inst in
        0) return ;;
        1)
            cd "$DEVAPP_HOME"
            wget --no-check-certificate $downvscode -O $arqvscode
            mkdir -p "$VSCODE_HOME"
            tar -xzf $arqvscode -C "$VSCODE_HOME" --strip-components=1
            rm -f $arqvscode
            mkdir -p "$VSCODE_HOME/userdir/User"
            echo "VSCode instalado!"
            pause
            ;;
        2)
            cd "$DEVAPP_HOME"
            wget --no-check-certificate $downnode -O $arqnode
            mkdir -p "$NODE_HOME"
            tar -xf $arqnode -C "$NODE_HOME" --strip-components=1
            rm -f $arqnode
            echo "Node instalado!"
            pause
            ;;
        *) echo "Opção Invalida" ; pause ;;
    esac
}

# ---------------------------------------------------------
# LOOP PRINCIPAL (Menu Principal)
# ---------------------------------------------------------
while true; do
    clear
    echo -e "\033[34m-------------------------------------------------------\033[0m"
    echo "     DEVAPP v-3.1 (Versão Linux)                       "
    echo "                                  $now                 "
    echo -e "\033[34m-------------------------------------------------------\033[0m"
    echo " ( 0 ) SAIR"
    echo " ( 1 ) PROGRAMAÇÃO E BANCO DE DADOS (Executar)"
    echo " ( 2 ) INSTALAÇÕES"
    echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
    read -p "Escolha uma opcao: " UserInput

    case $UserInput in
        0) 
            echo "Saindo..."
            exit 0 
            ;;
        1) menu_executar ;;
        2) menu_instalar ;;
        *) 
            echo "Opção inválida"
            pause 
            ;;
    esac
done