FROM openjdk:17-slim

WORKDIR /app

ARG JAR_FILE

COPY target/${JAR_FILE} /app/gReport.jar
COPY wait-for-it.sh /wait-for-it.sh

EXPOSE 8080

CMD ["java", "-jar", "gReport.jar"]