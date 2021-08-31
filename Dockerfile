FROM openjdk:11
RUN groupadd -r spring && useradd -r -gspring spring
USER spring:spring
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]