# Тестовое в Yappy

Как развернуть локально в docker:
* docker-compose up -d

Как настроить через ansible:
1. Устанавливаем python, ansible и docker
2. Задаем переменные и хосты
3. sh ansible/deploy.sh


Как задеплоить в k8s:

1. Разворачиваем кластер (minikube)
2. helm install yappy helm
