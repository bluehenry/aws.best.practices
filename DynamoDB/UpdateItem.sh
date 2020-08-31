#!/bin/bash

TABLE_NAME='vehicle'

aws dynamodb \
update-item \
--table-name ${TABLE_NAME} \
--key file://update_item_key.json \
--update-expression="SET latitude = :la" \
--expression-attribute-values file://update_values.json