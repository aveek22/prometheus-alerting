@phony: infra-up infra-down

infra-up:
	docker-compose up -d

infra-down:
	docker-compose down

build:
	docker build . -t prometheus-alerting-app:1.0.0