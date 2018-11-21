<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何设置/生成集成节点？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img class="fl" src="img/integration-setting.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            集成节点在业务模型内进行设置，点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击 <i class="integre"></i> 即可进入集成节点界面。
                        </p>
                        <p style="text-indent:2em">
                            进入集成节点界面后，点击界面左上角的 <i class="add"></i> 进入集成节点-资源定义新增界面，在新增区域录入集成节点的各个参数，即可完成对集成节点-资源定义的新增操作。然后点击资源定义数据，即可添加资源连接。
                        </p>
                        <p style="text-indent:2em">
                            新增资源连接数据时，连接标识是集成节点的唯一标识，不可修改；资源类型默认Infoinge，不可修改；服务地址是集成节点服务器的IP；连接模板是集成节点的http地址（类似：http://192.168.1.105:8081/）；维护电话和维护邮箱是便于系统在发现异常时通知相关人员解决问题，多个电话或者邮箱以逗号分隔。
                        </p>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何使用集成节点？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 配置功能目录时调用</h2>
                                <p style="text-indent:2em">
                                    在业务模型-功能目录下配置目录数据时，选择数据类型为讯枢，即可在资源定义下拉框中选择对应的节点，完成对集成节点的调用。
                                </p>
                                <img src="img/colonyC.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 查看集成节点API</h2>
                                <p style="text-indent:2em">
                                    在首页，点击底部 <img src="img/icon14-1.png" style="height:25px;width:25px;"/> 进入拓扑节点界面，点击集成节点 <img src="img/icon102.png" style="height:25px;width:25px;"/> 即可跳转至集成节点API界面，可查看该集成节点的API界面。如图：
                                </p>
                                <img src="img/colonyApi.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">3. 总线同步后显示为集成节点</h2>
                                <p style="text-indent:2em">
                                    添加总线节点后，会向总线节点发送请求，总线节点会收到总线请求，待总线节点同意后，在总线节点处，会显示自己为集成节点。如下图：
                                </p>
                                <img src="img/jicheng-view.png" style="width:95%;margin-top:10px;margin-bottom:30px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
