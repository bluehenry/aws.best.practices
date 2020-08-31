# Getting Started with Amazon EKS
Take [Getting Started with Amazon EKS](https://docs.aws.amazon.com/eks/latest/userguide/getting-started.html) as a reference. 

# ekctl
* Use eksctl to create EKS cluster [Getting Started with eksctl](https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html)

## Generate Amazon EC2 key pairs
* Generate [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) and save it to access EKS EC2 nodes later.
* Retrieving the public key for your key pair on Linux
```bash
chmod 400 my-key-pair.pem
ssh-keygen -y -f /path_to_key_pair/my-key-pair.pem
```
# Installing aws-iam-authenticator
[Amazon EKS uses IAM to provide authentication to your Kubernetes cluster through the AWS IAM authenticator for Kubernetes](https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html)

# Switch EKS Cluster
```
aws eks --region us-east-1 update-kubeconfig --name eks-note
```

