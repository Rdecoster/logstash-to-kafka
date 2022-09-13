# Event Forwarding to Kafka with logstash-to-kafka


#### Independent logstash service connected to remote kafka 
## Requirements 

# Container Images 
1. logstash:8.4.1
2. confluentinc/cp-zookeeper:5.5.0
3. confluentinc/cp-kafka:5.5.0
# Docker latest
# Docker-compose 17.12.0+

# 1 VM enviorments with appropriate ports opend. Running linux ubuntu 18.04  Min requirements 2vCPU 4GIG Memory to host the kafka service. Optional the logstash can be ran locally or in its own vm. 

#### Resources 
1. https://www.elastic.co/guide/en/logstash/current/plugins-outputs-kafka.html#plugins-outputs-kafka-bootstrap_servers

2. https://docs.docker.com/get-started/overview/

4.  https://www.confluent.io/blog/kafka-client-cannot-connect-to-broker-on-aws-on-docker-etc/

3. https://rmoff.net/2018/08/02/kafka-listeners-explained/


#### Trouble shooting tools 
1. Kcat to make a connection to a kafka server example: kcat -b localhost:19092 -L
2. 

#### TODO: Kubernetes or Docker file for full demo on local machine. 

