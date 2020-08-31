#!/usr/bin/env python
import boto3
import json

TABLE_NAME='vehicle'

client = boto3.client('dynamodb')

response = client.delete_item(
    TableName = TABLE_NAME,
    Key = {'device': {'S': 'DR003'}},
    ReturnValues = 'ALL_OLD'
)

print(json.dumps(response, indent=4))