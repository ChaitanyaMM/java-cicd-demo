FROM amazoncorretto:11-alpine-jdk
MAINTAINER chaitanya
COPY target/java-cicd-demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]