#!/bin/bash
set -e

cat > /tmp/odoo.conf <<EOF
[options]
admin_passwd = ${ADMIN_PASSWORD}
db_name = odoo20_c6zm
http_interface = 0.0.0.0
http_port = ${PORT:-10000}
addons_path = /usr/lib/python3/dist-packages/odoo/addons,/mnt/extra-addons
EOF

export ODOO_RC=/tmp/odoo.conf

exec /entrypoint.sh odoo
