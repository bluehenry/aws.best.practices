#！/usr/bin/env python
import boto3
import json

TABLE_NAME = 'vehicle'

client = boto3.client('dynamodb')

response = client.batch_get_item(
    RequestItems = {
        TABLE_NAME: {
            'Keys': [
                {'device': {'S': 'DR001'}},
                {'device': {'S': 'DR002'}}
            ]
        }
    }
)

print(json.dumps(response['Responses'], indent=4))