#!/bin/sh
mvn clean package && docker build -t com.mycompany/EAS .
docker rm -f EAS || true && docker run -d -p 9080:9080 -p 9443:9443 --name EAS com.mycompany/EAS