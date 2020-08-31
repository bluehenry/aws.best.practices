#!/usr/bin/env python
import boto3
import json

TABLE_NAME='vehicle'
INDEX_NAME='device-timestamp-index'

client = boto3.client('dynamodb')

response = client.scan(
    TableName = TABLE_NAME,
    IndexName = INDEX_NAME,
    ReturnConsumedCapacity = 'INDEXES'
)

print(json.dumps(response['Items'], indent=4))
