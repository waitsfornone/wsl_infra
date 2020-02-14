#!/bin/bash

docker run -d --name MongoDB -p 27017:27017 -v /home/tenders/mongodb:/var/lib/mongodb waitsfornone/my_repo:mongo
docker run -d --name PeterRabbit -h cottontail -p 25672:25672 -p 4369:4369 -p 5671:5671 -p 5672:5672 -p 15672:15672 -v /home/tenders/rabbitmq:/var/lib/rabbitmq waitsfornone/my_repo:rabbitmq
docker run -d --name Jeeves -p 50000:50000 -p 8080:8080 waitsfornone/my_repo:jenkins