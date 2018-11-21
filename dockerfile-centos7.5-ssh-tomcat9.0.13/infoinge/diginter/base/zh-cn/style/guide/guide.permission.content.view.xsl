<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何设置权限？</p>
                </div>
                <div class="configure-fl2-top-con">
                    <div class="info">
                        <p style="font-size:18px;color:#333333;line-height: 30px">1、新增功能目录数据添加权限</p>
                        <div style="margin-top:20px">
                            <img src="img/catalog-setting.png" class="fl" style="width:30%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                            <div class="fl" style="text-indent:2em;width:68%;color:#7f7f7f;margin-left:1%;margin-top:20px">
                                <p>当在业务模型下-功能目录新增数据的时候，可以在功能目录/目录数据选择判断权限为是，即代表着该功能目录/目录数据需要权限才能进行操作。如图：</p>
                                <p>如果功能目录的是否权限为否，那么该条功能目录下的所有目录数据都不需要判断权限。</p>
                                <p>要为某条目录数据添加权限，需要添加目录类型为服务功能的功能目录（只有它的第一条目录数据是用于判断权限的），该目录数据的名字必须和需要判断权限的目录数据的名称一致！如果该目录数据需要判断多个权限，就需要建立多个服务功能的功能目录，再为该目录数据添加其它的判断权限的目录数据。</p>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top:360px;text-indent:2em;">对目录数据添加好权限设置后，可在基本设置-权限设置页面，选择业务模型，可对该目录数据进行权限设置，如下图：</div>
                    <div style="margin-top:12px;">
                        <img src="img/quanxian.png" class="fl" style="width:85.5%;margin-left:3%;margin-right:2%;box-shadow:0 0 3px #333;"/>
                    </div>
                    <div class="configure-fl2-top" style="margin-top:210px;border-top: 1px dashed #333;">
                        <p style="font-size:18px;color:#333333;line-height: 50px">2、赋予权限调用</p>
                        <div>
                            <div style="color:#7f7f7f;margin-right:1%;margin-bottom:1%">
                                <p style="text-indent:2em">
                                    点击导航栏 <i class="account_bar"></i> 按钮即可进入帐号管理界面。
                                </p>
                            </div>
                            <!--<img src="img/nav-bar.png" class="fl" style="margin-left:3%; box-shadow:0 0 3px #333;"/>-->
                        </div>
                        <div>
                            <div style="color:#7f7f7f;margin-right:1%;margin-bottom:1%;">
                                <p style="text-indent:2em">
                                    在帐号管理界面后，对帐号数据点击 <i class="permission"></i> 按钮进入当前帐号的权限设置界面。
                                </p>
                            </div>
                            <img src="img/permission-key.png" class="fl" style="margin-left:3%; box-shadow:0 0 3px #333;"/>
                        </div>
                        <div>
                            <div style="color:#7f7f7f;margin-right:1%;margin-bottom:1%;margin-top:13%">
                                <p style="text-indent:2em">
                                    在权限设置界面，可在下拉框中选择不同类型的权限设置，在勾选框中通过点击的方式对权限进行选中和取消操作，以此赋予或取消相应权限。点击左侧的帐号名字或 <i class="account"></i> 可以返回账号界面。
                                </p>
                            </div>
                            <img src="img/permission-setting.png" class="fl" style="width:85.5%;margin-left:3%;margin-right:2%; box-shadow:0 0 3px #333;"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;margin-top:260px">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>权限的作用是什么？</p>
                </div>
                <h2 style="line-height: 50px">1、使用数字立交时调用</h2>
                <div class="info">
                    <h2 style="margin-left:20px"></h2>
                    <div style="margin-left:20px;font-size:15px">
                        <p>
                            在帐号管理界面新增的帐号，可以为此帐号设置功能的权限。当用该帐号登录数字立交时，当前帐号只能操作具有相应权限的功能。
                        </p><br/>
                    </div>
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
                    <img src="img/colonyApi.png" style="width:85.5%;margin-left:3%;margin-right:2%;margin-top:1%;box-shadow:0 0 3px #333;"/>
                </div>
                <div class="info">
                    <h2 style="line-height: 50px">3、配置功能目录时调用</h2>
                    <p style="text-indent:2em;font-size:15px;line-height: 22px">在业务模型-功能目录下配置目录数据时，选择数据类型为讯枢，即可在资源定义下拉框中选择节点信息。如果选择的节点是集成节点/总线节点，而该节点有账号和密码，数字立交就会用该帐号和密码去访问相应节点，得到相应权限的应用标识和功能目录选项，以此完成对权限的调用。如下图：</p>
                    <div style="margin-left:20px;margin-top:20px;font-size:15px">
                        <img style="margin-left:1.8%;box-shadow:0 0 3px #333;width:86.5%;" src="img/permission-business.png"/>
                    </div>
                </div>
            </div>
            <br/>
        </div>
    </xsl:template>
</xsl:stylesheet>