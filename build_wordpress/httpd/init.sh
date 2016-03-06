#!/bin/bash
service httpd start

cat <<EOF >> ~/.bashrc
trap 'service httpd stop; sleep 3; exit 0' TERM
EOF
exec /bin/bash
