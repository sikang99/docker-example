#
# Makefile for testing docker networking
#
NAME=demo
IMAGE=docker-access-host

docker d:
	@echo "> make (docker) [build|run|kill]"

docker-build db:
	docker build -t docker-access-host:demo .

docker-run dr:
	docker run --rm --name $(NAME) docker-access-host:demo

docker-kill dk:
	docker stop $(NAME) && docker rm $(NAME)
	#docker kill $(NAME)

docker-clobber:
	docker system prune -f
	docker rmi docker-access-host:demo

niginx-start ns::
	docker run -d -p 8888:80 --rm nginx
	curl localhost:8888

