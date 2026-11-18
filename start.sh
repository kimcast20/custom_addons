#!/bin/bash
set -e

exec /entrypoint.sh odoo \
    --http-interface=0.0.0.0 \
    --http-port="${PORT:-10000}" \
    --admin-passwd="$ADMIN_PASSWORD" \
    --addons-path=/usr/lib/python3/dist-packages/odoo/addons,/mnt/extra-addons
