FROM maven:3.9-eclipse-temurin-17-alpine AS build
WORKDIR /app
RUN apk update && apk upgrade --no-cache
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk-alpine-3.21
WORKDIR /app
RUN apk update && apk upgrade --no-cache
ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=prod -Dspring.application.name=library-api"
ENV JAVA_TOOL_OPTIONS="${JAVA_OPTS}"
COPY --from=build /app/target/*.jar /app/library-api.jar
COPY applicationinsights.json /app/applicationinsights.json
COPY applicationinsights-agent.jar /app/applicationinsights-agent.jar
EXPOSE 8080

ENTRYPOINT ["java", "-javaagent:/app/applicationinsights-agent.jar", "-jar", "/app/library-api-1.0.jar"]