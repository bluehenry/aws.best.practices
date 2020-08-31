import boto3


def main():
    # Create a client with Kinesis
    kinesis_client = boto3.client('kinesis', 'us-east-1')

    stream_name = 'stream-name'
    shard_count = '1'

    response = kinesis_client.describe_stream(
        StreamName=stream_name,
        Limit=123,
        ExclusiveStartShardId=shard_count
    )
    shards = response['StreamDescription']['Shards']

    for shard in shards:
        shard_id = shard['ShardId']

        response = kinesis_client.get_shard_iterator(
            StreamName=stream_name,
            ShardId=shard_id,
            ShardIteratorType='LATEST'
        )

        # response = kinesis_client.get_shard_iterator(
        #     StreamName=stream_name,
        #     ShardId=shard_id,
        #     ShardIteratorType='AFTER_SEQUENCE_NUMBER',
        #     StartingSequenceNumber='49603910651177166376972303289271734151137697110505291778',
        # )

        shard_iterator = response['ShardIterator']

        response = kinesis_client.get_records(
            ShardIterator=shard_iterator,
            Limit=100
        )

        with open(f'{shard_id}.txt', 'w') as f:
            f.write(str(response))


if __name__ == "__main__":
    main()