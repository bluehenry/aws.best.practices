#!/usr/bin/env python3
import boto3
import json

TABLE_NAME='vehicle'

client = boto3.client('dynamodb')

response = client.put_item(
    TableName = TABLE_NAME,
    Item = {
        'device': {'S': 'DR003'},
        'timestamp': {'N': '1557822578'},
        'latitude': {'N': '1557822578'},
        'longitude': {'N': '1557822578'}
    },
    ReturnValues = 'ALL_OLD'
)

print(json.dumps(response, indent=4))