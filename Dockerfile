FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY target/hotel-app.jar app.jar

EXPOSE 8081

ENV KAFKA_HOST=kafka:9092

ENTRYPOINT ["java", "-Dserver.port=8082", "-jar", "app.jar"]