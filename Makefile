all: build
build:
		docker build . -t docker-example
run:
		docker run -d -p 9292:9292 docker-example
