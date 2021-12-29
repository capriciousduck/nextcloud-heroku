#!/bin/bash

#a2dismod mpm_prefork

#service apache2 restart

echo "Listen ${PORT:-80}" > /etc/apache2/ports.conf

/entrypoint.sh "$@"
