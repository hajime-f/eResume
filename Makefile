startproject:
	docker compose -f docker-compose.dev.yml run python django-admin startproject $(PROJECT_NAME) .
dev-up:
	docker compose -f docker-compose.dev.yml up -d
dev-down:
	docker compose -f docker-compose.dev.yml down
dev-build:
	docker compose -f docker-compose.dev.yml build
dev-migrate:
	docker compose -f docker-compose.dev.yml run python ./manage.py migrate
