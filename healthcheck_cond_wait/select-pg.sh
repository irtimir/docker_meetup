#!/usr/bin/env bash

while true;
do
  psql -h "$*" -c 'SELECT datname FROM pg_catalog.pg_database;'
  sleep 1;
done