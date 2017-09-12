.phony: build run

build:
	docker build . -t jupyter_docker

run:
	docker run --rm --name jupyter_docker -p 9999:9999 --mount type=bind,source=$(PWD)/notebooks,destination=/notebooks jupyter_docker
