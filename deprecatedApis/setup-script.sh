mkdir /etc/kubernetes/audit
sudo  wget https://raw.githubusercontent.com/AnderwanSAM/k8s-manifests/main/deprecatedApis/sample-no-audit.yaml 
cp sample-no-audit.yaml  /etc/kubernetes/audit/policy.yaml
cd /etc/kubernetes/manifests/
echo "======================="
echo "sample-no-audit content"
echo "======================="
cat /etc/Kubernetes/audit/policy.yaml
echo "======================="
pwd 



