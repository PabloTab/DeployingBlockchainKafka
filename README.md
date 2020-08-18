# Deploying a blockchain with Kafka

Implementation of Blockchain technology in Kafka with Docker container's inspired from article on Medium (https://medium.com/free-code-camp/a-blockchain-experiment-with-apache-kafka-97ee0ab6aefc)


#Output


    $ kafkacat -C -b kafka:9092 -t blockchain
     {“index”: 1, “timestamp”: 1513818733.589511, “transactions”: [], “proof”: 100, “previous_hash”: 1}
     % Reached end of topic blockchain [0] at offset 1
     {“index”: 2, “timestamp”: 1513819012.545352, “transactions”: [{“sender”: “alice”, “recipient”: “bob”, “amount”: 3}, {“sender”: “alice”,        “recipient”: “bob”, “amount”: 3}, {“sender”: “alice”, “recipient”: “bob”, “amount”: 3}, {“sender”: “0”, “recipient”: “a75abb3f132d440da6b88e87d0d5db62”, “amount”: 1}], “proof”: 35293, “previous_hash”: “09b672b4fc2f068f020df9f121db9fdbc73579b386612f2f9d421ade6ad6dfa8”}
    % Reached end of topic blockchain [0] at offset 2
