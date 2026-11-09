#!/bin/sh
# Runs once, on first initialisation of an empty data volume.
# Creates a separate database for the test suite so RefreshDatabase never touches dev data.
set -eu

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE "${POSTGRES_DB}_testing" OWNER "$POSTGRES_USER";
EOSQL
