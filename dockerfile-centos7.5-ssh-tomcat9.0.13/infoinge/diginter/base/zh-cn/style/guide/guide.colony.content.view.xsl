<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置集群节点？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img class="fl" src="img/colony.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            集群节点在业务模型内进行设置，点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击 <i class="colony"></i> 即可进入集群节点界面（只有数字立交.集群版才能看见和新增集群节点）。
                        </p>
                        <p style="text-indent:2em">
                            集群节点有一条默认的资源定义和资源连接数据，不可删除。点击资源定义数据后点击 <i class="add"></i> 进入资源连接-新增界面，默认显示资源定义数据的配置，在此基础上修改参数值后，即可完成对集群节点的资源连接数据的新增操作。如左图：
                        </p>
                        <p style="text-indent:2em">
                            新增资源连接数据时，连接标识是集群节点的唯一标识，不可修改；资源类型默认Infoinge，不可修改；服务地址是讯枢服务器的IP；连接模板是访问讯枢的http地址（例如：http://192.168.1.103:8081/）；维护电话和维护邮箱是便于系统在发现异常时通知相关人员解决问题，多个电话或者邮箱以逗号分隔。
                        </p>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何使用集群节点？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 配置功能目录时调用</h2>
                                <p style="text-indent:2em">
                                    在业务模型-功能目录下配置目录数据时，选择数据类型为讯枢，即可在资源定义下拉框中选择对应的节点，完成对集群节点的调用。
                                </p>
                                <img src="img/colonyC.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 查看集群节点API</h2>
                                <p style="text-indent:2em">
                                    在首页，点击导航栏 <img src="img/guideIcon.png"/> 进入操作指南界面，点击“接口手册”即可跳转至集群节点API界面，即可查看该集群节点的相关功能。如图：
                                </p>
                                <img src="img/colonyApi.png" style="width:95%;margin-top:10px;margin-bottom:30px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
