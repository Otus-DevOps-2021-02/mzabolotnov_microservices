# mzabolotnov_microservices
mzabolotnov microservices repository

  docker-compose -f docker-compose-logging.yml -f docker-compose.yml up -d запускается приложение состоящие из сервисов ui, post, comment. Подняты также сервисы логирования fluentd, zipkin, elasticsearch, kibana. Логи собираются с сервисов post и ui.
