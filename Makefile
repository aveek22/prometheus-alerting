@phony: infra-up infra-down

infra-up:
	docker-compose up -d

infra-down:
	docker-compose down