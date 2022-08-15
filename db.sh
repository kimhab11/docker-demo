#!/bin/sh
 docker run -itd \
 -p 7432:5432 \
 -e POSTGRES_DB=ppdemo \
 -e POSTGRES_USER=kimhab \
 -e POSTGRES_PASSWORD=123 \
 --name kimhab.db.com --network laos \
 postgres:14.4-alpine