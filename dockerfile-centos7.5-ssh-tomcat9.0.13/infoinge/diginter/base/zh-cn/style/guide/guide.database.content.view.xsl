<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置数据库？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img class="fl" src="img/dbS.png" style="width:60%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:38%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            数据库在首页业务模型内进行设置，点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击 <i class="database"></i> 即可进入数据库界面。
                        </p>
                        <p style="text-indent:2em">
                            进入数据库界面后，点击界面左上角的 <i class="add"></i> 进入数据库新增界面，在新增区域录入数据库的各个参数，即可完成对数据库的新增操作。如左图：
                        </p>
                        <p style="text-indent:2em">
                            各数据库的连接模板如下：<br />
                            <span style="display:block;text-indent:4em">Mysql：jdbc:mysql://HOST:PORT/INSTANCE；</span>
                            <span style="display:block;text-indent:4em">Oracle：jdbc:oracle:thin:@HOST:PORT:INSTANCE；</span>
                            <span style="display:block;text-indent:4em">Sqlserver：jdbc:sqlserver://HOST:PORT;databaseName=INSTANCE；</span>
                            <span style="display:block;text-indent:4em">Postgresql： jdbc:postgresql://HOST:PORT/INSTANCE；</span>
                        </p>
                        <p style="text-indent:2em">
                            方案标识通常指schema或者用户名，例如：<br />
                            <span style="display:block;text-indent:4em">Mysql：数据库名称；</span>
                            <span style="display:block;text-indent:4em">Oracle：用户名称，如DIP（有管理员权限）；</span>
                            <span style="display:block;text-indent:4em">Sqlserver：dbo；</span>
                            <span style="display:block;text-indent:4em">Postgresql：public；</span>
                        </p>
                        <p style="text-indent:2em">
                            实例标识通常指数据库名字或者服务名：<br />
                            <span style="display:block;text-indent:4em">Mysql：数据库名称；</span>
                            <span style="display:block;text-indent:4em">Oracle：数据库的sid（如orcl ）；</span>
                            <span style="display:block;text-indent:4em">Sqlserver：用户名，如admin；</span>
                            <span style="display:block;text-indent:4em">Postgresql：用户名，如postgres；</span>
                        </p>
                        <p style="color:#FC6767;text-indent:2em">
                            注意：一条资源定义数据下只能有一种数据库结构！即在同一资源定义下添加多条资源连接数据时，它们连接的不同数据库，应该相当于是一个数据库！
                        </p>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>备份数据库的作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">
                        备份数据库的作用是防止主数据库在运行过程中发生宕机的突发情况，在数字立交运行过程中，若主数据库突然宕掉，数字立交会自动连接到备份数据库，以保证数据库能正常使用，同时也能给予运维人员充足的时间进行维护。
                    </p>
                    <p style="text-indent:2em">
                        备份数据库的配置操作和主数据库类似，但是服务地址必须和主数据库的不同！点击 <i class="database2"></i> 进入备份数据库的资源连接配置界面，输入服务地址、服务端口、访问帐号和访问密码4个参数即可完成新增操作。
                    </p>
                    <p style="color:#FC6767;text-indent:2em">
                        注意：要注意保持主数据库和备份数据库的统一性，他们的数据库结构必须一致！
                    </p>
                    <p style="text-indent:2em">
                        添加备份数据库时，需要修改E:<![CDATA[\]]>\infoinge<![CDATA[\]]>\src<![CDATA[\]]>\main<![CDATA[\]]>\webapp<![CDATA[\]]>\WEB-INF<![CDATA[\]]>\conf的parameter.properties文件，把negative数据的注释去掉，注意修改ip和端口！
                    </p>
                    <img src="img/database-1.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>数据抽样的作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">
                        数据库的资源连接数据点击 <img src="img/db_sampling.png" style="vertical-align: middle;"/> 按钮，可完成数据抽样。数字立交会自动下载名为sql.txt 的文件，里面包含该数据库连接的所有的数据库表和所有数据。如下图所示：
                    </p>
                    <img src="img/sampling_text.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何使用数据库？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 配置功能目录时调用</h2>
                                <p style="text-indent:2em">
                                    在业务模型-功能目录下配置目录数据时，选择数据类型为数据库，并选择定义好的数据库资源定义，即可在数据库表下拉框中选择对应的库表，完成对数据库的调用。
                                </p>
                                <img src="img/dataS.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 查看库表结构时使用</h2>
                                <p style="text-indent:2em">
                                    在业务模型-数据库-资源连接位置，点击 <i class="label"></i> 进入该数据库的数据标注界面，即可查看该数据库的库表结构。
                                </p>
                                <img src="img/bdStructure.png" style="width:95%;margin-top:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">3. 添加验证规则和清洗规则</h2>
                                <p style="text-indent:2em">
                                    点击 <i class="label"></i> 进入该数据库的数据标注界面，点击一条库表字段可以看到该字段的验证规则列表，点击新增按钮，可以添加验证规则
                                    （<a onclick="verify.loadInfo()" title="点击前往验证规则" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往验证规则</a>）。
                                    点击验证规则可以看到该验证规则下的清洗规则
                                    （<a onclick="cleanout.loadInfo()" title="点击前往清洗规则" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往清洗规则</a>），
                                    对清洗规则进行修改或设置后会只显示设置后的清洗规则。
                                </p>
                                <img src="img/v_c.png" style="width:95%;margin:10px 0 30px 0;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
