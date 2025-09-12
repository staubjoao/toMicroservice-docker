DOCKER_DIR = src

.PHONY: up down build logs clean restart

up:
	cd $(DOCKER_DIR) && docker-compose up --build -d

down:
	cd $(DOCKER_DIR) && docker-compose down

help:
	@echo "Comandos disponíveis:"
	@echo "  make up       - Inicia containers em background"
	@echo "  make down     - Para e remove containers"