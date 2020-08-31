apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig

metadata:
  name: eks_cluster_name
  region: us-east-1

vpc:
  subnets:
    private:
      us-east-1c: { id: subnet-id-1}
      us-east-1d: { id: subnet-id-2}

managedNodeGroups:
  - name: node_group_name
    minSize: 2
    maxSize: 6
    instanceType: t2.small
    desiredCapacity: 2
    privateNetworking: true
    ssh: # use existing EC2 key
      publicKeyName: key_name