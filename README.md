# k8s-manifests

This repo contains Kubernetes manifests that can be used for testing and automated actions. 


Deprecated apis contains manifests using deprecated apis as of k8s 1.20+


## On demand Kubernetes cluster 

https://killercoda.com/playgrounds/scenario/kubernetes

## How to use 

Navigate to the manifest you are interested in and click on raw (top right) to obtain the absolute path. 

## Deprecated apis

### Migration 

https://kubernetes.io/docs/reference/using-api/deprecation-guide/

### Detection 

Propositions : https://kubernetes.io/blog/2020/09/03/warnings/#deprecation-warnings

Quick check : 

Install prom2json : 

```
GO111MODULE=on go install github.com/prometheus/prom2json/cmd/prom2json@latest
```

then run : 
```
kubectl get --raw /metrics | prom2json | jq ' .[] | select(.name=="apiserver_requested_deprecated_apis").metrics[].labels '
```
