kubectl apply -f https://raw.githubusercontent.com/AnderwanSAM/k8s-manifests/main/deprecatedApis/flow_schema_1_29.yaml
wget https://github.com/rikatz/kubepug/releases/download/v1.4.0/kubepug_linux_amd64.tar.gz
tar -zxvf kubepug_linux_amd64.tar.gz
chmod +x kubepug
cp kubepug /bin/kubepug
