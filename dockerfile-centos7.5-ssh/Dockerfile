# 选择一个已有的os镜像作为基础
FROM 182.150.22.47:9999/zqiu-registry/centos7.5:1804
 
# 镜像的作者
MAINTAINER zqiu "zq@zonsure.com"
 
# 安装openssh-server和sudo软件包，并且将sshd的UsePAM参数设置成no
RUN yum install -y openssh-server sudo
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
 
 
# 下面这两句比较特殊，在centos6上必须要有，否则创建出来的容器sshd不能登录
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key && \
    ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key && \
    echo "root:111111" |chpasswd
 
# 启动sshd服务并且暴露22端口
RUN mkdir /var/run/sshd
EXPOSE 22
#启动容器时不加/bin/bash
CMD ["/usr/sbin/sshd","-D"]
