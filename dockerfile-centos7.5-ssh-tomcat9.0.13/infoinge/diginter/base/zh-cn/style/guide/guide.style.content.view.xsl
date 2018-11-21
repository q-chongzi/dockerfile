<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置界面风格？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="fl" style="color:#7f7f7f;margin-right:1%;margin-bottom:1%">
                        <p style="text-indent:2em">
                            界面风格在首页设置栏进行设置，点击首页导航栏 <i class="set"></i> 按钮进入基本设置，点击 <i class="style"></i> 即可进入界面风格界面。
                        </p>
                        <p style="text-indent:2em">
                            进入界面风格界面后，点击界面左上角的 <i class="add"></i> 进入界面风格新增界面，在新增区域录入界面风格的各个参数，即可完成对界面风格的新增操作。其中：风格标识参数用于区分风格类型，风格名字：用于对风格的命名；风格描述：用于描述当前风格的特点。
                        </p>
                    </div>
                    <img src="img/nav-bar.png" class="fl" style="margin-left:22%; margin-top:20px;"/>
                    <img src="img/style.png" class="fl" style="margin-left:3%;box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>界面风格有什么作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <p style="text-indent:2em">
                                界面风格用于为迅枢当前配置的应用功能下添加自定义风格。
                            </p>
                            <p style="text-indent:2em">
                                新增的界面风格会在diginter文件夹下生成以风格标识为名字的文件夹，可以在当前文件下进行一系列的功能配置。
                            </p>
                            <img src="img/style-1.png" class="fl" style="margin-left:5%; margin-top:20px;"/>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
