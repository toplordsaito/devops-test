helm repo add harbor https://helm.goharbor.io
helm repo update 
helm upgrade --install harbor harbor/harbor -n devops -f value.yml --version 1.8.1
