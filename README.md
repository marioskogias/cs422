Sample Docker setup for CS422

# Step -1
Install docker on your machine.
Depending on your platform you can follow the instructions [here](https://docs.docker.com/install/)

# Step 0
Build the images

```
make build
```

# Step 1
Start the cluster

We defined a two-node cluster running HDFS and Spark. The master serves also as a slave.

```
docker-compose -f cs422-pr2/docker-compose.yml up
```

You can add more slaves by editing the config/slaves file and run instead:
```
docker-compose -f cs422-pr2/docker-compose.yml up --scale slave=2
```

To delete the cluster and start over run:
```
docker-compose -f cs422-pr2/docker-compose.yml down
```

# Step 2
Run a spark job

There are two ways to run a Spark job:

1. Within the master container the script ./scripts/run-job.sh
2. From you local machine and spark installation submit job to --master spark://localhost:7077 using spark-submit


# Shared directories
Every container shares the following directories with the host:

1. jars: You can put your exercise jars there
2. scripts: Includes any script that you might need to configure the containers or run jobs


# Port forwarding
You can access the following ports from the master container in your local machine:
* 50075
* 50070
* 8080
* 7077
