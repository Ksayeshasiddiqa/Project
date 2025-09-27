# Use OpenJDK 11
FROM openjdk:11-jdk-slim

# Add JAR file
COPY backend/target/backend-1.0-RELEASE.jar app.jar

# Expose port
EXPOSE 8080

# Run Spring Boot JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]
