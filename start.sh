#!/bin/bash

# Configurações iniciais de codificação e data
export LANG=en_US.UTF-8
now=$(date "+%Y-%m-%d %H:%M")

# Pega o diretório atual de onde o script está sendo rodado
DEVAPP_HOME=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

## ---------------------------------------------------------
# VARIÁVEIS COM URLs PARA DOWNLOAD DOS PROGRAMAS COMPLEMENTARES
## ---------------------------------------------------------

# export downvscode="https://vscode.download.prss.microsoft.com/dbazure/download/stable/5437499feb04f7a586f677b155b039bc2b3669eb/code-stable-x64-1718753229.tar.gz"
# export downvscode="https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1a4fb101478ce6ec82fe9627c43efbf9e98c813/code-stable-x64-1731510444.tar.gz"
export downvscode="https://vscode.download.prss.microsoft.com/dbazure/download/stable/03c265b1adee71ac88f833e065f7bb956b60550a/code-stable-x64-1740669146.tar.gz"
export arqvscode="code-stable-x64-1740669146.tar.gz"
export nomevscode="vscode"

# link dos arquivos -> mais lento
# export downnetbeans="https://archive.apache.org/dist/netbeans/netbeans/25/netbeans-25-bin.zip"
# export downnetbeans="https://dlcdn.apache.org/netbeans/netbeans/26/netbeans-26-bin.zip"
export downnetbeans="https://dlcdn.apache.org/netbeans/netbeans/24/netbeans-27-bin.zip"
export arqnetbeans="netbeans-27-bin.zip"
export nomenetbeans="netbeans"

# export downandroidstudio="https://redirector.gvt1.com/android/studio/ide-zips/2024.3.2.14/android-studio-2024.3.2.14-linux.tar.gz"
export downandroidstudio="https://redirector.gvt1.com/android/studio/ide-zips/2025.2.3.9/android-studio-2025.2.3.9-linux.tar.gz"
export arqandroidstudio="android-studio-2025.2.3.9-linux.tar.gz"

# export downcommandlinetools="https://dl.google.com/android/repository/commandlinetools-linux-13114758_latest.zip"
export downcommandlinetools="https://dl.google.com/android/repository/commandlinetools-linux-14742923_latest.zip"
export arqcommandlinetools="commandlinetools-linux-14742923_latest.zip"

export downplatformtools="https://dl.google.com/android/repository/platform-tools-latest-linux.zip"
export arqplatformtools="platform-tools-latest-linux.zip"

# export downflutter="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.3-stable.tar.xz"
export downflutter="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.38.9-stable.tar.xz"
export arqflutter="flutter_linux_3.38.9-stable.tar.xz"

# export downnode="https://nodejs.org/dist/v18.19.0/node-v18.19.0-linux-x64.tar.xz"
# export arqnode="node-v18.19.0-linux-x64.tar.xz"
# export nomenode="node-v18.19.0-linux-x64"
export downnode="https://nodejs.org/dist/v22.15.0/node-v22.15.0-linux-x64.tar.xz"
export arqnode="node-v22.15.0-linux-x64.tar.xz"
export nomenode="node-v22.15.0-linux-x64"

# export downjdk="https://download.java.net/java/GA/jdk17.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz"
# export arqjdk="openjdk-17.0.2_linux-x64_bin.tar.gz"
# export nomejdk="jdk-17.0.2"
# ==========================================================
# visite https://jdk.java.net/archive/ para mais versões
# ==========================================================
export downjdk="https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz"
export arqjdk="openjdk-21.0.2_linux-x64_bin.tar.gz"
export nomejdk="jdk-21.0.2"

export downgradle="https://services.gradle.org/distributions/gradle-8.12-bin.zip"
export arqgradle="gradle-8.12-bin.zip"
export nomegradle="gradle-8.12"

export downmaven="https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.tar.gz"
export arqmaven="apache-maven-3.9.11-bin.tar.gz"
export nomemaven="apache-maven-3.9.11"

export downmysql="https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.39-linux-glibc2.28-x86_64.tar.xz"
export arqmysql="mysql-8.0.39-linux-glibc2.28-x86_64.tar.xz"
export nomemysql="mysql-8.0.39-linux-glibc2.28-x86_64"

