#!/usr/bin/env bash

#cd /code/bigdl-fork/insightedge
#mvn clean package

DATA_DIR="/code/bigdl-fork/data/textclassification/20_newsgroup" # only newsgroups, don't need GloVe here
FILES_PER_BATCH=1
PAUSE_BETWEEN_BATCHES=2 # in seconds

scala -cp ./target/insightedge-0.2.0-jar-with-dependencies.jar \
        io.insightedge.bigdl.kafka.Producer \
        ${DATA_DIR} ${FILES_PER_BATCH} ${PAUSE_BETWEEN_BATCHES}