# Use official Tomcat 9 with JDK 11 base image
FROM tomcat:9.0-jdk11-openjdk

# Labels for Azure DevOps metadata (optional)
LABEL com.azure.dev.image.build.repository.name="Ksayeshasiddiqa/Project"
LABEL com.azure.dev.image.build.sourcebranchname="main"
LABEL com.azure.dev.image.build.buildnumber="684"

# Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from build output into Tomcat webapps
# Make sure your WAR file is at 'target/amazon.war'
COPY target/amazon.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
