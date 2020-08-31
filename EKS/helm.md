## Install helm v3 on local laptop
* [Installing helm](https://helm.sh/docs/intro/install/)
* [helm Quickstart Guide](https://helm.sh/docs/intro/quickstart/)
```bash
brew install helm
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm search repo stable
```

```
helm list -a 
helm get values release-name
helm delete release-name
helm install -f filebeat-helm-7.4.yaml filebeat stable/filebeat
```