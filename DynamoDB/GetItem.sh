#!/bin/bash

TABLE_NAME='vehicle'

aws dynamodb \
get-item \
--table-name ${TABLE_NAME} \
--key file://get_item.json \
--return-consumed-capacity TOTAL