FROM openjdk:8-alpine
ARG VERSION=1.0-SNAPSHOT
ADD receiver-${VERSION}.jar /receiver.jar
CMD java -jar /receiver.jar
