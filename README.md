# Deploying a blockchain with Kafka - Big Data and Blockchain

Implementation of Blockchain technology in Kafka with Docker container's based from article on Medium (https://medium.com/free-code-camp/a-blockchain-experiment-with-apache-kafka-97ee0ab6aefc) Shoutout to Luc Rusell for this wonderful work (https://www.linkedin.com/in/lucrussell).


# Bringing two worlds together

The idea behind this POC (Proof of Concept) is to bring the organised and structured way of storage from Kafka and introduce Blockchain technology,  in principle is a series of blocks linked together in a secure way with cryptography. This solution was deployed in a container environnement for its possible deployment in the cloud and its capability for horizontal scalability thanks to Kafka.

# The motivation

The POC's objective is to bring together the latest technologies for storage and communication together and apply the principles of blockchain.This POC takes a step further bringing docker technology for its easy deployment and the tools its provides to be more dynamic. It's use is seen as an event-sourcing database that many systems can take advantage of. These trusted systems can be found in banks, governments, associations and companies.

Stack: Kafka, Python, Docker, Zookeeper

# Output

This example introduces the user to blockchain technology basics, timestamps, encrypted links to other blocks, the encrypted ID in the chain and the stored "value". We interact with the blockchain by storing transactions "“{\”from\”: \”alice\”, \”to\”:\”bob\”, \”amount\”: 3}”" 


    $ kafkacat -C -b kafka:9092 -t blockchain
     {“index”: 1, “timestamp”: 1513818733.589511, “transactions”: [], “proof”: 100, “previous_hash”: 1}
     % Reached end of topic blockchain [0] at offset 1
     {“index”: 2, “timestamp”: 1513819012.545352, “transactions”: [{“sender”: “alice”, “recipient”: “bob”, “amount”: 3}, {“sender”: “alice”,        “recipient”: “bob”, “amount”: 3}, {“sender”: “alice”, “recipient”: “bob”, “amount”: 3}, {“sender”: “0”, “recipient”: “a75abb3f132d440da6b88e87d0d5db62”, “amount”: 1}], “proof”: 35293, “previous_hash”: “09b672b4fc2f068f020df9f121db9fdbc73579b386612f2f9d421ade6ad6dfa8”}
    % Reached end of topic blockchain [0] at offset 2
