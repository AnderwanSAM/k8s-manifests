kubectl apply -f https://raw.githubusercontent.com/AnderwanSAM/k8s-manifests/main/deprecatedApis/flow_schema_1_29.yaml
wget https://github.com/FairwindsOps/pluto/releases/download/v5.15.1/pluto_5.15.1_linux_amd64.tar.gz 
tar -zxvf pluto_5.15.1_linux_amd64.tar.gz
chmod +x pluto
cp pluto /bin/pluto
git clone https://github.com/HariSekhon/DevOps-Bash-tools bash-tools
cd bash-tools
./pluto_detect_kubectl_dump_objects.sh
