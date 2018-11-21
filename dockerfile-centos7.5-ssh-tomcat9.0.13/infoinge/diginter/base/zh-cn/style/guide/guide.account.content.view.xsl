<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何设置帐号？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="fl" style="color:#7f7f7f;margin-right:1%;margin-bottom:1%">
                        <p style="text-indent:2em">
                            帐号管理在首页设置栏进行设置，点击首页导航栏 <i class="account_bar"></i> 按钮即可进入帐号管理界面开始设置账号。
                        </p>
                        <p style="text-indent:2em">
                            进入帐号管理界面后，点击界面左上角的 <i class="add"></i> 或点击 <img style="width:120px" src="img/new-account.png"/> 按钮进入帐号新增界面，在新增区域录入帐号的各个参数，即可完成对帐号的新增操作。<br/>其中：帐号名字为唯一登录用户名（不可为中文），一经提交，不可再次修改；帐号密码：为当前新增的帐号添加登录密码；帐号状态：账号状态为禁止时，该账号无效，无法使用数字立交；有效时间：该帐号在截至有效时间之前为有效帐号，有效时间一到，该帐号无效。
                        </p>
                    </div>
                    <img src="img/nav-bar.png" class="fl" style="margin-left:12%; margin-top:20px;"/>
                    <img src="img/account-setting.png" class="fl" style="margin-left:3%; box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>帐号的作用是什么？</p>
                </div>
                <div class="info">
                    <h2 style="margin-left:20px">1、登录数字立交</h2>
                    <div style="margin-left:20px;font-size:15px">
                        <p>
                            使用数字立交时，必须使用帐号密码登录，如图所示；通常要对帐号进行<span title="点击跳转权限设置指南" style="color:#1E90FF;text-decoration:underline;cursor: pointer" onclick="$('#accountBar li:nth-child(2) a').click();">权限设置</span>。
                        </p><br/>
                        <img style="margin-left:100px;box-shadow:0 0 3px #333;" src="img/sign-in-view.png"/>
                    </div>
                    <div class="info">
                        <h2 style="line-height: 50px">2、查看节点API时调用</h2>
                        <div style="margin-top:10px">
                            <img class="fl" style="width:30%;margin:0 auto;margin-left:2%;box-shadow:0 0 3px #333;" src="img/account-node.png"/>
                            <div class="fl" style="text-indent:2em;width:65%;margin-left:1%;margin-top:20px">
                                <p style="text-indent:2em;font-size:15px;line-height: 22px">
                                    点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击 <i class="integre"></i> 即可进入集成节点界面。点击界面左上角的 <i class="add"></i> 进入集成节点-资源定义新增界面，输入参数完成新增操作。新增完成后，点击资源定义数据，即可添加资源连接。在资源连接可输入帐号和密码（帐号和密码在相应节点的数字立交添加，并设置权限）。集群节点和总线节点添加帐号和密码的方式是类似的。如左图：
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="info" style="margin-top:530px">
                        <p style="text-indent:2em;font-size:15px;line-height: 22px">
                            在首页，点击底部 <img src="img/icon14-1.png" style="height:25px;width:25px;"/> 进入拓扑节点界面，点击总线节点  <img src="img/icon101.png" style="height:25px;width:25px;"/>  或集成节点 <img src="img/icon102.png" style="height:25px;width:25px;"/> 即可跳转至相应节点API界面，可查看该节点的API界面。如果该节点输入了帐号和密码，那么数字立交就会用该帐号和密码去访问该节点，显示相应的API界面。如下图：
                        </p>
                        <img src="img/colonyApi.png" style="width:95%;margin-left:2%;margin-top:10px;margin-bottom:30px;box-shadow:0 0 3px #333;"/>
                    </div>
                    <div class="info">
                        <h2 style="line-height: 50px">3、配置功能目录时调用</h2>
                        <p style="text-indent:2em;font-size:15px;line-height: 22px">在业务模型-功能目录下配置目录数据时，选择数据类型为讯枢，即可在资源定义下拉框中选择节点信息。如果选择的节点是集成节点/总线节点，而该节点有账号和密码，数字立交就会用该帐号和密码去访问相应节点，显示相应的符合要求的应用标识和功能目录选项。如下图：</p>
                        <div style="margin-left:20px;margin-top:20px;font-size:15px">
                            <img style="margin-left:1.1%;box-shadow:0 0 3px #333;width:96%;" src="img/permission-business.png"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
