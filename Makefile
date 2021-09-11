SHELL=/bin/bash -e

.DEFAULT_GOAL := help
.PHONY := all

help: ## Справка
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Сборка проекта
	@docker-compose build old

start: ## Запуск проекта
	@docker-compose run old bash

tzversion: ## Получить версию tz базы
	@docker-compose run old php -r 'echo timezone_version_get() . "\n";'

default: help
