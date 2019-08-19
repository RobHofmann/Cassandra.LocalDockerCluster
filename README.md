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