export downmariadb="https://archive.mariadb.org/mariadb-11.4.2/bintar-linux-systemd-x86_64/mariadb-11.4.2-linux-systemd-x86_64.tar.gz"
export arqmariadb="mariadb-11.4.2-linux-systemd-x86_64.tar.gz"
export nomemariadb="mariadb-11.4.2-linux-systemd-x86_64"

export downgit="https://github.com/git/git/archive/refs/tags/v2.41.0.tar.gz"
export arqgit="git-2.41.0.tar.gz"

# export downpython="https://www.python.org/ftp/python/3.12.4/Python-3.12.4.tgz"
export downpython="https://www.python.org/ftp/python/3.13.0/Python-3.13.0.tgz"
export arqpython="Python-3.13.0.tgz"
export nomepython="Python"
export downgetpip="https://bootstrap.pypa.io/get-pip.py"

export downdbeaver="https://dbeaver.io/files/dbeaver-ce-latest-linux.gtk.x86_64.tar.gz"
export arqdbeaver="dbeaver-ce-latest-linux.gtk.x86_64.tar.gz"
export nomedbeaver="dbeaver-ce-latest-linux.gtk.x86_64"

export downyed="https://www.yworks.com/resources/yed/demo/yEd-3.23.2.zip"
export arqyed="yEd-3.23.2.zip"
export nomeyed="yEd-3.23.2"

export downneo4j="https://dist.neo4j.org/neo4j-community-5.17.0-unix.tar.gz"
export arqneo4j="neo4j-community-5.17.0-unix.tar.gz"
export nomeneo4j="neo4j-community-5.17.0"

export downmongodb="https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu2204-8.0.5.tgz"
export arqmongodb="mongodb-linux-x86_64-ubuntu2204-8.0.5.tgz"
export nomemongodb="mongodb-linux-x86_64-ubuntu2204-8.0.5"

export downmongosh="https://downloads.mongodb.com/compass/mongosh-2.3.2-linux-x64.tar.gz"
export arqmongosh="mongosh-2.3.2-linux-x64.tar.gz"
export nomemongosh="mongosh-2.3.2-linux-x64"

# export downpostgres="https://ftp.postgresql.org/pub/source/v16.3/postgresql-16.3.tar.gz"
# export arqpostgres="postgresql-16.3.tar.gz"
export downpostgres="https://ftp.postgresql.org/pub/source/v15.7/postgresql-15.7.tar.gz"
export arqpostgres="postgresql-15.7.tar.gz"

export downnotepadqq="https://github.com/notepadqq/notepadqq/releases/download/v2.0.0-beta/Notepadqq-v2.0.0-beta-x86_64.AppImage"
export arqnotepadqq="notepadqq.AppImage"

export downpostman="https://dl.pstmn.io/download/latest/linux_64"
export arqpostman="postman-linux-x64.tar.gz"

export downinsomnia="https://updates.insomnia.rest/downloads/linux/latest?app=com.insomnia.app&source=website"
export arqinsomnia="Insomnia.AppImage"

## ---------------------------------------------------------
# VARIÁVEIS DE AMBIENTE PARA O LINUX
## ---------------------------------------------------------
# ==========================================================
# configura o caminho para o sdk android,
# para o jdk, node, vscode etc.
# sempre execute os programas usando esse arquivo start.sh.
# variáveis pré-configuradas.
# ==========================================================
export ANDROID_STUDIO_HOME="$DEVAPP_HOME/android/android-studio"
export ANDROID_HOME="$DEVAPP_HOME/android/sdk"
export ANDROID_SDK_ROOT="$DEVAPP_HOME/android/sdk"
export FLUTTER_HOME="$DEVAPP_HOME/flutter"
export JAVA_HOME="$DEVAPP_HOME/jdk"
export MAVEN_HOME="$DEVAPP_HOME/maven"
export NODE_HOME="$DEVAPP_HOME/node"
export VSCODE_HOME="$DEVAPP_HOME/vscode"
export NETBEANS_HOME="$DEVAPP_HOME/netbeans"
export DBEAVER_HOME="$DEVAPP_HOME/dbeaver"
export MARIADB_HOME="$DEVAPP_HOME/mariadb"
export MYSQL_HOME="$DEVAPP_HOME/mysql"
export NOTEPAD_HOME="$DEVAPP_HOME/notepad"
export GIT_HOME="$DEVAPP_HOME/git"
export PYTHON_HOME="$DEVAPP_HOME/python"
export NEO4J_HOME="$DEVAPP_HOME/neo4j"
export MONGODB_HOME="$DEVAPP_HOME/mongodb"
export MONGOSH_HOME="$DEVAPP_HOME/mongosh"
export POSTGRES_HOME="$DEVAPP_HOME/pgsql"
export GRADLE_HOME="$DEVAPP_HOME/gradle"

