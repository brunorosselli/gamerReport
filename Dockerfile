FROM openjdk:17-slim

WORKDIR /app

COPY build/libs/*.jar /app/gamer.report.jar

#RUN chmod +x /wait-for-it.sh

EXPOSE 8080

CMD ["java", "-jar", "gamer.report.jar"]