# ElasticSearch Setup

## Create ElasticSearch v7.4 on AWS manually

## Setup filebeat in EKS
* Replace ElasticSearch VPC endpoint in filebeat-helm-7.4.yaml 
```bash
helm install -f filebeat-helm-7.4.yaml filebeat stable/filebeat
```

## Create index in Kibana