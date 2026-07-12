FROM openjdk:17.0.1-jdk-slim AS build
WORKDIR /src
RUN echo "Maven build stage"

COPY .mvn .mvn
COPY pom.xml .
COPY mvnw mvnw
COPY src src

#RUN ./mvnw -B pac -DskipTests spring-boot:repackage
RUN ./mvnw -B -DskipTests package
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
COPY  --from=build /src/target/*.jar myapp.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "myapp.jar"]
#ENTRYPOINT ["/bin/bash"]