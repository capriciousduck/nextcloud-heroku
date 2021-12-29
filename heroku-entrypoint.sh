#!/bin/bash

a2dismod mpm_prefork

echo "Listen ${PORT:-80}" > /etc/apache2/ports.conf

/entrypoint.sh "$@"
