# Cassandra.LocalDockerCluster
Scripts to run a local cassandra cluster on docker

# Run
To run this script, you need to create a network and then simply run the script.

## Create network
First create a docker network (bridge):
```
docker network create cassandra-network
```

## Run the script
Secondly simply run startCassandra.ps1 in PowerShell to start a 6 node Cassandra cluster.

### Mac & Linux
```
pwsh
```

### All OS's
```
./startCassandra.ps1
```
After executing the above command. Go into one of the docker containers and use cqlsh to execute the following queries:
```
ALTER KEYSPACE system_auth WITH REPLICATION = {'class' : 'NetworkTopologyStrategy', 'DC1' : 1, 'DC2' : 1};
ALTER KEYSPACE system_distributed WITH REPLICATION = {'class' : 'NetworkTopologyStrategy', 'DC1' : 1, 'DC2' : 1};
ALTER KEYSPACE system_traces WITH REPLICATION = {'class' : 'NetworkTopologyStrategy', 'DC1' : 1, 'DC2' : 1};
```
Make sure your Keyspaces also have the DC1 and DC2 DC's or you will have trouble connecting.

# Troubleshooting
Sometimes Cassandra containers will crash. This likely means that you are spinning up the containers too fast. You need to increate the timeout between spinning up the containers (in our testsetup we've noticed this takes around 20-60 seconds between each container).
