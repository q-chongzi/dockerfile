<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>统计类型的作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">点击首页导航栏 <i class="statistic"></i> 进入统计类型页面。</p>
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 统计类型大类</h2>
                                <p style="text-indent:2em">
                                    统计类型总共分为三个大类：操作统计，同步统计，迁移统计：<br/>
                                    <span style="display:inline-block;text-indent:4em">操作统计：对数据融合交换系统运行时功能操作的统计；</span><br/>
                                    <span style="display:inline-block;text-indent:4em">同步统计：对数据融合交换系统运行数据同步功能操作的统计；</span><br/>
                                    <span style="display:inline-block;text-indent:4em">迁移统计：对数据融合交换系统运行数据迁移功能操作的统计；</span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 统计类型小类</h2>
                                <p style="text-indent:2em">
                                    统计目录下分为四小类：时时统计，日报统计，月报统计，年报统计：<br/>
                                    <span style="display:inline-block;text-indent:4em">时时统计：监控数据融合交换系统运行时，以时为单位系统的运行情况；</span><br/>
                                    <span style="display:inline-block;text-indent:4em">日报统计：监控数据融合交换系统运行时，以日为单位系统的运行情况；</span><br/>
                                    <span style="display:inline-block;text-indent:4em">月报统计：监控数据融合交换系统运行时，以月为单位系统的运行情况；</span><br/>
                                    <span style="display:inline-block;text-indent:4em">年报统计：监控数据融合交换系统运行时，以年为单位系统的运行情况；</span>
                                </p>
                            </div>
                        </li>
                        <li style="margin-bottom:50px;">
                            <div class="info">
                                <h2 style="text-indent:2em">3. 查看操作统计-时时统计</h2>
                                <p style="text-indent:2em">
                                    点击导航栏的数据统计按钮，进入统计类型页面。点击左侧的操作统计下的时时统计，将出现该账号下的操作统计-时时统计图。
                                    点击右侧的饼图，会在下方显示具体的该应用下的功能目录名称，在中间模块将展示具体的操作统计数据。
                                </p>
                                <p style="text-indent:2em">
                                    其他三个统计，日报统计、月报统计、年报统计操作方法一样，只是统计的时间段分别为日、月、年。迁移统计和同步统计的操作一样的，只是当业务模型下的功能目录进行了迁移/同步操作后，才会显示出统计数据
                                    （<a onclick="migrate.loadInfo()" title="点击前往迁移/同步" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往迁移/同步</a>）。如下图：
                                </p>
                                <img src="img/statistics.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
