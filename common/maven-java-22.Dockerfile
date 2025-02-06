FROM maven:3.9.9-eclipse-temurin-22-alpine
# Jenkins runs the container with a non-root user - Without other customization, the image uses /.m2 as Maven home directory (which the non-root user can't create and write into otherwise)
RUN mkdir /.m2 && chmod 777 /.m2