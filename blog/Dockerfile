FROM java:8

COPY *.jar /app.jar

EXPOSE 8099

CMD ["---------server.port=8099-------------"]

ENTRYPOINT ["java","-jar","/app.jar"]