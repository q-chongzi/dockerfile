<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>首页弹窗的作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li class="clearfix">
                            <img class="fl" src="img/serve_dsb.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;height:250px;"/>
                            <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                                <h2 style="text-indent:2em">1. 服务总线</h2>
                                <p style="text-indent:2em">
                                    用户添加总线节点后，会向总线节点发送请求，总线节点会收到总线请求，如左图：
                                    （<a onclick="dsb.loadInfo()" title="点击前往总线节点" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往总线节点</a>）：
                                </p>
                            </div>
                        </li>
                        <li class="clearfix" style="margin-top:20px;">
                            <img class="fl" src="img/monitor.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;height:250px;"/>
                            <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                                <h2 style="text-indent:2em">2. 系统监视</h2>
                                <p style="text-indent:2em">
                                    系统监视代表主机的软件使用率，包括线程池使用率、内存使用率和系统负载。折现图会1分钟更新一次，拼接最新的资源信息，纵轴为时间，横轴为资源使用次数。
                                </p>
                            </div>
                        </li>
                        <li class="clearfix" style="margin-top:20px;">
                            <img class="fl" src="img/warning.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;height:250px;"/>
                            <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                                <h2 style="text-indent:2em">3. 异常报警</h2>
                                <p style="text-indent:2em">
                                    当系统有异常信息时，首页异常报警会显示提示信息。例如数据库的数据标注页面无法显示的提示信息，如左图：
                                </p>
                            </div>
                        </li>
                        <li class="clearfix" style="margin-top:20px;margin-bottom:50px;">
                            <img class="fl" src="img/bug.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;height:250px;"/>
                            <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                                <h2 style="text-indent:2em">4. 数据异常</h2>
                                <p style="text-indent:2em">
                                    对数据库表的字段添加了验证规则时
                                    （<a onclick="verify.loadInfo()" title="点击前往添加验证规则" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往添加验证规则</a>），
                                    当该字段有数据不符合验证规则时（如非空验证），数据异常就会有提示信息；
                                    在功能设计添加的验证规则
                                    （<a onclick="migrate.loadInfo()" title="点击前往功能设计添加验证规则" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往功能设计添加验证规则</a>）
                                    当该功能目录运行了定时任务
                                    （<a onclick="serve.loadInfo()" title="点击前往业务模型-业务模型-服务功能配置" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往业务模型-业务模型-服务功能配置</a>）
                                    或用作业运行了该功能目录
                                    （<a onclick="jobs.loadInfo()" title="点击前往运行作业" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往运行作业</a>），
                                    且该字段有数据不符合验证规则时（如非空验证），
                                    数据异常才会有提示信息，同时迁移/同步也不会继续执行。
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
