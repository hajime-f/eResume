startproject:
	docker compose -f docker-compose.dev.yml run python django-admin startproject $(PROJECT_NAME) .
up:
	docker compose -f docker-compose.dev.yml up -d
down:
	docker compose -f docker-compose.dev.yml down
dev:
	docker compose -f docker-compose.dev.yml build
migrate:
	docker compose -f docker-compose.dev.yml run python ./manage.py migrate
