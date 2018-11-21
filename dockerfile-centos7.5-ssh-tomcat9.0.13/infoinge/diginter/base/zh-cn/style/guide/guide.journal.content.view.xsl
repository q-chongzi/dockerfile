<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>监控日志的作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">点击首页导航栏 <i class="monitor"></i> 进入监控日志页面</p>
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 监控日志分类 </h2>
                                <p style="text-indent:2em">
                                    日志列表分为六类：异常日志，操作日志，迁移日志，同步日志，定时任务，登录日志。
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 如何使用监控日志 </h2>
                                <p style="text-indent:2em">
                                    右侧显示日志分类下日志信息，用户可以通过选择时间查看以往的日志记录。点击 <i class="job_check"></i> 按钮可以查看上下文信息。进行迁移/同步后才能看到迁移日志和同步日志
                                    （<a onclick="migrate.loadInfo()" title="点击前往迁移/同步" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往迁移/同步</a>）,
                                    进行功能目录定时运行任务
                                    （<a onclick="migrate.loadInfo()" title="点击前往运行定时任务" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往运行定时任务</a>）
                                    后才能看到定时任务日志。监控日志如下图：
                                </p>
                                <img src="img/journal.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
