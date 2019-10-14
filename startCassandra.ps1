docker run --name c1 --cpus=2 --memory=512m -d -v "$(PWD)/cassandra.yaml:/etc/cassandra/cassandra.yaml" -v "$(PWD)/:/mycassandra" --network cassandra-network -p 9042:9042 -e HEAP_NEWSIZE=64M -e MAX_HEAP_SIZE=128M -e CASSANDRA_DC=DC1 -e CASSANDRA_RACK=RA1 -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch cassandra:3.11.4
Start-Sleep -s 20
docker run --name c2 --cpus=2 --memory=512m -d -v "$(PWD)/cassandra.yaml:/etc/cassandra/cassandra.yaml" -v "$(PWD)/:/mycassandra" --network cassandra-network -p 9043:9042 -e HEAP_NEWSIZE=64M -e MAX_HEAP_SIZE=128M -e CASSANDRA_DC=DC1 -e CASSANDRA_RACK=RA1 -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch -e CASSANDRA_SEEDS=c1 cassandra:3.11.4
Start-Sleep -s 40
docker run --name c3 --cpus=2 --memory=512m -d -v "$(PWD)/cassandra.yaml:/etc/cassandra/cassandra.yaml" -v "$(PWD)/:/mycassandra" --network cassandra-network -p 9044:9042 -e HEAP_NEWSIZE=64M -e MAX_HEAP_SIZE=128M -e CASSANDRA_DC=DC1 -e CASSANDRA_RACK=RA2 -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch -e CASSANDRA_SEEDS=c1 cassandra:3.11.4
Start-Sleep -s 40
docker run --name c4 --cpus=2 --memory=512m -d -v "$(PWD)/cassandra.yaml:/etc/cassandra/cassandra.yaml" -v "$(PWD)/:/mycassandra" --network cassandra-network -p 9045:9042 -e HEAP_NEWSIZE=64M -e MAX_HEAP_SIZE=128M -e CASSANDRA_DC=DC2 -e CASSANDRA_RACK=RB1 -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch -e CASSANDRA_SEEDS=c1 cassandra:3.11.4
Start-Sleep -s 40
docker run --name c5 --cpus=2 --memory=512m -d -v "$(PWD)/cassandra.yaml:/etc/cassandra/cassandra.yaml" -v "$(PWD)/:/mycassandra" --network cassandra-network -p 9046:9042 -e HEAP_NEWSIZE=64M -e MAX_HEAP_SIZE=128M -e CASSANDRA_DC=DC2 -e CASSANDRA_RACK=RB2 -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch -e CASSANDRA_SEEDS=c1 cassandra:3.11.4
Start-Sleep -s 40
docker run --name c6 --cpus=2 --memory=512m -d -v "$(PWD)/cassandra.yaml:/etc/cassandra/cassandra.yaml" -v "$(PWD)/:/mycassandra" --network cassandra-network -p 9047:9042 -e HEAP_NEWSIZE=64M -e MAX_HEAP_SIZE=128M -e CASSANDRA_DC=DC2 -e CASSANDRA_RACK=RB2 -e CASSANDRA_ENDPOINT_SNITCH=GossipingPropertyFileSnitch -e CASSANDRA_SEEDS=c1 cassandra:3.11.4