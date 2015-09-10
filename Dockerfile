FROM java:7

ENV FOO bar
RUN apt-get update
RUN apt-get install -y vim
COPY src/ /home/root/javahelloworld/src
RUN javac -d bin /home/root/javahelloworld/src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

