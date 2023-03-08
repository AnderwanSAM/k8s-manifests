echo "=============================================="
echo "Create audit directory"
mkdir /etc/kubernetes/audit
echo "=============================================="
echo "Create sample audit file"
sudo  wget https://raw.githubusercontent.com/AnderwanSAM/k8s-manifests/main/deprecatedApis/sample-no-audit.yaml 
cp sample-no-audit.yaml  /etc/kubernetes/audit/policy.yaml
echo "=============================================="
echo "current audit file content"
cat /etc/kubernetes/audit/policy.yaml
echo "=============================================="
echo "moving to kubernetes manifests directory" 
cd /etc/kubernetes/manifests/
pwd
echo "=============================================="
echo "Current manifest"
cat kube-apiserver.yaml
echo "=============================================="
echo "Modifying the manifest"
yq eval '.spec.containers[0].command += ["--audit-policy-file=/etc/kubernetes/audit/policy.yaml", "--audit-log-path=/etc/kubernetes/audit/audit.log", "--audit-log-maxsize=500", "--audit-log-maxbackup=3"] ' kube-apiserver.yaml > test.yaml &&  yq eval '.spec.containers[0].volumeMounts +=  [{"mountPath": "/etc/kubernetes/audit", "name": "audit"}] ' test.yaml >test2.yaml &&  yq eval '.spec.containers[0].volumeMounts' test2.yaml && cat test2.yaml && yq eval '.spec.volumes += [{"hostPath": {"path": "/etc/kubernetes/audit", "type": "DirectoryOrCreate"}, "name": "audit"}]' test2.yaml > test3.yaml && yq eval '.spec.volumes' test3.yaml
cp test3.yaml kube-apiserver.yaml
echo "=============================================="
echo "Current manifest" 
cat kube-apiserver.yaml 
echo "=============================================="
echo "=============================================="



