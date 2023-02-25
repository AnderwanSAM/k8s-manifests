## Auditing 

```
kube-apiserver --audit-log-path=/var/log/kubernetes/audit.log --audit-policy-file=https://raw.githubusercontent.com/AnderwanSAM/k8s-manifests/main/deprecatedApis/audit-policy-fls-1-29.yaml --audit-webhook-config-file=/etc/kubernetes/audit-webhook.yaml
```

## Utilities, cli 

```
snap install kube-apiserver
```
