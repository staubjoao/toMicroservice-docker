FROM openjdk:21

# Crie diretórios necessários
RUN mkdir -p /app/data/tomsc \
    && mkdir -p /app/data/temp_files \
    && mkdir -p /app/data/results \
    && mkdir -p /app/data/graphs \
    && mkdir -p /app/data/interaction

COPY back/tomicroservice-1.0.0.jar app.jar
COPY back/application.yml application.yml

COPY back/application.yml /tmp/

COPY back/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]