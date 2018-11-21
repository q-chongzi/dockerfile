<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置语言支持？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="fl" style="color:#7f7f7f;margin-right:1%;margin-bottom:1%">
                        <p style="text-indent:2em">
                            语言支持在首页设置栏进行设置，点击首页导航栏 <i class="set"></i> 按钮进入基本设置，点击 <i class="language"></i> 即可进入语言支持界面。
                        </p>
                        <p style="text-indent:2em">
                            进入语言支持界面后，点击界面左上角的 <i class="add"></i> 进入语言支持新增界面，在新增区域录入语言支持的各个参数，即可完成对语言支持的新增操作。其中：语言名字参数用于设置语言类型，字符集参数用于设置字符属性，映射字符集用于设置映射字符集参数。
                        </p>
                    </div>
                    <img src="img/nav-bar.png" class="fl" style="margin-left:22%; margin-top:20px;"/>
                    <img src="img/languageS.png" class="fl" style="margin-left:3%;box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>语言支持有什么作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <p style="text-indent:2em">
                                语言支持是讯枢框架所支持的语言，对讯枢进行编译。目前讯枢实现了GB2312、GB2312格式的支持。
                            </p>
                            <img src="img/langS.png" class="fl" style="width:95%;height:100%;margin-top:5px;box-shadow:0 0 3px #333;"/>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
