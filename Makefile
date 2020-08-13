all: Dockerfile
	docker build . -t mprokopov/oxid-grunt-runner

run: Dockerfile
	docker run --rm -it mprokopov/oxid-grunt-runner bash

push: Dockerfile
	docker push mprokopov/oxid-grunt-runner
