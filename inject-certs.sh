#!/bin/bash
docker compose exec -ti kasm /opt/kasm/bin/stop
docker compose cp ./certs/kasm_nginx.crt kasm:/opt/kasm/current/certs/kasm_nginx.crt
docker compose cp ./certs/kasm_nginx.key kasm:/opt/kasm/current/certs/kasm_nginx.key
docker compose exec -ti kasm /opt/kasm/bin/start