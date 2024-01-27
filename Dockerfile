# Install base image
FROM ubuntu:latest
# Install Java
RUN apt update && apt install -y openjdk-17-jdk
# Copy jar file for deployment
COPY ./target/*.jar .
RUN java -jar *.jar
