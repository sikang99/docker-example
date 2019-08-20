#
# Makefile for testing restart option of docker-compose
#
usage:
	@echo "usage: make [compose]"

compose:
	@echo "> make (compose) [up|down|ps]"
compose-up cu:
	docker-compose up -d -t 0
compose-down cd:
	docker-compose down
compose-ps cp:
	docker-compose ps

test t:
	@echo "> make (test) [1|2|3]"
t1:
	docker container prune
	docker-compose -f docker-compose-unless.yml up -d -t 0
	docker ps -a
t2:
	docker-compose -f docker-compose-always.yml up -d -t 0
	docker ps -a
t3:
	docker-compose -f docker-compose-init.yml up -d -t 0
	docker ps -a
	docker exec -it restart_alpine_1 /bin/sh
	docker-compose down


