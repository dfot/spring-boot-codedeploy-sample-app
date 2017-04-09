FROM amazonlinux
EXPOSE 8080
ADD sample-app.jar /var/sample-app/sample-app.jar
ADD scripts/* scripts/
RUN yum -y install procps shadow-utils which nano e2fsprogs java-1.8.0-openjdk.x86_64
RUN yum -y install initscripts
RUN chmod +x scripts/*.sh
