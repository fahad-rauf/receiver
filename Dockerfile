FROM openjdk:8-alpine
ARG VERSION=0.1.0
ADD receiver-${VERSION}.jar /receiver.jar
CMD java -jar /sereceivernder.jar
