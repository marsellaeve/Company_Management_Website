@echo off
call mvn clean package
call docker build -t com.mycompany/EAS .
call docker rm -f EAS
call docker run -d -p 9080:9080 -p 9443:9443 --name EAS com.mycompany/EAS