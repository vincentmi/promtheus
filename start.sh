#!/bin/sh

sed -i 's/\${KONG_URL}/'"$KONG_URL"'/g' /etc/prometheus/prometheus.yml

/bin/prometheus $PROMETHEUS_CONFIG $TSDB_PATH $WEB_LIBRARIES $WEB_LIBRARIES_TEMPLATE

###