FROM maven:3.9.6-amazoncorretto-17 AS build

VOLUME /tmp

WORKDIR /app

COPY src /app/src
COPY pom.xml /app

RUN mvn dependency:go-offline -B
RUN mvn package -DskipTests

FROM eclipse-temurin:17-jre

COPY --from=build /app/target/yappy-0.0.1-SNAPSHOT.jar /yappy.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/yappy.jar"]