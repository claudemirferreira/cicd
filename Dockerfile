# Atualize o sistema e instale as dependências necessárias
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y gnupg2 && \
    apt-get install -y software-properties-common

# Adicione o repositório com o JDK 21
RUN add-apt-repository ppa:linuxuprising/java

# Atualize novamente e instale o JDK 21
RUN apt-get update && \
    echo oracle-java21-installer shared/accepted-oracle-license-v1-2 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java21-installer

# Configuração do ambiente Java
ENV JAVA_HOME /usr/lib/jvm/java-21-oracle
ENV PATH $PATH:$JAVA_HOME/bin

# Verifique a instalação do Java
RUN java -version

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app
