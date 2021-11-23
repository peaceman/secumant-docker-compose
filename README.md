# secumant docker compose
## setup
copy and fill `.env.example` and `config.yml.example`
* `.env.example` -> `.env`
* `config.yml.example` -> `config.yml`

```
docker-compose run --rm secumant upgrade
docker-compose up -d
```

## update
adjust docker image version via `SECUMANT_DOCKER_IMAGE` var in the .env file

```
docker-compose pull
docker-compose down
docker-compose run --rm secumant upgrade
docker-compose up -d
```
