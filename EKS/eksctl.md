# eksctl
```
eksctl get nodegroup --region=us-east-1 --cluster=eks_cluster_name

eksctl create nodegroup --config-file=eksctl-create-managed-nodegroup.yaml

eksctl delete cluster --region=us-east-1 --name=eks_cluster_name

eksctl delete nodegroup --region=us-east-1 --cluster=eks_cluster_name --name=nodegroup_name

eksctl utils update-legacy-subnet-settings  --region=us-east-1 --cluster new-eks
```