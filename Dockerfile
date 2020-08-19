FROM openjdk:alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
EXPOSE 8080
WORKDIR /apps
COPY batch-scheduler-api-0.0.1.war .
COPY empty.log target\
# Tell docker that all future commands should run as the appuser user
USER appuser
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "batch-scheduler-api-0.0.1.war"]
