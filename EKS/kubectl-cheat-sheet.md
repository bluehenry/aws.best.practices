# kubectl Cheat Sheet
* [kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
## Get resources
```bash
kubectl get nodes 
kubectl get namespaces
kubectl -n namespace get all
kubectl --all-namespaces get deployment
kubectl -n namespace get svc 
kubectl -n namespace get pods
kubectl -n namespace get daemonsets
```

## Delete resource
```bash
kubectl -n namespace delete deployment --all
kubectl -n namespace delete services service_name
kubectl -n namespace delete pods pod_name
```

# Apply appliction
```
kubectl -n namespace apply -f deployment.yml
```

## Trouble shooting
```bash
kubectl -n namespace logs -f pods_name
kubectl -n namespace logs -f deployment.apps/deployment_name
```

# Login pod
```
kubectl -n namespace exec -it pod_name -- /bin/bash
```

## ConfigMap
```bash
kubectl -n kube-system get configmap coredns
kubectl -n kube-system describe configmap coredns
kubectl -n kube-system create configmap -f filename
kubectl -n kube-system edit configmap coredns
kubectl -n kube-system delete configmap coredns
kubectl -n kube-system describe configmap/aws-auth
```

## Network  trouble shooting
```
kubectl run busybox --restart=Never --image=busybox:1.28 -- sleep 3600
kubectl exec busybox -- nslookup domain-name
kubectl exec busybox -- telnet domain-name port

Kubectl -n namespace apply -f dnsutils.yml
kubectl exec dnsutils-84476dc46f-bs8np -- nslookup www.google.com
kubectl exec dnsutils-84476dc46f-bs8np -- curl www.google.com
```

## Set CoreDNS ConfigMap for internal subdomain
Run the following command
```bash
kubectl -n kube-system edit configmap coredns
```
Add the following setting 'Corefile'. Take coredns-configmap.yml as an example.
```bash
    subdomain {
    forward . 10.251.64.70
    }
```

## DNS
CoreDNS is now running in the cluster as a cluster-service. It can be tested with the following:
```
kubectl edit configmaps kube-dns -o yaml --namespace kube-system
kubectl run -it --rm --restart=Never --image=infoblox/dnstools:latest dnstools
/ # host kubernetes
```
