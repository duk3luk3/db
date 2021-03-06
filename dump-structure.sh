#!/usr/bin/env bash

if [ ! "${MYSQL_ROOT_PASSWORD+1}" ]; then
  echo "This script is not intended for use outside the docker container (variable MYSQL_ROOT_PASSWORD has not been set)"
  echo "Try instead: docker -i faf-db ${0}"
  exit 1
fi

mysqldump -uroot -p${MYSQL_ROOT_PASSWORD} --no-data faf || exit 1;
