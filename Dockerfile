FROM nginx
MAINTAINER Joshua Rubin <jrubin@zvelo.com>
ENV DEBIAN_FRONTEND noninteractive
ENV GRAFANA_VERSION 1.9.1
ADD http://grafanarel.s3.amazonaws.com/grafana-$GRAFANA_VERSION.tar.gz /tmp/grafana.tar.gz
RUN tar -zxC /opt -f /tmp/grafana.tar.gz && \
  rm /tmp/grafana.tar.gz && \
  mv /opt/grafana-$GRAFANA_VERSION /opt/grafana && \
  rm /opt/grafana/*.md && \
  rm /opt/grafana/*.js
ADD config.js /opt/grafana/config.js
ADD start.sh /usr/local/bin/start.sh
ADD grafana.conf /etc/nginx/conf.d/default.conf
WORKDIR /opt/grafana
EXPOSE 8003
ENTRYPOINT ["/usr/local/bin/start.sh"]
CMD []
