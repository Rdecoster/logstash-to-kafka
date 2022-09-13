# confluent Kafka Example. 
1. Run this docker compose on the instance designated for the kafka service. 

2. docker-compose -f docker-compose.yml up 

## To see logs added to the kafka 

docker exec -it <broker-image-id> /bin/bash
    $ kafka-console-consumer --bootstrap-server localhost:9092 --topic <topic-name>


# you will start to see output when messages comminto thte topic 
# To exit ctl + c


kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 1 --partitions 1 --topic test_topic 

kafka-console-producer.sh --broker-list kafka:9092 --topic test_topic

kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic test_topic