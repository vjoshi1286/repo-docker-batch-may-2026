FROM eclipse-temurin:17 AS build
WORKDIR /src

COPY .mvn .mvn
COPY pom.xml .
COPY mvnw mvnw
COPY src src

RUN ./mvnw -B -DskipTests package

FROM eclipse-temurin:17-jre-jammy
WORKDIR /app 
COPY  --from=build /src/target/*.jar app.jar 


EXPOSE 8080
#ENTRYPOINT [ "/bin/bash"]
ENTRYPOINT [ "java","-jar","/app/app.jar"]
