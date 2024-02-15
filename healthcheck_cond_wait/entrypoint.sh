#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

readonly cmd="$*"

: "${DATABASE_HOST:=db}"
: "${DATABASE_PORT:=5432}"

./wait-for-it.sh \
  --host="$DATABASE_HOST" \
  --port="$DATABASE_PORT" \
  --timeout=90 \
  --strict

echo "Postgres ${DATABASE_HOST}:${DATABASE_PORT} is up"

exec $cmd