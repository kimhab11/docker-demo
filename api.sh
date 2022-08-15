#!/bin/sh
docker build . --file b.Dockerfile -t api:1

docker run -it \
 -e spring.datasource.url=jdbc:postgresql://tnakrean.db.com:5432/postgres \
 -e spring.datasource.username=postgres \
 -e spring.datasource.password=123 \
 -p 8080:8080 \
--name tnakrean.api.com \
--network demo1_postgres \
api:1 
 