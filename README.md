# mzabolotnov_microservices
mzabolotnov microservices repository

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
