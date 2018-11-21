<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置清洗规则？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="fl" style="width:72%;color:#7f7f7f;margin-right:1%;">
                        <p style="text-indent:2em">
                            清洗规则在首页设置栏进行设置，点击首页导航栏 <i class="set"></i> 按钮进入基本设置，点击 <i class="cleanout"></i> 即可进入清洗规则界面。
                        </p>
                        <p style="text-indent:2em">
                            进入清洗规则界面后，点击界面左上角的 <i class="add"></i> 进入清洗规则新增界面，在新增区域录入清洗规则的各个参数，即可完成对清洗规则的新增操作。
                        </p>
                        <p style="text-indent:2em">
                            其中：规则名字：用于对清洗规则的命名；规则标识：规则标识为唯一标识，一经提交，不可再次修改；清洗类：在驱动处理处可添加 "数据清洗类"(<span style="color:#1E90FF;text-decoration:underline;cursor: pointer" onclick="$('#settingBar li:nth-child(1) a').click();">详情点击前往驱动处理指南</span>)，通过驱动名字对其进行调用。规则描述：用于描述当前添加的清洗规则。如右图：
                        </p>
                    </div>
                    <img src="img/nav-bar.png" class="fl" style="margin-left:22%; margin-top:20px;"/>
                    <img src="img/cleanout-regulation.png" class="fl" style="width:27%;margin-left:3%; box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/run.png) no-repeat left center;">
                    <p>清洗规则在哪里使用？</p>
                </div>

                <div class="info">
                    <h2>1. 设置验证规则下验证清洗时使用</h2>
                    <div style="margin-left:20px;font-size:15px">
                        <p style="line-height: 20px">
                            在业务模型-基本设置下进行<span title="点击跳转验证规则指南" style="color:#1E90FF;text-decoration:underline;cursor: pointer" onclick="$('#settingBar li:nth-child(6) a').click();">验证规则设置</span>时，点击选择一条验证规则，弹出验证清洗表，点击新增设置验证清洗，通过选择"清洗规则"完成对清洗规则的调用。如图所示：
                        </p>
                        <img style="box-shadow:0 0 3px #333;margin-top:10px" src="img/verify-cleanout-setting.png"/>
                    </div>
                </div>
                <br/><br/>
                <div class="info" style="margin-top:10px">
                    <h2>2. 配置库表字段验证时使用</h2>
                    <div style="margin-left:20px;font-size:15px">
                        <p style="line-height: 20px">
                            在数据库-数据标注下进行<span title="点击跳转数据管理指南" style="color:#1E90FF;text-decoration:underline;cursor: pointer">库表字段验证</span>时，对数据库字段添加验证规则后可添加清洗规则。点击验证规则将弹出清洗规则，默认显示该验证规则下的所有清洗规则，对清洗规则进行修改或设置后会只显示设置后的清洗规则。如图所示：
                        </p>
                        <img style="box-shadow:0 0 3px #333;margin-top:10px" src="img/field-verify-cleanout.png"/>
                    </div>
                </div>
                <br/><br/>
                <div class="info" style="margin-top:10px">
                    <h2>3. 配置功能设计时使用</h2>
                    <div style="margin-left:20px;font-size:15px">
                        <img class="fl" style="box-shadow:0 0 3px #333;width:30%;margin-top:10px" src="img/mode-cleanout-setting.png"/>
                        <div class="fl" style="text-indent:2em;width:68%;color:#7f7f7f;margin-left:1%;margin-top:20px">
                            <p style="line-height: 20px">
                                在业务模型-功能目录-功能设计下，添加迁移或同步的目录数据后，可添加保存的目录数据。选中映射关系后点击 <img src="img/icon-validate.png"/> 可添加验证规则和清洗规则，必须先添加验证规则才能添加清洗规则，清洗规则的设置方式和配置库表字段验证的规则一样。如图所示：
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
