FROM maven.3.8.4-eclipse-temurin-25 as build

WORKDIR /app
COPY . .
RUN mvn clean install -DskipTest

FROM eclipse-temurin:25

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8083

CMD ["java", "-jar", "/app/bff-agendador-tarefas.jar"]