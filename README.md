Sample Docker setup for CS422

# Step -1
Install docker on your machine.

# Step 0
Build the images

```
make build
```

# Step 1
Run a simple hadoop wordcount example.
```
make run-hadoop
```

In this example we set up a two-node hadoop cluster and run a simple wordcount example

# Step 2
Run a hello world spark example
```
make run-spark
```

In the previous command we start a two node spark cluster. In order to submit a job to spark run the following:
```
spark/scripts/submit.sh
```


