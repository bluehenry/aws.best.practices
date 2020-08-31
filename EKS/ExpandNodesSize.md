# Expand EKS nodes root storage size
* [How do I expand the Amazon EBS root volume of my Amazon EC2 Windows instance](https://aws.amazon.com/premiumsupport/knowledge-center/expand-ebs-root-volume-windows/)
* [Extending a Linux file system after resizing a volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recognize-expanded-volume-linux.html)

  * Connect to a EC2 instance (using ec2-user as username)
  * Extending a partition
```
   run lsblk in terminal to list the volumes
   run sudo growpart /dev/<disk-name> 1 (nvme0n1 is the default disk name)to extend disk partition  
   run lsblk to check if the partition size updated
```
  * Extending XFS file system (if the file system is not XFS please refer to AWS docs above)
```   
   run df -h to list existing file system  
   run sudo xfs_growfs -d / to extend root 
   run df -h to confirm the change
```
* Stop and Start Kubelet (optional if ephemeral-storage didn’t change when run kubectl describe node <node-name> )
  * To update the configuration to kubelet, in EC2 instance terminal
```
  run sudo systemctl stop kubelet and 
  run sudo systemctl start kubelet to refresh kube
```