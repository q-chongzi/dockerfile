<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div id="job_one" class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何设置作业？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="fl" style="width:100%;color:#7f7f7f;margin-right:1%;">
                        <p style="text-indent:2em">
                            作业管理在业务模型栏进行设置，点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击 <i class="job"></i> 即可进入作业管理界面。
                        </p>
                        <p style="text-indent:2em">
                            进入作业管理界面后，点击界面左上角的 <i class="add"></i> 进入作业管理新增界面，在新增区域录入作业管理的各个参数，即可完成对作业管理的新增操作。
                            如下图，意味着该作业会从2018-01-24 00:00:00开始，每天的12点到18点，以50年的间隔时间定时执行一次。
                            设置定时运行为否，该定时任务就会停止运行。频度类型只能越改越小，如从时改为秒，不能从秒改为时。
                        </p>
                        <img src="img/jobS.png" style="width:95%;margin-top:10px;box-shadow:0 0 3px #333;"/>
                        <p style="text-indent:2em">
                            作业管理新增之后，点击查看作业功能 <i class="job_check"></i> 按钮进入作业功能新增界面，在新增区域录入功能目录的各个参数，即可完成对作业功能的新增操作
                            <span style="color:#FC6767;">(注意：只有目录类型为数据迁移或数据同步的功能目录才能进行作业功能；可添加多个功能目录，一次执行多条功能目录；在执行作业的时候，是根据作业功能的处理顺序来按照次序执行的)</span>。如下图：
                        </p>
                        <img src="img/jobS2.png" style="width:95%;margin-top:10px;box-shadow:0 0 3px #333;"/>
                        <p style="text-indent:2em">
                            进入作业管理界面后，如果设置的作业只用执行一次，
                            可以点击手工执行 <i class="job_run"></i> 按钮执行一次作业。点击后会显示如下图，会显示执行时间和操作结果。
                        </p>
                        <img src="img/job_run.png" style="width:95%;margin-top:10px;box-shadow:0 0 3px #333;"/>
                    </div>
                </div>
            </div>
            <div id="job_two" class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>作业怎么监控？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <p style="text-indent:2em">
                                点击首页导航栏 <i class="job_bar"></i> 按钮进入作业监控界面，可对设置的作业进行查看。
                                其中：正在进行、即将开始、休眠作业、已经结束这四个状态的区别如下：
                                <span style="display:block; text-indent:4em">当作业的是否执行为是，当前时间在开始时间到结束时间的时间段内时，该作业会显示在正在进行的作业列表；</span>
                                <span style="display:block; text-indent:4em">当作业的是否执行为是，当前时间比开始时间小0-5分钟时，该作业会显示在即将开始的作业列表；</span>
                                <span style="display:block; text-indent:4em">当作业的是否执行为是，该作业不属于其它3组作业列表时，该作业会显示在休眠作业的作业列表；</span>
                                <span style="display:block; text-indent:4em">当作业的是否执行为是，当前时间比结束时间大0-5分钟时，该作业会显示在已经结束的作业列表</span>
                            </p>
                                <img src="img/jMonitor.png" class="fl" style="width:95%;margin:10px 0 30px 0;box-shadow:0 0 3px #333;"/>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
