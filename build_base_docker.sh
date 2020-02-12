#!/usr/bin/env bash

# This will build new versions of the Mongo, Rabbit, and Jenkins images 

# I may need to login to Docker Hub
docker build -f MongoDocker -t waitsfornone/my_repo:mongo && docker push waitsfornone/my_repo:mongo
docker build -f RabbitDocker -t waitsfornone/my_repo:rabbitmq && docker push waitsfornone/my_repo:mongo
docker build -f JenkinsDocker -t waitsfornone/my_repo:jenkins && docker push waitsfornone/my_repo:jenkins