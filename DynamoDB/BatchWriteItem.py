#!/usr/bin/env python
import boto3
import json

TABLE_NAME='vehicle'
client = boto3.client('dynamodb')

response = client.batch_write_item(
    RequestItems = {
    TABLE_NAME: [
          {
            "PutRequest": {
              "Item": {
                "device": {"S":"DR001"},
                "timestamp": {"N": "123"},
                "latitude": {"N": "888"},
                "longitude": {"N": "777"}
              }
            }
        }     
    ]
  }
)

print(json.dumps(response, sort_keys=True, indent=4))