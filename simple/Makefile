#
# Makefile for testing with go and docker-compose
#
usage:
	@echo "usage: make [run]"

run r:
	@echo "> make (run) [1|2|3]"
r1:
	docker-compose run app go env
r2:
	docker-compose run app go run main.go
r3:
	docker-compose up

open page:
	open https://www.firehydrant.io/blog/developer-a-go-app-with-docker-compose

