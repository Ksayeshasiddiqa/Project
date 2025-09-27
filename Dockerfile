# 1️⃣ Use official Tomcat 9 with JDK 11 as base image
FROM tomcat:9.0-jdk11-openjdk

# 2️⃣ Optional: Add Azure DevOps metadata labels
LABEL com.azure.dev.image.build.repository.name="Ksayeshasiddiqa/Project"
LABEL com.azure.dev.image.build.sourcebranchname="main"
LABEL com.azure.dev.image.build.buildnumber="$(Build.BuildId)"

# 3️⃣ Remove default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# 4️⃣ Copy WAR file from backend module into Tomcat
# Make sure Maven produces backend/target/amazon.war
COPY backend/target/amazon.war /usr/local/tomcat/webapps/ROOT.war

# 5️⃣ Expose Tomcat port
EXPOSE 8080

# 6️⃣ Start Tomcat
CMD ["catalina.sh", "run"]
