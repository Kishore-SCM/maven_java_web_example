FROM maven:3.6.3-jdk-8

# Set working directory
WORKDIR /app

# Install git
#RUN apt-get update && apt-get install -y git

# Clone source code
RUN git clone https://github.com/Kishore-SCM/maven_java_web_example.git

# Move into project directory
WORKDIR /app/maven_java_web_example

# Build the application
RUN mvn clean test package

# Run the application
CMD ["mvn", "tomcat7:run"]
