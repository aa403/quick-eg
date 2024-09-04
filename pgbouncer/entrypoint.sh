#!/usr/bin/env bash

set -e

PG_LOG=/var/log/postgresql/
PG_USER=postgres
PG_GROUP=postgres
PG_CONFIG_DIR=/etc/pgbouncer
PG_CONFIG=pgbouncer.ini
PG_USERS=userlist.txt

mkdir -p ${PG_LOG}
chmod -R 0755 ${PG_LOG}
chown -R ${PG_USER}:${PG_GROUP} ${PG_LOG}
chmod 0640 ${PG_CONFIG_DIR}/${PG_CONFIG} ${PG_CONFIG_DIR}/${PG_USERS}
chown ${PG_USER}:${PG_GROUP} ${PG_CONFIG_DIR}/${PG_CONFIG} ${PG_CONFIG_DIR}/${PG_USERS}

echo "pgbouncer config:"
cat ${PG_CONFIG_DIR}/${PG_CONFIG}

echo "Starting pgbouncer"
exec pgbouncer -u ${PG_USER} ${PG_CONFIG_DIR}/${PG_CONFIG}