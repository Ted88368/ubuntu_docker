#!/bin/bash

docker run -d --hostname my-rabbit --name rabbit \
    -e RABBITMQ_DEFAULT_USER=user -e RABBITMQ_DEFAULT_PASS=password \
    -p 15672:15672 -p 5672:5672 rabbitmq:management