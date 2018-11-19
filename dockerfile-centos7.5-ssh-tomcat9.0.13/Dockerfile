FROM 182.150.22.47:9999/zqiu-registry/centos7.5-ssh-ifconfig-zq
# 签名
MAINTAINER zqiu	zq@zonsure.com
RUN yum install -y epel-release && \
    yum install -y supervisor

WORKDIR /opt/

ADD apache-tomcat-9.0.13.tar.gz /opt/
ADD jre-10.0.1_linux-x64_bin.tar.gz /opt/
ADD tomcat-users.xml /opt/apache-tomcat-9.0.13/conf/
ADD context.xml /opt/apache-tomcat-9.0.13/webapps/manager/META-INF/
ADD web.xml /opt/apache-tomcat-9.0.13/webapps/manager/WEB-INF/
ENV JRE_HOME /opt/jre-10.0.1
ENV CATALINA_HOME /opt/apache-tomcat-9.0.13
RUN mkdir -p /etc/supervicor
COPY supervisord.conf /etc/supervisor/

EXPOSE 22 8080 9001

ENTRYPOINT supervisord -c /etc/supervisor/supervisord.conf 
