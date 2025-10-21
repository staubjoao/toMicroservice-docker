FROM openjdk:21

# Crie diretórios necessários
RUN mkdir -p /app/data/tomsc \
    && mkdir -p /app/data/temp_files \
    && mkdir -p /app/data/results \
    && mkdir -p /app/data/graphs \
    && mkdir -p /app/data/interaction

# Copie os arquivos da aplicação
COPY back/tomicroservice-1.0.0.jar app.jar
COPY back/application.yml /application.yml

EXPOSE 8080

# Comando de inicialização
CMD cp /application.yml ./ && java -jar app.jar
