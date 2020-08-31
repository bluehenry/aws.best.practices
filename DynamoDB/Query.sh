#!/bin/bash

TABLE_NAME='vehicle'
INDEX_NAME='device-timestamp-index'

aws \
dynamodb \
query \
--table-name ${TABLE_NAME} \
--index-name ${INDEX_NAME} \
--key-conditions '{
        "device":{
            "ComparisonOperator":"EQ",
            "AttributeValueList": [ {"S": "DR001"} ]
        }
     }'