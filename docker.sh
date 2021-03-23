#!/bin/sh
docker build -t work .
docker run -it -d -v /Users/ryoh/work:/home/ --name work work
docker start work
docker exec -it work bash
