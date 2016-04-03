#!/bin/bash
service td-agent start

cat <<EOF >> ~/.bashrc
trap 'service td-agent stop; sleep 3; exit 0' TERM
EOF
exec /bin/bash
