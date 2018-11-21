<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置验证规则？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="fl" style="color:#7f7f7f;margin-right:1%;margin-bottom:1%">
                        <p style="text-indent:2em">
                            验证规则在首页设置栏进行设置，点击首页导航栏 <i class="set"></i> 按钮进入基本设置，点击 <i class="verify"></i> 即可进入验证规则界面。
                        </p>
                        <p style="text-indent:2em">
                            进入验证规则界面后，点击界面左上角的 <i class="add"></i> 进入验证规则新增界面，在新增区域录入验证规则的各个参数，即可完成对验证规则的新增操作。其中：规则标识为后台区分该功能的类型，验证类为验证规则的类别，在驱动处理-验证规则类进行添加，验证规则为验证规则本身，如正则表达式等。输入验证类和验证规则时，二选一，必须输入验证类或验证规则的值。
                        </p>
                        <p style="color:#FC6767;text-indent:2em">
                            注意：在调用验证类时，必须确保该驱动处理-验证规则类下有数据，否则，无法执行新增操作。
                        </p>
                    </div>
                    <img src="img/nav-bar.png" class="fl" style="margin-left:22%; margin-top:20px;"/>
                    <img src="img/verifyS.png" class="fl" style="margin-left:3%;box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>验证规则在哪里使用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <p style="text-indent:2em">
                                在进行迁移、同步操作时，为了尽量避免字段有问题导致迁移/同步失败，增加了验证规则和清洗规则。验证规则用于为字段验证添加可选的验证规则。验证规则可在如下几个位置进行调用：
                            </p>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 配置库表字段清洗时使用</h2>
                                <p style="text-indent:2em">
                                    在业务模型-数据库-库表标注位置进行验证规则设置时，点击每一条库表字段，可以看到该字段的验证规则列表，点击新增按钮，即可完成验证规则的调用。
                                </p>
                                <img src="img/dbV.png" class="fl" style="width:95%;margin-top:10px;margin-bottom:10px;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 配置功能设计时使用</h2>
                                <p style="text-indent:2em">
                                    在业务模型-功能目录-功能设计下，添加迁移或同步的功能目录后，可添加保存的目录数据。选中映射关系后点击 <img src="img/icon-validate.png"/> 可添加验证规则，验证规则的设置方式和配置库表字段清洗的规则一样。
                                </p>
                                <img src="img/dataV.png" class="fl" style="width:95%;margin-top:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
