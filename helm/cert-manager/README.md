helm repo add jetstack https://charts.jetstack.io
helm repo update

helm upgrade --install cert-manager jetstack/cert-manager -f value.yml --version v1.6.1 

kubectl apply -f cloudflare-api-key.yml
kubectl apply -f letsencrypt-production.yml
kubectl apply -f wildcard.yml