export DOTNET_HOME="$DEVAPP_HOME/dotnet"
export DOTNET_ROOT="$DEVAPP_HOME/dotnet"

export PGDATA="$POSTGRES_HOME/data"
export PGDATABASE="postgres"
export PGUSER="postgres"
export PGPORT="5439"
export PGLOCALEDIR="$POSTGRES_HOME/share/locale"

# ==========================================================
export PATH="$DEVAPP_HOME:$JAVA_HOME/bin:$MAVEN_HOME/bin:$NODE_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$VSCODE_HOME/bin:$NOTEPAD_HOME/bin:$GIT_HOME/bin:$PYTHON_HOME/bin:$NEO4J_HOME/bin:$MONGODB_HOME/bin:$PATH"
export PATH="$DEVAPP_HOME:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools"
export PATH="$DEVAPP_HOME:$POSTGRES_HOME/bin"
export PATH="$DEVAPP_HOME:$FLUTTER_HOME/bin"
export PATH="$DEVAPP_HOME:$GRADLE_HOME/bin"
export PATH="$DEVAPP_HOME:$DOTNET_HOME:$DOTNET_ROOT:"
export PATH="$DEVAPP_HOME:$PATH"
# ==========================================================

show_menu() {
    tput setab 4
    tput setaf 7
    clear

    echo "-------------------------------------------------------"
    echo "    DEVAPP-LE v-1.0 "
    echo ""
    echo "           Professor Rômulo (criador do DEVAPP original) "
    echo "           Pedro Henrique A. Herzog (pedrohaherzog-2005) "
    echo ""
    echo "                                   $now "
    echo "-------------------------------------------------------"
    echo ""
    echo "-->  SEMPRE EXECUTE OS PROGRAMAS AQUI (\"start.sh\") <--"
    echo "" 
    echo "======================================================="
    echo "--- OPCOES --------------------------------------------"
    echo "( 0 ) SAIR"
    echo "( 1 ) PROGRAMAÇÃO E BANCO DE DADOS"
    echo "( 2 ) INSTALAÇÕES"
    echo "( 3 ) AUXILIARES"
    echo "======================================================="
}

while true; do
    show_menu
    
    read -p "Escolha uma opcao: " UserInput
    
    echo ""
    clear
    echo "Opcao escolhida = $UserInput"
    echo ""

    case $UserInput in
        0)
            tput sgr0
            clear
            echo "Saindo..."
            exit 0
            ;;
        1)
            echo "Entrando em Programação e Banco de Dados..."
            read -p "Pressione Enter para continuar..."
            ;;
        2)
            echo "Entrando em Instalações..."
            read -p "Pressione Enter para continuar..."
            ;;
        3)
            echo "Entrando em Auxiliares..."
            read -p "Pressione Enter para continuar..."
            ;;
        *)
            echo "Opção inválida: '$UserInput'. Tente novamente."
            sleep 2
            ;;
    esac
done

