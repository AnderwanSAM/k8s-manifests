# Tests

 kubectl logs kube-apiserver-minikube -n kube-system | grep audit.k8s.io/v1 | grep /apis/flowcontrol.apiserver.k8s.io/v1beta2
