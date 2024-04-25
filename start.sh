microk8s start

sleep 10

docker build -t cauapinheiro/cluster_computing_ckp02 .

docker push cauapinheiro/cluster_computing_ckp02

microk8s kubectl apply -f app-deployment.yaml

microk8s kubectl apply -f app-service.yaml
