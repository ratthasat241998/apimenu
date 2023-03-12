FROM openjdk:17-jdk-slim
COPY target/menu-0.0.1-SNAPSHOT.jar menu.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/menu.jar"]