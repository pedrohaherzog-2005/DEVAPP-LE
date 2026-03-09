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

export downputty="https://the.earth.li/~sgtatham/putty/latest/putty-0.81.tar.gz"

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
# variáveis pré-configuradas, não sendo necessário configurá-las no Linux.
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
export PUTTY_HOME="$DEVAPP_HOME/putty"
export POSTGRES_HOME="$DEVAPP_HOME/pgsql"
export GRADLE_HOME="$DEVAPP_HOME/gradle"

export DOTNET_HOME="$DEVAPP_HOME/dotnet"
export DOTNET_ROOT="$DEVAPP_HOME/dotnet"

export PGDATA="$POSTGRES_HOME/data"
export PGDATABASE="postgres"
export PGUSER="postgres"
export PGPORT="5439"
export PGLOCALEDIR="$POSTGRES_HOME/share/locale"

# Altera o PATH temporariamente
export PATH="$DEVAPP_HOME:$JAVA_HOME/bin:$NODE_HOME/bin:$VSCODE_HOME/bin:$POSTGRES_HOME/bin:$PATH"
