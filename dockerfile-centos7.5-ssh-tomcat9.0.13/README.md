# dockerfile

#### 项目介绍
dockerfile  构建 tomcat9 & jre10



#### 软件架构
Docker version 18.06.1-ce


#### 安装教程

1. docker build -t tomcat9 .
2. docker images


#### 使用说明

1. docker run -d -p 8090:8090 -v $(pwd)/infoinge/:/opt/apache-tomcat-9.0.13/webapps/infoinge --privileged=true --name <容器名> tomcat9
2. https://localhost:8090/infoinge
3. user/pwd : tomcat/tomcat

#### 参与贡献

1. Fork 本项目
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request


#### 码云特技

1. 使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2. 码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3. 你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4. [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5. 码云官方提供的使用手册 [http://git.mydoc.io/](http://git.mydoc.io/)
6. 码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
