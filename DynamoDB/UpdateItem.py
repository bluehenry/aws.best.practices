#!/usr/bin/env python3

import boto3
import json

TABLE_NAME='vehicle'

client = boto3.client('dynamodb')

device_numbers = ['DR001', 'DR002', 'DR003']

for device_number in device_numbers:
    response = client.update_item(
        TableName = TABLE_NAME,
        Key = {'device': {'S': '{}'.format(device_number)}},
        UpdateExpression = 'SET #la = :la',
        ExpressionAttributeValues = {':la': {'N': '666'}},
        ExpressionAttributeNames = {'#la': 'latitude'},
        ReturnValues = 'UPDATED_OLD'
        )

    print(json.dumps(response['Attributes'], indent=4))