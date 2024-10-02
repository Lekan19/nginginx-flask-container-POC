# Flask Application with Nginx and Docker
>Note: This Proof of Concept (POC) is designed for a development environment with Docker installed or Docker Desktop. The purpose is to demonstrate deploying a Flask app behind an Nginx reverse proxy in a containerized setup using Docker Swarm.

## Why Use Docker Swarm for Local Development?
In a production environment, docker-compose up is not ideal for managing containerized applications at scale. Instead, Docker Swarm is used to orchestrate services across a cluster of Docker nodes. Having a local deployment file that's similar to the one used in staging or production environments provides consistency and reduces friction when transitioning to production.

This POC uses Docker Swarm to emulate a production-like environment in your local setup, making it easier to test and deploy.



## Updates
+ A bash script has been created to automate the Docker image build process and apply appropriate tags.

```
bash docker-build-image.sh
```

## Running the services
To deploy the stack using Docker Swarm, follow these steps:
1. initialize a docker swarm environment
```
docker swarm init
```
2. deploy docker stack
```
docker stack deploy -c docker-compose.yml adhoc
```

## Confirm Services are Running
1. Once deployed, verify that the services are running by listing the services:

```
docker service ls
```

2. Check container logs
```
docker logs <container-id>
```