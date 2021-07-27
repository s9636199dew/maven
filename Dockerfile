FROM maven:openjdk as mavenstage

WORKDIR /usr/mymavenprogramme

COPY . .

RUN mvn clean package


FROM store/oracle/jdk:11

WORKDIR /opt

COPY --from=mavenstage /usr/mymavenprogramme .

CMD java -jar target/my-app-1.0-SNAPSHOT.jar

