FROM openjdk:8-jre-slim

ARG SERVER_VERSION

RUN apt-get update && apt-get install curl -y && apt-get clean

RUN curl -L https://github.com/Anuken/Mindustry/releases/download/${SERVER_VERSION}/server-release.jar > server-release.jar

CMD ["/bin/sh", "-c", "java -jar server-release.jar host"]
