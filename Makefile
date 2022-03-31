.SILENT:
.PHONY: help
help: ## Display this help screen
	awk 'BEGIN {FS = ":.*##"; printf "Usage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) }' $(MAKEFILE_LIST)

.PHONY: compose-build
compose-build: ## Build or rebuild services
	docker-compose build

.PHONY: compose-up
compose-up: ## Create and start containers
	docker-compose up -d && docker-compose logs -f

.PHONY: compose-ps
compose-ps: ## List containers
	docker-compose ps

.PHONY: compose-exec
compose-exec: ## Execute a command in a running container
	docker-compose exec nginx sh

.PHONY: compose-start
compose-start: ## Start services
	docker-compose start

.PHONY: compose-restart
compose-restart: ## Restart services
	docker-compose restart

.PHONY: compose-stop
compose-stop: ### Stop services
	docker-compose stop

.PHONY: compose-down
compose-down: ### Stop and remove containers, networks
	docker-compose down --remove-orphans
