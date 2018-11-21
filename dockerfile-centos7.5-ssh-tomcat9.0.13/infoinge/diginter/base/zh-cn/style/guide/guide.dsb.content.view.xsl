<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何设置/生成总线节点？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img class="fl" src="img/dsbS.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            总线节点在业务模型内进行设置，点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击 <i class="dsb"></i> 即可进入总线节点界面。
                        </p>
                        <p style="text-indent:2em">
                            进入总线节点界面后，点击界面左上角的 <i class="add"></i> 进入总线节点-资源定义新增界面，在新增区域录入总线节点的各个参数，即可完成对总线节点-资源定义的新增操作。然后点击资源定义数据，点击 <i class="add"></i> 即可添加资源连接数据。如左图：
                        </p>
                        <p style="text-indent:2em">
                            新增资源连接数据时，连接标识是总线节点的唯一标识，不可修改；资源类型默认Infoinge，不可修改；服务地址是总线节点服务器的IP；连接模板是总线节点的http地址（类似：http://192.168.1.110:8083/）；维护电话和维护邮箱是便于系统在发现异常时通知相关人员解决问题，多个电话或者邮箱以逗号分隔。
                        </p>
                        <p style="color:#FC6767;text-indent:2em">
                            注意：每个节点只能设置一个节点为总线节点！故总线节点的资源定义和资源连接数据都只能有一条。删除资源连接数据时，资源定义数据也会被删除！删除了总线节点后才能添加新的节点为总线节点。
                        </p>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何使用总线节点？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 配置功能目录时调用</h2>
                                <p style="text-indent:2em">
                                    在业务模型-功能目录下配置目录数据时，选择数据类型为讯枢，在资源定义下拉框中选择总线节点，将会登录总线节点的数据库，对该节点的业务模型-功能目录数据（只有有数据库元数据的功能目录才会显示）进行调用，以此完成对总线节点的调用。
                                </p>
                                <img src="img/colonyC.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 查看总线节点API</h2>
                                <p style="text-indent:2em">
                                    在首页，点击底部 <img src="img/icon14-1.png" style="height:25px;width:25px;"/> 进入拓扑节点界面，点击总线节点 <img src="img/icon101.png" style="height:25px;width:25px;"/> 即可跳转至总线节点API界面，可查看该总线节点的API界面。
                                </p>
                                <img src="img/colonyApi.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info clearfix">
                                <h2 style="text-indent:2em">3. 总线同步功能调用</h2>
                                <p style="text-indent:2em">
                                    添加总线节点后，会向总线节点发送请求，总线节点会收到总线请求。
                                    如果总线节点同意了，会开始进行总线同步，在总线节点会显示自己为集成节点；如果总线节点长期无回应，会显示总线节点拒绝了，可再次发起请求。如下图：
                                </p>
                                <img src="img/regist.png" style="display:block;width:60%;margin:10px auto;box-shadow:0 0 3px #333;"/>
                                <img class="fl" src="img/dsbS3.png" style="width:27%;margin-top:10px;margin-bottom:30px;box-shadow:0 0 3px #333;"/>
                                <div class="fl" style="width:72%;margin-left:1%;">
                                    <br/>
                                    <p style="text-indent:2em">
                                        把业务模型下想同步的功能（目录类型为服务功能）的第一条新增的目录数据的是否同步，修改为是，该目录数据就会开始同步了。同步成功后，会显示该目录数据的同步原因为：已同步，而在总线节点的业务模型下会显示同步的功能目录和目录数据。
                                    </p>
                                    <p style="text-indent:2em">
                                        删除该功能目录或目录数据后，总线节点的该数据也会被删除。如果删除了总线节点，就断开连接了；如果总线节点删除了相应的集成节点，会显示总线节点拒绝连接，可以再次重新注册。
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
