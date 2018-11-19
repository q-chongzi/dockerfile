# 选择一个已有的os镜像作为基础
FROM 182.150.22.47:9999/zqiu-registry/centos7.5-os-zq
 # 镜像的作者
MAINTAINER zqiu "zq@zonsure.com"
RUN yum install -y https://repo.mysql.com/yum/mysql-5.7-community/docker/x86_64/mysql-community-server-minimal-5.7.24-1.el7.x86_64.rpm && \
    yum install -y https://repo.mysql.com/yum/mysql-tools-community/el/7/x86_64/mysql-shell-8.0.13-1.el7.x86_64.rpm  && \ 
		yum install -y openssh-server sudo &&  \
		mkdir /docker-entrypoint-initdb.d 
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key && \
    ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key && \
    echo "root:111111" |chpasswd
RUN mkdir -p /var/run/sshd && \
    mkdir -p /var/log/supervisor
VOLUME /var/lib/mysql
COPY docker-entrypoint.sh /entrypoint.sh
COPY healthcheck.sh /healthcheck.sh
COPY sshd.sh /docker-entrypoint-initdb.d/sshd.sh 
RUN chmod a+x entrypoint.sh && \
    chmod a+x /docker-entrypoint-initdb.d/sshd.sh
ENTRYPOINT ["/entrypoint.sh"]
HEALTHCHECK CMD /healthcheck.sh
EXPOSE 22 3306 33060  
CMD ["mysqld"]










