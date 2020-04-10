FROM prom/prometheus:v2.17.1

LABEL author="miwenshu@gmail.com" flag="xxx"

VOLUME [/prometheus]
EXPOSE 9090

ENV KONG_URL="kong.arch:8000" PROMETHEUS_CONFIG="--config.file=/etc/prometheus/prometheus.yml" TSDB_PATH="--storage.tsdb.path=/prometheus"  WEB_LIBRARIES="--web.console.libraries=/usr/share/prometheus/console_libraries" WEB_LIBRARIES_TEMPLATE="--web.console.templates=/usr/share/prometheus/consoles"

COPY  prometheus.yml start.sh /etc/prometheus/

ENTRYPOINT ["/etc/prometheus/start.sh"]