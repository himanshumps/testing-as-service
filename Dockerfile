FROM openjdk:alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
EXPOSE 8080
WORKDIR /apps
COPY batch-scheduler-api-0.0.1.war .
COPY target/empty.log target/empty.log
USER appuser
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "batch-scheduler-api-0.0.1.war"]
