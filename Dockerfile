FROM maven:3.5.4-jdk-8-alpine as maven

ADD target/Final-0.0.1-SNAPSHOT.jar /data/Final-0.0.1-SNAPSHOT.jar

ADD hello-world.yml /data/hello-world.yml

CMD java -jar /data/Final-0.0.1-SNAPSHOT.jar server /data/hello-world.yml

EXPOSE 8090
