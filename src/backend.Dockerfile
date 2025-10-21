FROM openjdk:21

WORKDIR /app

# Crie diretórios necessários
RUN mkdir -p data/tomsc \
    && mkdir -p data/temp_files \
    && mkdir -p data/results \
    && mkdir -p data/graphs \
    && mkdir -p data/interaction

# Copie os arquivos da aplicação
COPY back/tomicroservice-1.0.0.jar app.jar
COPY back/application.yml application.yml

EXPOSE 8080

# Comando de inicialização simplificado
CMD ["java", "-jar", "app.jar"]
