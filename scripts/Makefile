#
# Makefile for checking docker image tag
#
IMAGE=agilertc/cojam
VERSION=0.2.99

usage:
	@echo "usage: make [check]"

check:
	@wget -q https://registry.hub.docker.com/v1/repositories/$(IMAGE)/tags -O - | jq -r '.[] | select(.name=="$(VERSION)") | .name'
