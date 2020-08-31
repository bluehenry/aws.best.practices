#!/usr/bin/env python3
import boto3
import json

TABLE_NAME='vehicle'

client = boto3.client('dynamodb')

response = client.get_item(
    TableName = TABLE_NAME,
    Key = {'device': {'S': 'DR001'}})

print(json.dumps(response['Item'], indent=4))