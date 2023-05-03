install-dependences:
	ansible-galaxy install -r requirements.yml

compose:
	docker compose up -d

compose-production:
	docker-compose --file docker-compose.yml run production

compose-build:
	docker compose build

compose-down:
	docker compose down --remove-orphans || true

compose-clear:
	docker compose down -v --remove-orphans || true

compose-stop:
	docker compose stop || true

compose-restart:
	docker compose stop || true

compose-ci: compose-ci-build
	docker compose --file docker-compose.yml up --abort-on-container-exit
