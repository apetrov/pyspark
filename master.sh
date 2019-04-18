#!/bin/bash

export SPARK_MASTER_HOST=`hostname`

. "/app/spark/sbin/spark-config.sh"

. "/app/spark/bin/load-spark-env.sh"

mkdir -p $SPARK_MASTER_LOG

export SPARK_HOME=/app/spark

ln -sf /dev/stdout $SPARK_MASTER_LOG/spark-master.out

cd /app/spark/bin && /app/spark/sbin/../bin/spark-class org.apache.spark.deploy.master.Master \
--ip $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT >> $SPARK_MASTER_LOG/spark-master.out
