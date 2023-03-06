# Quick commands and useful links 

## Auditing 

```
kube-apiserver --audit-log-path=/var/log/kubernetes/audit.log --audit-policy-file=https://raw.githubusercontent.com/AnderwanSAM/k8s-manifests/main/deprecatedApis/audit-policy-fls-1-29.yaml --audit-webhook-config-file=/etc/kubernetes/audit-webhook.yaml
```

Enable auditing : 

https://mosnotes.com/2021/03/13/k8s-enabling-auditing-logs-step-by-step/ 
 
 or
 
 https://signoz.io/blog/kubernetes-audit-logs/

Configuration : 

https://kubernetes.io/docs/reference/config-api/apiserver-audit.v1/#audit-k8s-io-v1-Policy

Minikube : 

https://minikube.sigs.k8s.io/docs/tutorials/audit-policy/

## Utilities, cli 

```
snap install kube-apiserver
```

## Commands 

### Set up auditing 

```
mkdir -p ~/.minikube/files/etc/ssl/certs
```

```
touch  ~/.minikube/files/etc/ssl/certs/audit-policy.yaml
```

```
minikube start --extra-config=apiserver.audit-policy-file=/etc/ssl/certs/audit-policy.yaml --extra-config=apiserver.audit-log-path=-
```

```
kubectl logs kube-apiserver-minikube -n kube-system | grep audit.k8s.io/v1 | grep /apis/flowcontrol.apiserver.k8s.io/v1beta2 
```

### Kube api server 

Get current api server pod 

```
kubectl get pods -n kube-system | grep kube-apiserver
```

Delete 
```
kubectl delete pod <kube-apiserver-pod-name> -n kube-system

```