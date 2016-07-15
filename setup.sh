#!/bin/sh

KONG_CONFIG=/etc/kong/kong.yml

# Setting up the proper database
if [ -n "$DATABASE" ]; then
  echo -e '\ndatabase: "'$DATABASE'"' >> ${KONG_CONFIG}
fi
