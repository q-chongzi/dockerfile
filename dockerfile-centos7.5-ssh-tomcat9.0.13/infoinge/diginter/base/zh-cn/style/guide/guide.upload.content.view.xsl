<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何生成上传应用文件？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">
                        先将所要上传的文件打包到一个文件夹内，再以zip格式进行压缩，将压缩后的文件打包成一个以jar、buddle、xsl为后缀名的文件即可。buddle类型的文件结构请参照infoinge应用文件结构。
                    </p>
                    <p style="color:#FC6767;text-indent:2em">
                        注意：上传文件中不能有空文件，否则将会报错。上传的buddle文件只能由zip格式的压缩文件改名得到，其它格式的buddle文件会上传失败！
                    </p>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何上传应用文件？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <p style="text-indent:2em">
                                    点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击文件上传按钮将在导航右侧出现 “选择文件”按钮，点击“选择文件”，在弹出框中选择要上传的文件，即完成了文件的上传。如下图：
                                </p>
                                <p style="text-indent:2em">
                                    上传后的文件，buddle类型文件上传到webapp中，xsl类型文件上传到对应应用webapp/exchange/base/zh-cn/style文件夹下，jar类型文件上传到webapp/WEB-INF/lib下面。
                                </p>
                                <img src="img/uploadBuddle.png" style="width:95%;margin-top:10px;margin-bottom:30px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
