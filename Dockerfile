FROM java:8-jdk-alpine
COPY ./target/classes/*.properties ./
COPY ./target/classes/log4j2.xml ./
COPY ./target/web-api-jar-with-dependencies.jar ./
EXPOSE 5050
ENTRYPOINT ["java", "-jar", "web-api-jar-with-dependencies.jar"]
