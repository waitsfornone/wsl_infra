#!/bin/bash

docker run -d -p 27017:27017 --name MongoDB -v /home/tenders/mongodb:/var/lib/mongodb waitsfornone/my_repo:mongo
docker run -d -p 25672:25672 --name PeterRabbit -p 4369:4369 -p 5671:5671 -p 5672:5672 -p 15672:15672 waitsfornone/my_repo:rabbitmq