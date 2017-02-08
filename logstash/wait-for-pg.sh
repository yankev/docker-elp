#!/bin/bash

set -e

host="$1"
shift
cmd="$@"

until psql -h "$host" -U "postgres" -c '\l'; do
  >&2 echo "Postgres is unavailable - auto-retry in 5 seconds"
  sleep 5
done

>&2 echo "Postgres is up - executing command $cmd"
exec $cmd