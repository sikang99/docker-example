#
# Makefile for docker-compose template
#
#-----------------------------------------------------------------
usage:
	@echo "make [build|docker|compose|page]"
#-----------------------------------------------------------------
docker d:
	@echo "> make (docker) [edit|build|run|kill|clean]"
docker-edit de:
	vi Dockerfile
docker-build db:
	docker build -t goapp . -f Dockerfile
	docker images goapp
docker-run dr:
	docker run -it --rm --name goapp goapp
	docker ps
docker-kill dk:
	docker stop goapp
	docker rm goapp
docker-clean dc:
	docker system prune
#-----------------------------------------------------------------
compose c:
	@echo "> make (compose) [edit|build|up|down]"
compose-edit ce:
	vi docker-compose.yml
compose-build cb:
	docker-compose build
compose-up cu:
	docker-compose up -d
cud:
	docker-compose -f docker-compose-dev.yml up -d
cup:
	docker-compose -f docker-compose-prod.yml up -d
compose-down cd:
	docker-compose down
#-----------------------------------------------------------------
open page:
	xdg-open https://medium.com/raidboss/advanced-docker-compose-template-for-golang-8dde3f5ed595
#-----------------------------------------------------------------



