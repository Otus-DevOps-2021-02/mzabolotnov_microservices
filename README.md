# mzabolotnov_microservices
mzabolotnov microservices repository

HW21 kubernetes-3
=========================================

1. Установлен Ingress Controller
2. Настройка Ingress на прием только HTTPS трафика
3. Настроил Network Policy
4. Создан ресурс дискового хранилища в YC, добавили подключил к кластеру в виде PersistentVolume и подключили к деплою mongo
5. ui-secret описан в виде манифеста ui-secret.yml

![image](https://user-images.githubusercontent.com/80415069/125756032-f8b2bba4-6900-413e-a078-9a24fc0f3603.png)
![image](https://user-images.githubusercontent.com/80415069/125756276-f1c2445e-ceea-459b-8cac-8f49e18783cd.png)


HW kubernetes-2
=========================================
1. Установил локально minikube
2. Обновлены манифесты для Reddit, приложение запущено в локальном minikube
3.Создал новый кластер настройка в yandex cloud

kubectl get nodes
NAME                        STATUS   ROLES    AGE   VERSION
cl1dmdgngf6jmqu9ncpr-upij   Ready    <none>   3d    v1.20.6
cl1dmdgngf6jmqu9ncpr-ywys   Ready    <none>   3d    v1.20.6

4. Приложение запущено в кластере yandex cloud
kubectl get pods -n dev
NAME                                    READY   STATUS    RESTARTS   AGE
comment-6bb7c5744c-2t5nd                1/1     Running   0          3d
mongo-gce-pd-storage-7dbb8b6f7b-2dd9h   0/1     Pending   0          11m
post-5bf948d94-r5td5                    1/1     Running   0          3d
ui-77f8764fc5-dj4nq                     1/1     Running   0          3d
![image](https://user-images.githubusercontent.com/80415069/125755178-8d933dae-fe3b-48e1-9023-42d476573419.png)
![image](https://user-images.githubusercontent.com/80415069/125755329-12e15893-24fb-4d57-81ed-e7de2f9fcc98.png)

HW kubernetes-1
=========================================
1. Созданы виртуалки и кластер 
```
kubectl get nodes -o wide
NAME         STATUS   ROLES                  AGE   VERSION   INTERNAL-IP   EXTERNAL-IP   OS-IMAGE             KERNEL-VERSION      CONTAINER-RUNTIME
kubemaster   Ready    control-plane,master   15m   v1.21.0   10.130.0.32   <none>        Ubuntu 18.04.5 LTS   4.15.0-55-generic   docker://20.10.6
kubernode1   Ready    <none>                 8m   v1.21.0   10.130.0.18   <none>        Ubuntu 18.04.5 LTS   4.15.0-55-generic   docker://20.10.6
kubernode2   Ready    <none>                 8m   v1.21.0   10.130.0.10    <none>        Ubuntu 18.04.5 LTS   4.15.0-55-generic   docker://20.10.6
```
2. Созданы тестовые манифесты post-deployment.yml,ui-deployment.yml,comment-deployment.yml,mongo-deployment.yml
3. Запущены поды
```
kubectl get pods
NAME                       READY   STATUS    RESTARTS   AGE
comment-6bb7c5744c-kv24m   1/1     Running   1          23h
mongo-6b9fcfd49f-bb2zq     1/1     Running   1          23h
post-5bf948d94-m5mkm       1/1     Running   1          23h
ui-77f8764fc5-2zbkx        1/1     Running   1          23h

HW logging-1
=========================================

Основное задание
1. Обновил код микросервиса
2. Сделал отдельный docker-compose-logging.yml
3. Создал конфигурацию fluend и собрал образ
4. Подключил сервис Zipkin для просмотра трейсов
5. Обновил собранные образы DockerHub

HW monitoring-2
=========================================

Основное задание
1. Добавил cAdvisor для мониторинга docker
2. Добавил Grafana для визуалного отображения собранных метрик из prometheus
3. Обновил собранные образы DockerHub

HW monitoring-1
=========================================

1. Запущен docker  с prometheus;

2. Собран образ prometheus с необходимыми конфигом;

3. docker-compose.yml добавлен сервис prometheus;

HW gitlab-ci-1
=========================================

1. Развернут gitlab из контейнера
2. Создан тестовый pipeline
3. Добавлен docker-compouse для запуска gitlab-ci и gitlab-runner.
