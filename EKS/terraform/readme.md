## vpc
kubernetes.io/cluster/eks-cluster-name = shared
id: vpc-092ba0eb39ea73c05

## subnet
kubernetes.io/cluster/eks-cluster-name = shared
kubernetes.io/role/internal-elb = 1

## subnet with node group
private_subnets_1 = ["subnet-1", "subnet-2"]

private_subnets_2 = ["subnet-3", "subnet-4"]

private_subnets_3 = ["subnet-5", "subnet-6"]

private_subnets_4 = ["subnet-7", "subnet-8"]

## delete one node group
> terraform destroy -target=module.eks-node-group-1

## apply new changes
> terraform apply

## attach ci label to the node
> kubectl label nodes <node-name> <label-key>=<label-value>
