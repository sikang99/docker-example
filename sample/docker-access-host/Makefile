#
# Makefile for testing docker network access
#
NAME=demo
IMAGE=docker-access-host
# ------------------------------------------------------------------------
usage:
	@echo "usage: make [docker|nginx]"
# ------------------------------------------------------------------------
docker d:
	@echo "> make (docker) [build|run|kill|clean|clobber]"

docker-build db:
	docker build -t $(IMAGE):demo .
	docker images $(IMAGE)

docker-run dr:
	docker run --rm --name $(NAME) $(IMAGE):demo

docker-kill dk:
	docker kill $(NAME)
	#docker stop $(NAME) && docker rm $(NAME)

docker-clean dc::
	docker rm $(docker ps -a -q -f status=exited)
	docker system prune -f

docker-clobber:
	-docker system prune -f
	-docker kill nginx
	-docker kill $(NAME) 
	-docker rmi $(IMAGE):demo
# ------------------------------------------------------------------------
nginx n:
	@echo "> make (nginx) [run|test]"

niginx-run nr:
	docker run -d -p 8888:80 --rm --name nginx nginx

niginx-test nt:
	curl localhost:8888
# ------------------------------------------------------------------------
git-update gu:
	cd ../..; make gu


