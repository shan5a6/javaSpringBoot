FROM maven
WORKDIR /opt/app
EXPOSE 8080
COPY . .
RUN mvn clean package && cp ./target/*.jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
