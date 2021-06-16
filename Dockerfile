FROM centos:7

RUN yum install epel-release -y
RUN yum install java-1.8.0-openjdk-devel -y
RUN yum install git -y
RUN yum repolist
RUN cd  /opt
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
RUN ./mvnw package
EXPOSE 8080
CMD java -jar target/*.jar
