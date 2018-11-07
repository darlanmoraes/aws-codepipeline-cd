FROM gradle:4.10-jdk10 AS build
COPY src /usr/src/app/src
COPY build.gradle /usr/src/app
COPY settings.gradle /usr/src/app
WORKDIR /usr/src/app
USER root
RUN gradle build


FROM openjdk:10.0-jdk-oracle
COPY --from=build /usr/src/app/build/libs/aws-codepipeline-cd-0.0.1-SNAPSHOT.jar /usr/app/aws-codepipeline-cd-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "/usr/app/aws-codepipeline-cd-0.0.1-SNAPSHOT.jar" ]