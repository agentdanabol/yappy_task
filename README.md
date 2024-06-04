# Тестовое в Yappy

Развернуть локально в docker:
* docker-compose up -d

Настроить через ansible:
1. Устанавливаем python и ansible
2. Прокидываем ssh ключ на виртуальную машину
3. Задаем переменные в файле: ansible/inventory/group_vars/yappy.yml
4. Задаем хосты для установки в файле: ansible/inventory/hosts
5. Запускаем: sh ansible/deploy.sh


Задеплоить в k8s:

1. Разворачиваем кластер (minikube)
3. helm install yappy helm
