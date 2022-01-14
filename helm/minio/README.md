helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade --install minio bitnami/minio -n datastore -f value.yml --version 10.0.1