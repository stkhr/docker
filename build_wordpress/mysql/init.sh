#!/bin/bash
service mysqld start

cat <<EOF >> ~/.bashrc
trap 'service mysqld stop; sleep 3; exit 0' TERM
EOF
exec /bin/bash
