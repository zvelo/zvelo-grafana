#!/bin/bash

sed -i "s|{{ZVELO_GRAPHITE_PUBLIC_URL}}|$ZVELO_GRAPHITE_PUBLIC_URL|g" /opt/grafana/config.js
sed -i "s|{{ZVELO_ELASTICSEARCH_PUBLIC_URL}}|$ZVELO_ELASTICSEARCH_PUBLIC_URL|g" /opt/grafana/config.js

exec nginx -g "daemon off;" "$@"
