package main

import (
	"fmt"
	"log"
	"os"

	"github.com/IBM/sarama"
)

const (
	KAFKA_PORT = 9092
)

func main() {
	// Create a new config
	config := sarama.NewConfig()
	config.Producer.Return.Successes = true
	config.Producer.RequiredAcks = sarama.WaitForAll
	config.Producer.Retry.Max = 2
	config.ClientID = "my-kafka-client"

	// Enable Sarama logging
	sarama.Logger = log.New(os.Stdout, "[Sarama] ", log.LstdFlags)

	brokers := []string{
		"localhost:9092",
	}

	producer, err := sarama.NewSyncProducer(brokers, config)
	if err != nil {
		panic(fmt.Sprintf("Failed to start Sarama producer: %v", err))
	}
	defer func() { _ = producer.Close() }()
	fmt.Printf("Kafka connected, %+v\n", producer)

	// Send a message
	msg := &sarama.ProducerMessage{
		Topic: "test-topic",
		Value: sarama.StringEncoder("Hello, Kafka"),
	}

	partition, offset, err := producer.SendMessage(msg)
	if err != nil {
		panic(fmt.Sprintf("Failed to send message: %v", err))
	}

	fmt.Printf("Message sent to partition %d at offset %d\n", partition, offset)
}
