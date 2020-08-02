FROM openjdk:latest
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} spring.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.data.mongodb.uri=mongodb://mongodb:27017", "-jar", "/spring.jar"]
