FROM fabric8/java-centos-openjdk8-jdk
EXPOSE 8080
COPY batch-scheduler-api-0.0.1.war /deployments/batch-scheduler-api-0.0.1.jar
