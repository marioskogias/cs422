all: build-base build-hadoop build-hadoop-master

build-base:
	docker build -t diasbase base

build-hadoop:
	docker build -t diashadoop hadoop

build-hadoop-master:
	docker build -t diashadoop-master hadoop/hadoop-master

run-hadoop:
	docker-compose -f hadoop/docker-compose.yml up
