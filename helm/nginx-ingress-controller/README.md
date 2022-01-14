helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm upgrade --install nginx-controller ingress-nginx/ingress-nginx -f value.yml --version 4.0.13 
