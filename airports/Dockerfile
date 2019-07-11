FROM java:8
COPY airports-assembly-1.0.1.jar /opt/airports-assembly-1.0.1.jar
RUN cd /opt && ls
WORKDIR /opt
CMD ["java", "-jar", "airports-assembly-1.0.1.jar"]
