FROM maven:3.9.6-eclipse-temurin-22-alpine
VOLUME /var/maven/.m2 /var/maven/.m2
ENV MAVEN_CONFIG=/var/maven/.m2
ENV MAVEN_OPTS="-Duser.home=/var/maven"