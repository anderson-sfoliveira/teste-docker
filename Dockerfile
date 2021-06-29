FROM openjdk

WORKDIR /app

COPY target/teste-docker-1.0.0-SNAPSHOT.jar /app/teste-docker.jar

ENTRYPOINT ["java", "-jar", "teste-docker.jar"]