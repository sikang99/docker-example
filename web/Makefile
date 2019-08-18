#
# Makefile for go-docker-webserver
#
usage:
	@echo "usage: make [install|build|zip|docker|compose]"

install i:
	brew install upx

build b:
	go build -installsuffix 'static' -ldflags="-s -w" -o web main.go
zip z:
	upx --brute web
clean:
	rm -f web*

docker d:
	@echo "> make (docker) [build|run|kill]"
docker-build db:
	docker build -t go-docker-webserver:latest .
docker-run dr:
	docker run --rm -p "8080:8080" go-docker-webserver
docker-kill dk:
	docker stop 
docker-ps dp:
	docker ps

compose c:
	@echo "> make (compose) [build|run|kill|ps]"
compose-build cb:
	docker-compose build
compose-run cr:
	docker-compose up
compose-kill ck:
	docker-compose down
compose-ps cp:
	docker-compose ps


