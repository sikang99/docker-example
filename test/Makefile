#
# Makefile for CMD and ENTRYPOINT
#
NAME=test
IMAGE=test/image
# --------------------------------------------------------------------
usage:
	@echo "usage: make [docker]"

docker d:
	@echo "> make (docker) [build|run|test|clean]"

docker-build db:
	docker build -t $(IMAGE) .

docker-run dr:
	docker run -it --rm --name $(NAME) $(IMAGE)

docker-test dt:
	docker run -it --rm --name $(NAME) $(IMAGE) /etc/resolv.conf

docker-clean dc:
	docker system prune -f
	docker rmi $(IMAGE)
# --------------------------------------------------------------------
git-update gu:
	cd ..; make gu