menu_executar() {
    while true; do
        tput setab 3
        tput setaf 0
        clear

        echo "--- OPÇÕES DE EXECUÇÃO ------------------------------"
        echo "( 0 ) Voltar"
        echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "( 1 ) NETBEANS"
        echo "( 2 ) VSCODE"
        echo "( 3 ) ANDROID STUDIO"
        echo "( 4 ) DBEAVER"
        echo "( 41 ) POSTGRES"
        echo "( 42 ) MYSQL"
        echo "( 43 ) MARIADB"
        echo "( 44 ) NEO4J"
        echo "( 45 ) MONGODB"
        echo "( 46 ) MONGOSH"
        echo "( 5 ) PUTTY"
        echo "( 6 ) NOTEPAD++"
        echo "( 71 ) POSTMAN"
        echo "( 72 ) INSOMNIA"
        echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::"
        read -p "Escolha uma opcao: " UserInput
        
        echo ""
        tput sgr0 
        clear
        echo "Opcao escolhida = $UserInput"
        echo ""

        case $UserInput in
            0) return ;;
            1) exec_netbeans ;;
            2) exec_vscode ;;
            3) exec_android_studio ;;
            4) exec_dbeaver ;;
            41) exec_postgresql ;;
            42) exec_mysql ;;
            43) exec_mariadb ;;
            44) exec_neo4j ;;
            45) exec_mongodb ;;
            46) exec_mongosh ;;
            6) exec_notepadqq ;;
            71) exec_postman ;;
            72) exec_insomnia ;;
            *) echo "Opção inválida"; sleep 1 ;;
        esac
    done
}

menu_instalar() {
    while true; do
        tput setab 2
        tput setaf 0
        clear

        echo "--- OPÇÕES DE INSTALAÇÃO ------------------------------"
        echo "( 0 ) Voltar"
        echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "( 1 ) Instala JDK + Maven"
        echo "( 11 ) NetBeans    "
        echo "( 2 ) Instala VSCODE + Configurações"
        echo "( 3 ) Instala NODE + VueCLI + Git  "
        echo "( 31 ) Instala Git "
        echo "( 4 ) Instala SDK Android CLI Basico"
        echo "( 41 ) Instalar o Android Studio **Use SDK Android em DEVAPP/android/sdk**"
        echo "( 42 ) Instalar o Flutter SDK"
        echo "( 43 ) Instalar o Gradle"
        echo "( 5 ) Instalar o Postgres"
        echo "( 50 ) Instalar o DBeaver"
        echo "( 51 ) Instalar o MySQL"
        echo "( 52 ) Instalar o MariaDB"
        echo "( 53 ) Instalar o Neo4J        "
        echo "( 54 ) Instalar o MongoDB"
        echo "( 541 ) Instalar o MongoSH"
        echo "( 7 ) Instalar o PYTHON"
        echo "( 8 ) Instalar o NOTEPADqq"
        echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::"
        read -p "Escolha uma opcao: " UserInput
        
        echo ""
        tput sgr0 
        clear
        echo "Opcao escolhida = $UserInput"
        echo ""

        case $UserInput in
            0) return ;;
            1)
                echo "Iniciando download/instalação do JDK + Maven..."
                read -p "Pressione Enter para continuar..."
                ;;
            11)
                echo "Iniciando download/instalação do NetBeans..."
                read -p "Pressione Enter para continuar..."
                ;;
            2)
                echo "Iniciando download/instalação do VS Code..."
                read -p "Pressione Enter para continuar..."
                ;;
            3)
                echo "Iniciando download/instalação do Node + VueCLI + Git..."
                read -p "Pressione Enter para continuar..."
                ;;
            31)
                echo "Iniciando download/instalação do Git..."
                read -p "Pressione Enter para continuar..."
                ;;
            4)
                echo "Iniciando download/instalação do SDK Android..."
                read -p "Pressione Enter para continuar..."
                ;;
            41)
                echo "Iniciando download/instalação do Android Studio..."
                read -p "Pressione Enter para continuar..."
                ;;
            42)
                echo "Iniciando download/instalação do Flutter SDK..."
                read -p "Pressione Enter para continuar..."
                ;;
            43)
                echo "Iniciando download/instalação do Gradle..."
                read -p "Pressione Enter para continuar..."
                ;;
            5)
                echo "Iniciando download/instalação do PostgreSQL..."
                read -p "Pressione Enter para continuar..."
                ;;
            50)
                echo "Iniciando download/instalação do DBeaver..."
                read -p "Pressione Enter para continuar..."
                ;;
            51)
                echo "Iniciando download/instalação do MySQL..."
                read -p "Pressione Enter para continuar..."
                ;;
            52)
                echo "Iniciando download/instalação do MariaDB..."
                read -p "Pressione Enter para continuar..."
                ;;
            53)
                echo "Iniciando download/instalação do Neo4J..."
                read -p "Pressione Enter para continuar..."
                ;;
            54)
                echo "Iniciando download/instalação do MongoDB..."
                read -p "Pressione Enter para continuar..."
                ;;
            541)
                echo "Iniciando download/instalação do MongoSH..."
                read -p "Pressione Enter para continuar..."
                ;;
            7)
                echo "Iniciando download/instalação do Python..."
                read -p "Pressione Enter para continuar..."
                ;;
            8)
                echo "Iniciando download/instalação do Notepadqq / Editor nativo..."
                read -p "Pressione Enter para continuar..."
                ;;
            *)
                echo "Opção inválida: '$UserInput'. Tente novamente."
                sleep 2
                ;;
        esac
    done
}

