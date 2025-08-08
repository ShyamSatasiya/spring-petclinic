# Dockerfile for Spring PetClinic (runtime image expects JAR built by CI)
FROM eclipse-temurin:17-jre
WORKDIR /opt/app

# Copy the JAR built by Jenkins CI stage (mvn package)
COPY target/spring-petclinic-*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
