#/bin/sh

# You need to have set your $LOCAL_SPARK variable pointing to your local spark installation

$LOCAL_SPARK/bin/spark-submit --class HelloWorld --master spark://localhost:7077 `git rev-parse --show-toplevel`/spark/jars/HelloWorld-assembly-1.0.jar