menu_auxiliares() {
    while true; do
        tput setab 6
        tput setaf 0
        clear

        echo "--- OPÇÕES AUXILIARES ------------------------------"
        echo "( 0 ) Voltar"
        echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "( 1 ) Abrir o Terminal"
        echo "( 2 ) Abrir Visual Paradigm Online"
        echo "( 3 ) Abrir YED Online"
        echo "( 4 ) Abrir Draw.IO"
        echo "( 5 ) Abrir Excalidraw"
        echo "( 6 ) Abrir Mermaid"
        echo "( 7 ) Abrir Smart Draw"
        echo "( 8 ) Abrir DB Diagram"
        echo "( 9 ) Abrir Creately"
        echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::"
        read -p "Escolha uma opcao: " UserInput
        
        echo ""
        tput sgr0 
        clear
        echo "Opcao escolhida = $UserInput"
        echo ""

        case $UserInput in
            0) return ;;
            1) abre_terminal ;;
            2) abre_visual_paradigm ;;
            3) abre_yed ;;
            4) abre_drawio ;;
            5) abre_excalidraw ;;
            6) abre_mermaid ;;
            7) abre_smart_draw ;;
            8) abre_db_diagram ;;
            9) abre_creately ;;
            *) echo "Opção inválida"; sleep 1 ;;
        esac
}

## =======================================================
# SEÇÃO DE EXECUÇÕES
## =======================================================

# execuções do menu_auxiliares
abre_terminal() {
    echo "Abrindo novo terminal... (Digite 'exit' para voltar ao menu)"
    if command -v gnome-terminal >/dev/null 2>&1; then
        gnome-terminal & 
    else
        /bin/bash
    fi
}

abre_visual_paradigm() {
    xdg-open "https://online.visual-paradigm.com/pt/diagrams/solutions/free-visual-paradigm-online/"
}

abre_yed() {
    xdg-open "https://www.yworks.com/yed-live/"
}

abre_drawio() {
    xdg-open "https://app.diagrams.net/"
}

abre_excalidraw() {
    xdg-open "https://excalidraw.com/"
}

abre_mermaid() {
    xdg-open "https://www.mermaidchart.com/play"
}

abre_smart_draw() {
    xdg-open "https://www.smartdraw.com/entity-relationship-diagram/er-diagram-tool.htm"
}

abre_db_diagram() {
    xdg-open "https://dbdiagram.io/home"
}

abre_creately() {
    xdg-open "https://app.creately.com/d/start/dashboard"
}

