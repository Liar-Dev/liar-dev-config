FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk

WORKDIR /app
COPY ./build/libs/config-service-0.0.1.jar /app

CMD ["java", "-jar", "config-service-0.0.1.jar"]