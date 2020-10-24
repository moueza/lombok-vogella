#!/bin/sh
if [ $(docker ps -a -f name=lombok-vogella | grep -w lombok-vogella | wc -l) -eq 1 ]; then
  docker rm -f lombok-vogella
fi
mvn clean package && docker build -t homniserv-moueza-peter-nantes/lombok-vogella .
docker run -d -p 9080:9080 -p 9443:9443 --name lombok-vogella homniserv-moueza-peter-nantes/lombok-vogella
