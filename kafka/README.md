
docker-compose up

# shell session 1
docker exec -it kafka sh
cd /opt/kafka_2.13-2.8.1/bin
kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 1 --partitions 1 --topic quickstart
kafka-topics.sh --describe --topic quickstart --bootstrap-server localhost:9092
kafka-console-consumer.sh --topic quickstart --from-beginning --bootstrap-server localhost:9092


# shell session 2
docker exec -it kafka sh
cd /opt/kafka_2.13-2.8.1/bin
kafka-console-producer.sh --topic quickstart --bootstrap-server localhost:9092
#<type stuff>
