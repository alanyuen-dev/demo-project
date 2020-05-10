
FROM openjdk:14.0.1-jdk-slim

VOLUME /tmp

ARG JAVA_OPTS

ENV JAVA_OPTS=$JAVA_OPTS

ADD target/demo-project-0.0.1-SNAPSHOT.jar demo-project.jar

EXPOSE 8080

#ENTRYPOINT exec java $JAVA_OPTS -jar demo-project.jar

# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar demo-project.jar
