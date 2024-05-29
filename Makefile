# Docker Compose Configuration
COMPOSE_FILE := srcs/docker-compose.yml

.PHONY: help build up stop down


run:
	mkdir -p /home/bill/data/wordpress
	sudo chmod 777 /Users/bill/data/wordpress
	mkdir -p /home/bill/data/mariadb
	sudo chmod 777 /Users/bill/data/mariadb
	docker-compose -f $(COMPOSE_FILE) up --build

stop:
	docker-compose -f $(COMPOSE_FILE) stop

down:
	docker-compose -f $(COMPOSE_FILE) down -v

mariadb:
	docker exec -it srcs_mariadb /bin/bash