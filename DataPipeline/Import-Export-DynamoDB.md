# Export Data from DynamoDB
AWS instructions is : https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-importexport-ddb-part1.html

## How can I use Data Pipeline to back up a DynamoDB table to an S3 bucket that is in a different account? 
https://aws.amazon.com/premiumsupport/knowledge-center/data-pipeline-account-access-dynamodb-s3/

## Increase DynamoDB read capacity units before export/import.
Estimated export hours  = records account / RCU (Read Capacity Units) / 60 seconds / 60 minutes
Estimated export hours  = records account / WCU (write Capacity Units) / 60 seconds / 60 minutes

Remember change back capacity after exporting. It costs money $$$$!


## Need to do the following changes in Data Pipeline: 
### Parameters
* myDDBReadThroughputRatio = 0.90 or higher (NOTE: a known bug - must be 0.90 not 0.9)

### EmrCluster Node
* SubnetID = *********
* Core Instance Count = 2 or higher
* Core Instance Type = m5.xlarge or other
* Master Instance Type = m5.xlarge or other

### EmrActivity Node
* Step = s3://dynamodb-dpl-#{myDDBRegion}/emr-ddb-storage-handler/4.11.0/emr-dynamodb-tools-4.11.0-SNAPSHOT-jar-with-dependencies.jar,org.apache.hadoop.dynamodb.tools.DynamoDBExport,-Dfs.s3.canned.acl=BucketOwnerFullControl,#{output.directoryPath},#{input.tableName},#{input.readThroughputPercent}
* Before Running = false

### Slow export/import
If DynamoDB table consumed read/write  is far lower than your expected. Contract AWS support for trouble-shooting. 

For instance some tables' key distribution are not even and it makes export very slow. Try increase instance to 10 or decrease myDDBSegments to 2.