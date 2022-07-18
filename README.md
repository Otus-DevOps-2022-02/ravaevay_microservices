# ravaevay_microservices
ravaevay microservices repository

Задание №18
Системы логирования. Стек EFK.

    - Создан docker-compose.logging для поднятия стека EKF.
    - Cобран образ Fluentd с elasticsearch-plugin и grok-parser. Изменен конфиг fluent.conf - добавлены grok patterns для парсинга логов с микросервисов post
      и ui (структурированные и неструктурированные логи).
    - Добавлен сервис Zipkin для трейсинга запросов.

Задание №17
Системы мониторинга. Мониторинг с Prometheus

 - Созданы Dockerfile и конфигурация Prometheus. Команда для сборки всех образов приложений:
 - docker-compose.yml отредактирован для запуска контейнеров с системой мониторинга Prometheus.
 - Собран образ Prometheus c node-exporter, mongod-exporter (percona/mongodb_exporter), blackbox-exporter.
 - Все контейнеры выгружены в DockerHub


Задание №16
Gitlab-CI

 - Выполнена установка Gitlab-CI в Docker Swarm
 - В конфигурацию стека добавлена установка gitlan-runner
 - Gitlab-runner успешно зарегистрирован в Gitlab-CI
```
docker exec -it gitlab-ci_gitlab-runner.1.47sbpkxqunl2l5ui634x868pf gitlab-runner register --url http://192.168.223.233/ --non-interactive --locked=false --name DockerRunner --executor docker --docker-image alpine:latest --registration-token "TOKEN" --tag-list "linux,xenial,ubuntu,docker" --run-untagged
```
 - Добавлены динамические окружения

Задание №15
Docker и сети

- Выполнен запуск контейнеров с несколькими сетями
- выполнен запуск контейнеров с указанием алиасов
- подключение контейнеров к разным сетям - docker network connect FRONT_NET post

Docker-compose

Добавлены переменные окружения:

    Логин пользователя в DockerHub
    Порт приложения
    Версия mongo
    По-умолчанию имя проекта формируется из имени корневой папки, в который расположен файл docker-compose. Меняется путем добавления ключа -p или задав переменную env COMPOSE_PROJECT_NAME.

Задание №14

- скопирован проект, сформированы Dockerfile's. Построены и запущены контейнеры для каждого модуля приложения.
- Протестированы теги, различные ENV переменные и сетевые алиасы.
- Оптимизирован образ ui.

Задание №12-13

 - Установлен докер локально, поднят контейтер с ubuntu. Протестированы базовые команды - create, built, run, exec, list, rm, rmi.
 - С помощью Docker-machine установлен Docker в VM на yc.
 - Создан образ и запущен контейнер на основе созданного Dockerfile с рабочим приложением на борту. Образ выгружен в Docker Hub.
