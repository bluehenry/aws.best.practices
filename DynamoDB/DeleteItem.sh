#!/bin/bash

TABLE_NAME='vehicle'

aws \
dynamodb \
delete-item \
--table-name ${TABLE_NAME} \
--key file://get_item.json \
--return-values ALL_OLD