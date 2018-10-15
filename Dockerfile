FROM openjdk:8-jdk-alpine
COPY app.jar /app/app.jar
workdir /app
cmd ["/usr/bin/java","-Dserver.port=80","-jar","app.jar"]


