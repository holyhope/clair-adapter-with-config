#!/bin/sh

# https://github.com/goharbor/harbor/blob/master/make/photon/prepare/templates/clair-adapter/env.jinja
export SCANNER_CLAIR_DATABASE_URL="postgresql://{{clair_db_username}}:{{clair_db_password}}@{{clair_db_host}}:{{clair_db_port}}/{{clair_db_database}}?sslmode={{clair_db_ssl}}"

exec /clair-adapter/clair-adapter $@
