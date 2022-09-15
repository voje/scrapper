# RUNTIME="podman"
RUNTIME="docker"

CONTAINER="elixirdb"

stop-db:
	-${RUNTIME} rm -f ${CONTAINER}

nuke-db: stop-db
	sudo rm -rf ~/.postgresql/data

start-db: stop-db
	${RUNTIME} run \
		-itd \
		-e POSTGRES_USER=elixir \
		-e POSTGRES_PASSWORD=elixir \
		-p 5432:5432 \
		--name ${CONTAINER} \
		-v ~/.postgresql/data:/var/lib/postgresql/data \
		postgres

pgsql:
	${RUNTIME} exec -it ${CONTAINER} /bin/bash -c "PGPASSWORD=elixir psql -U elixir"
