FROM java:8
COPY airports-assembly-1.0.1.jar /opt/airports-assembly-1.0.1.jar
# COPY run_airports.sh /opt/run_airports.sh
# ARG APP_JAR="airports-assembly-1.0.1.jar"
# ENV APPLICATION="${APP_JAR}"
WORKDIR /opt
#CMD ["/opt/run_airports.sh", ${APPLICATION}]
CMD ["java", "-jar", "airports-assembly-1.0.1.jar"]