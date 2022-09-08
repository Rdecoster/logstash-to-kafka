FROM docker.elastic.co/logstash/logstash:8.4.1
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
COPY p1.config /usr/share/logstash/pipeline/logstash.conf
USER root

# ADD config/ /usr/share/logstash/config/