# execuções do menu_executar
exec_vscode() {
    if [ -f "$VSCODE_HOME/bin/code" ]; then
        echo "Iniciando VS Code..."
        
        "$VSCODE_HOME/bin/code" \                         # Executamos o VS Code com as pastas de extensões e dados dentro do projeto,
            --extensions-dir "$VSCODE_HOME/extensions" \  # O "&" no final é fundamental: ele faz o VS Code rodar em segundo plano.
            --extensions-dir "$VSCODE_HOME/extensions" \
            --user-data-dir "$VSCODE_HOME/userdir" &
            
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  VSCODE NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_netbeans() {
    if [ -f "$NETBEANS_HOME/bin/netbeans" ]; then
        echo "Iniciando NetBeans..."
        
        "$NETBEANS_HOME/bin/netbeans" --jdkhome "$JAVA_HOME" &  # O parâmetro --jdkhome funciona igual no Linux.
                                                                # Usamos o "&" para que o NetBeans abra em uma nova linha de processo e não bloqueie o seu menu.
        
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  NETBEANS NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_dbeaver() {
    if [ -f "$DBEAVER_HOME/dbeaver" ]; then
        echo "Iniciando DBeaver..."
        
        "$DBEAVER_HOME/dbeaver" &  # O "&" garante que o DBeaver abra em uma nova janela
                                   # sem travar o seu terminal do menu.
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  DBEAVER NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_android_studio() {
    if [ -f "$ANDROID_STUDIO_HOME/bin/studio.sh" ]; then
        echo "Iniciando Android Studio..."

        "$ANDROID_STUDIO_HOME/bin/studio.sh" > /dev/null 2>&1 &  # O "&" libera o terminal para você continuar usando o menu.
                                                                 # "2>/dev/null" serve para não encher seu menu de logs do Android Studio.
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  ANDROID STUDIO NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_notepadqq() {
    if [ -f "$NOTEPAD_HOME/notepad" ]; then # No Linux, tentamos abrir editores comuns se o Notepad++ não existir
        echo "Iniciando Notepadqq Portátil..."
        "$NOTEPAD_HOME/notepad" &
    elif command -v gedit >/dev/null 2>&1; then
        gedit &
    elif command -v mousepad >/dev/null 2>&1; then
        mousepad &
    else
        nano # Se não achar nada, abre o nano no próprio terminal
    fi
}

exec_postman() {
    if [ -f "$POSTMAN_HOME/Postman" ]; then
        echo "Iniciando Postman..."

        "$POSTMAN_HOME/Postman" > /dev/null 2>&1 &
        
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  POSTMAN NÃO INSTALADO."
        echo "  INICIANDO PROCESSO DE INSTALAÇÃO..."
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para continuar..."

        baixa_postman 
    fi
}

exec_insomnia() {
    if [ -f "$DEVAPP_HOME/insomnia/insomnia" ]; then  # No Linux, o executável costuma se chamar 'insomnia'
        echo "Iniciando Insomnia..."                  # Ajuste o caminho conforme a pasta onde você o descompacta

        "$DEVAPP_HOME/insomnia/insomnia" > /dev/null 2>&1 &
        
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  INSOMNIA NÃO INSTALADO."
        echo "  INICIANDO PROCESSO DE INSTALAÇÃO..."
        echo "::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para continuar..."

        baixa_insomnia 
    fi
}

exec_neo4j() {
    if [ -f "$NEO4J_HOME/bin/neo4j" ]; then
        echo "Iniciando Neo4j no Console..."

        if command -v gnome-terminal >/dev/null 2>&1; then                               # O comando 'console' funciona igual ao Windows, mantendo o processo
            gnome-terminal --title="NEO4J CONSOLE" -- "$NEO4J_HOME/bin/neo4j" console &  # visível. Usamos o "gnome-terminal" ou uma nova instância para
        else                                                                             # que o banco de dados não trave o seu menu principal.
            "$NEO4J_HOME/bin/neo4j" console &
            echo "Neo4j rodando em segundo plano (Background)."  # Caso não tenha interface gráfica ou terminal específico,
            sleep 2                                              # roda em segundo plano e avisa o usuário.
        fi
        
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  NEO4J NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_mongodb() {
    if [ -f "$MONGODB_HOME/bin/mongod" ]; then
        echo "Iniciando MongoDB Server..."

        mkdir -p "$MONGODB_HOME/data"

        if command -v gnome-terminal >/dev/null 2>&1; then                                                         # No Linux, tentamos abrir em um novo terminal para você ver os logs.
            gnome-terminal --title="MONGODB SERVER" -- "$MONGODB_HOME/bin/mongod" --dbpath "$MONGODB_HOME/data" &  # O parâmetro --dbpath funciona igual ao Windows.
        else
            "$MONGODB_HOME/bin/mongod" --dbpath "$MONGODB_HOME/data" > "$MONGODB_HOME/mongodb.log" 2>&1 &  # Caso não tenha terminal gráfico, roda em background
            echo "MongoDB iniciado em segundo plano. Logs em: $MONGODB_HOME/mongodb.log"
            sleep 2
        fi
        
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  MONGODB NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_mongosh() {
    if [ -f "$MONGOSH_HOME/bin/mongosh" ]; then
        echo "Iniciando MongoDB Shell..."
        echo "Conectando ao servidor local (padrão)..."
        echo ""

        if command -v gnome-terminal >/dev/null 2>&1; then
            gnome-terminal --title="MongoSH" -- "$MONGOSH_HOME/bin/mongosh" &
        fi

    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  MONGOSH NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_mysql() {
    if [ -f "$MYSQL_HOME/bin/mysqld" ]; then

        mkdir -p "$MYSQL_HOME/data"

        if command -v gnome-terminal >/dev/null 2>&1; then
            gnome-terminal --title="MYSQL SERVER (Porta 3360)" -- bash -c "
                echo 'ATENCAO';
                echo '---------------------------------------';
                echo 'Nao feche essa janela enquanto estiver usando o MySQL';
                echo 'O MySQL estara rodando na porta 3360 com usuario root sem senha';
                echo '---------------------------------------';
                echo 'Pressione Enter para iniciar o servidor...';
                read;
                
                # Inicializa se a pasta data estiver vazia (equivalente ao --initialize-insecure)
                if [ ! -d '$MYSQL_HOME/data/mysql' ]; then
                    '$MYSQL_HOME/bin/mysqld' --initialize-insecure --datadir='$MYSQL_HOME/data' --user=\$(whoami);
                fi

                # Executa o MySQL
                '$MYSQL_HOME/bin/mysqld' --standalone --console --datadir='$MYSQL_HOME/data' --port=3360 --user=\$(whoami)
            " &
        else
            echo "Iniciando MySQL em modo silencioso na porta 3360..."  # Modo Headless (sem janela gráfica)
            "$MYSQL_HOME/bin/mysqld" --standalone --datadir="$MYSQL_HOME/data" --port=3360 --user=$(whoami) > "$MYSQL_HOME/mysql.log" 2>&1 &
            sleep 2
        fi
        
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  MYSQL NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

exec_mariadb() {
    if [ -f "$MARIADB_HOME/bin/mysqld" ]; then

        mkdir -p "$MARIADB_HOME/data"

        if command -v gnome-terminal >/dev/null 2>&1; then
            gnome-terminal --title="MARIADB SERVER (Porta 3360)" -- bash -c "
                echo 'ATENCAO'
                echo '---------------------------------------'
                echo 'Nao feche essa janela enquanto estiver usando o MariaDB'
                echo 'O MariaDB estara rodando na porta 3360 e a senha e SECRET'
                echo '---------------------------------------'
                echo 'Pressione Enter para iniciar o servidor...'
                read
                
                # Inicializa os arquivos do banco apenas se a pasta estiver vazia
                if [ ! -d '$MARIADB_HOME/data/mysql' ]; then
                    echo 'Inicializando o banco de dados...'
                    # No Linux moderno, o comando costuma ser mariadb-install-db
                    if [ -f '$MARIADB_HOME/bin/mariadb-install-db' ]; then
                        '$MARIADB_HOME/bin/mariadb-install-db' --datadir='$MARIADB_HOME/data' --auth-root-authentication-method=normal --auth-root-password=SECRET
                    elif [ -f '$MARIADB_HOME/scripts/mysql_install_db' ]; then
                        # Versões mais antigas guardam o script na pasta scripts/
                        '$MARIADB_HOME/scripts/mysql_install_db' --datadir='$MARIADB_HOME/data' --basedir='$MARIADB_HOME'
                    else
                        '$MARIADB_HOME/bin/mysql_install_db' --datadir='$MARIADB_HOME/data'
                    fi
                fi

                # Executa o MariaDB Server (--console é padrão no terminal interativo no Linux)
                '$MARIADB_HOME/bin/mysqld' --datadir='$MARIADB_HOME/data' --port=3360
            " &
        else
            echo "Iniciando MariaDB em modo silencioso na porta 3360..."  # Modo Headless (sem janela gráfica)
            "$MARIADB_HOME/bin/mysqld" --datadir="$MARIADB_HOME/data" --port=3360 > "$MARIADB_HOME/mariadb.log" 2>&1 &
            sleep 2
        fi
        
    else
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  MARIADB NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
    fi
}

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# DICA DE MANUTENÇÃO (POSTGRESQL):
# Caso a janela seja fechada incorretamente e o Postgres continue 
# rodando "preso" na porta, impossibilitando reiniciar:
#
# 1. Para buscar o PID (Process ID) do Postgres do seu usuário:
#    pgrep -u $(whoami) -x postgres
#
# 2. Para interromper o processo pelo PID encontrado:
#    kill -9 <PID_ENCONTRADO>
#
# 3. Ou, para interromper TODOS os processos do Postgres do seu usuário:
#    pkill -u $(whoami) -x postgres
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
exec_postgres() {
    if [ ! -f "$POSTGRES_HOME/bin/initdb" ]; then
        tput setab 1
        tput setaf 7
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        echo "  POSTGRES NÃO INSTALADO - USE A OPÇÃO DE INSTALAÇÃO"
        echo "::::::::::::::::::::::::::::::::::::::::::::::::"
        tput sgr0
        echo ""
        read -p "Pressione [Enter] para voltar ao menu..."
        return # Sai da função e volta pro menu
    fi

    echo "Postgres executável encontrado."

    if [ -d "$POSTGRES_HOME/data" ] && [ "$(ls -A "$POSTGRES_HOME/data" 2>/dev/null)" ]; then
        echo "Postgres já tem instância (data)."
    else
        echo "Primeira execução do Postgres. Inicializando cluster..."
        "$POSTGRES_HOME/bin/initdb" -U postgres -A trust -D "$POSTGRES_HOME/data"  # No Linux, é obrigatório passar o diretório -D para o initdb
    fi

    pkill -u $(whoami) -x postgres 2>/dev/null  # Usamos o $(whoami) para garantir que vamos matar apenas o Postgres do SEU usuário,
                                                # sem afetar um possível Postgres do sistema Linux.

    if command -v gnome-terminal >/dev/null 2>&1; then  # 4. Inicia em uma nova janela
        gnome-terminal --title="POSTGRES SERVER (Porta $PGPORT)" -- bash -c "
            echo 'ATENCAO'
            echo '---------------------------------------'
            echo 'Nao feche essa janela no X (fechar)! Siga as instrucoes abaixo.'
            echo 'O postgres estara rodando na porta $PGPORT'
            echo '---------------------------------------'
            read -p 'Pressione Enter para INICIAR o servidor...'
            
            # Start
            '$POSTGRES_HOME/bin/pg_ctl' -D '$POSTGRES_HOME/data' -l '$POSTGRES_HOME/logfile' start
            
            echo ''
            echo '>>> PARA FECHAR O BANCO DE DADOS CORRETAMENTE, CONTINUE ABAIXO <<<'
            read -p 'Pressione Enter para PARAR o Postgres e fechar a janela...'
            
            # Stop
            '$POSTGRES_HOME/bin/pg_ctl' -D '$POSTGRES_HOME/data' stop
        " &
    else  # Se não houver terminal gráfico (ex: rodando via SSH)
        echo "Iniciando Postgres em background..."
        "$POSTGRES_HOME/bin/pg_ctl" -D "$POSTGRES_HOME/data" -l "$POSTGRES_HOME/logfile" start
        echo "Para parar o banco manualmente depois, use:"
        echo "$POSTGRES_HOME/bin/pg_ctl -D $POSTGRES_HOME/data stop"
        sleep 4
    fi
}

## =======================================================
# SEÇÃO DE EXECUÇÕES
## =======================================================

# execuções do menu_instalar
exec_instextvscode
# executa o vscode indicando o caminho das extensões:
# mais em https://code.visualstudio.com/docs/editor/extension-marketplace#_common-questions
# mais em https://code.visualstudio.com/docs/editor/command-line#
# mais em https://code.visualstudio.com/docs/editor/command-line#_advanced-cli-options