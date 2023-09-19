# Start with a base image containing Java runtime
FROM openjdk:11-jdk-alpine

# Add Maintainer Info
LABEL maintainer="example@example.com"

# Make port 8080 available to the world outside this container
EXPOSE 8100

# The application's jar file
ARG JAR_FILE=target/eventstore-service.jar

# Add the application's jar to the container
ADD ${JAR_FILE} eventstore-service.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eventstore-service.jar"]
