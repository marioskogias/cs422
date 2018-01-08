build: build-base build-hadoop build-hadoop-master build-spark

build-base:
	docker build -t diasbase base

build-hadoop:
	docker build -t diashadoop hadoop

build-hadoop-master:
	docker build -t diashadoop-master hadoop/hadoop-master

build-spark:
	docker build -t diasspark spark

run-hadoop:
	docker-compose -f hadoop/docker-compose.yml up

run-spark:
	docker-compose -f spark/docker-compose.yml up
	spark/scripts/submit.sh

