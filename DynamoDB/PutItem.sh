#!/bin/bash

# PutItem: Creates a new item, or replaces an old item with a new item

TABLE_NAME='vehicle'

aws dynamodb \
put-item \
--table-name ${TABLE_NAME} \
--item file://put_item.json \
--return-value ALL_OLD