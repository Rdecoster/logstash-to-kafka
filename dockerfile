FROM docker.elastic.co/logstash/logstash:8.4.1
RUN rm -f /usr/share/logstash/pipeline/logstash.conf 
COPY p1.conf /usr/share/logstash/pipeline/logstash.conf
USER root

# CMD ["sleep", "10"]

# ADD config/ /usr/share/logstash/config/
