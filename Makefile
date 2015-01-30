DOCKER_IMAGE=zvelo/zvelo-grafana

all: image

image:
	docker build -t $(DOCKER_IMAGE) .
