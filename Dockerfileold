# Use a base image
#FROM python:3.12-slim

# Set working directory inside container
#WORKDIR /app

# Copy requirements first (for caching)
#COPY requirements.txt .

# Install dependencies
#RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
#COPY . .

# Expose port (change if needed)
#EXPOSE 5000

# Set default command
#CMD ["python", "app.py"]



FROM tomcat:9.0-jdk11-openjdk
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/amazon.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

