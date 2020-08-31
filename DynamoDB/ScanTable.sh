#!/bin/bash

TABLE_NAME='vehicle'
INDEX_NAME='device-timestamp-index'

aws \
dynamodb \
scan \
--table-name ${TABLE_NAME} \
--index-name ${INDEX_NAME} \
--return-consumed-capacity INDEXES