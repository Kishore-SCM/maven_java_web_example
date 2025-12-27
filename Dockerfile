FROM maven:3.6.3-jdk-8

RUN apt update -y &&  apt install git -y

RUN git clone https://github.com/Kishore-SCM/maven_java_web_example.git

WORKDIR $PWD/maven_java_web_example

RUN mvn clean

RUN mvn test -X

RUN package

CMD ["mvn" , "tomcat7:run"]
