# mzabolotnov_microservices
mzabolotnov microservices repository
Развернуто приложение в  четырех контейнерах, собраных  на основании 3-х Dockerfile,  расположенных в папках /src/comment, /src/post, /src/ui, и стандартного образа Mongo:latest
Контейнеры работают в  bridge-сети. В Dockerfiles внесены изменения в сравнении с исходными. Контейнеры собраны на основе образов Ubuntu 16.04 и 18.04
