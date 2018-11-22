FROM 182.150.22.47:9999/zqiu-registry/centos7.5-os-zq
# 签名
MAINTAINER zqiu	zq@zonsure.com

WORKDIR /opt/

ADD apache-tomcat-9.0.13.tar.gz /opt/
ADD jre-10.0.1_linux-x64_bin.tar.gz /opt/
# RUN rm -rf /opt/apache-tomcat-9.0.13/conf/tomcat-users.xml
ADD tomcat-users.xml /opt/apache-tomcat-9.0.13/conf/
ADD context.xml /opt/apache-tomcat-9.0.13/webapps/manager/META-INF/
ADD web.xml /opt/apache-tomcat-9.0.13/webapps/manager/WEB-INF/

ENV JRE_HOME /opt/jre-10.0.1
ENV CATALINA_HOME /opt/apache-tomcat-9.0.13


EXPOSE 8080

ENTRYPOINT $CATALINA_HOME/bin/catalina.sh run
