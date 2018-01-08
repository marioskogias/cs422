all: build-base

build-base:
	docker build -t diasbase base
