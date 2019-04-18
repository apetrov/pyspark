#!/bin/bash

export SPARK_HOME=/app/spark

cd ${BUILD_HOME}

PYSPARK_PYTHON=python3 /app/spark/bin/spark-submit \
  --master ${SPARK_MASTER} \
  --py-files ${SPARK_CODE} --job ${SPARK_JOB}
