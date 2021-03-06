#
# Makefile for wasm-example
#
.PHONY: usage edit build clean git
#----------------------------------------------------------------------------------
usage:
	@echo "make [edit|build]"
#----------------------------------------------------------------------------------
edit e:
	@echo "make (edit:e) [history]"
edit-history eh:
	vi HISTORY.md
#----------------------------------------------------------------------------------
build b:
	@echo "no action"
#----------------------------------------------------------------------------------
clean:
	rm -f bin/*
	docker system prune
#----------------------------------------------------------------------------------
run r:
	@echo "make (run:r) [test]"
run-test rt:
	go run main.go
#----------------------------------------------------------------------------------
git g:
	@echo "make (git:g) [update|store]"
git-update gu:
	git add .
	git commit -a -m "update contents"
	git push
git-store gs:
	git config credential.helper store
#----------------------------------------------------------------------------------

