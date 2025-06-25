# Use a lightweight OpenJDK runtime image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy your jar file into the container
COPY sonarscanner-maven-basic-1.0-SNAPSHOT.jar .

# Expose port if your app listens on one (optional)
# EXPOSE 8080

# Command to run your jar
ENTRYPOINT ["java", "-jar", "sonarscanner-maven-basic-1.0-SNAPSHOT.jar"]
