import boto3


def main():
    # Create a client with Kinesis
    kinesis_client = boto3.client('kinesis', 'us-east-1')

    stream_name = 'stream-name'

    response = kinesis_client.put_records(
        Records=[
            {
                'Data': b'A testing message',
                'PartitionKey': '1'
            },
        ],
        StreamName=stream_name
    )

    print(response)


if __name__ == "__main__":
    main()