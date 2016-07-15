#!/bin/sh

KONG_CONFIG=/etc/kong/kong.yml

# Setting up the proper database
if [ -n "$DATABASE" ]; then
  echo -e '\ndatabase: "'$DATABASE'"' >> ${KONG_CONFIG}
fi

# Update the host if given
if [ -n "${DATABASE_HOST}" ]; then
  sed -i -e "s/host: \"kong-database\"/host: \"${DATABASE_HOST}\"/" ${KONG_CONFIG}
fi;
