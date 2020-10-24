@echo off
call mvn clean package
call docker build -t homniserv-moueza-peter-nantes/lombok-vogella .
call docker rm -f lombok-vogella
call docker run -d -p 9080:9080 -p 9443:9443 --name lombok-vogella homniserv-moueza-peter-nantes/lombok-vogella