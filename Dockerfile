FROM maven:3.6.1-jdk-8-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src

FROM openjdk:8-alpine

EXPOSE 8085
ENTRYPOINT ["java","-jar","app.jar"]
