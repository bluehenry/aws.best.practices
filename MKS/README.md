# Amazon MSK
[What Is Amazon MSK?](https://docs.aws.amazon.com/msk/latest/developerguide/what-is-msk.html)

Amazon MSK is a new AWS streaming data service that manages Apache Kafka infrastructure and operations, making it easy for developers and DevOps managers to run Apache Kafka applications on AWS without the need to become experts in operating Apache Kafka clusters.

[Getting Started Using Amazon MSK](https://docs.aws.amazon.com/msk/latest/developerguide/getting-started.html)

```
aws kafka list-clusters
aws kafka describe-cluster --region us-east-1 --cluster-arn "ClusterArn"
aws kafka get-bootstrap-brokers --region us-east-1 --cluster-arn "ClusterArn"
```