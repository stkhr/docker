#!/bin/bash
service nginx start
service php-fpm start

cat <<EOF >> ~/.bashrc
trap 'service nginx stop; sleep 3; exit 0' TERM
EOF
exec /bin/bash
