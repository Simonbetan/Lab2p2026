#Runtime image: only JRE 17 and the JAR artifact built by the pipeline's build job
#To build it locally first run: mvnw -B package -DskipTests --file pom.xml
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
#Copy the JAR artifact into the container
COPY target/lab2p2026.jar lab2p2026.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","lab2p2026.jar"]
