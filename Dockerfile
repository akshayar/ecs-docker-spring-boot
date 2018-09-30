FROM openjdk:8-jdk-alpine
ARG JAR_FILE
COPY ${JAR_FILE} /app/app.jar
workdir /app
cmd ["/usr/bin/java","-Dserver.port=${PORT}","-jar","app.jar"]


