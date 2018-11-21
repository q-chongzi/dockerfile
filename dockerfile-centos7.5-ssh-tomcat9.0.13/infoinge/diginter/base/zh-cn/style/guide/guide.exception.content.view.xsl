<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何设置/生成异常响应？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img class="fl" src="img/exception-setting.png" style="width:29%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:70%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            异常响应在业务模型内进行设置，点击首页导航栏 <i class="busi_bar"></i> 按钮进入业务模型，点击 <i class="exception"></i> 即可进入异常响应界面。
                        </p>
                        <p style="text-indent:2em">
                            进入异常响应界面后，点击界面左上角的 <i class="add"></i> 进入异常响应新增界面，在新增区域录入异常响应的各个参数，即可完成对异常响应的新增操作。
                        </p>
                        <p style="text-indent:2em">
                            新增异常响应数据：<br />
                            <span style="display:block;text-indent:4em">处理顺序用于控制响应内容按照一定的顺序输出；</span>
                            <span style="display:block;text-indent:4em">输出条件用于为当前处理顺序定义一个输出条件，以便符合条件时才输出当前处理顺序的内容，用 <![CDATA[<xsl:if test="[输出条件]">...</xsl:if>]]> 标记根据当前配置输出响应项目；</span>
                            <span style="display:block;text-indent:4em">循环取值用于定义当前响应顺序中是否循环输出响应内容；</span>
                            <span style="display:block;text-indent:4em">选取条件是为了配合循环取值的定义，合在一起可以让讯枢输出 <![CDATA[<xsl:for-each select="[选取条件]">...</xsl:for-each>]]> 标记，用循环取值和选取条件以及响应顺序的相关配置可以代替功能目录的样式单；</span>
                            <span style="display:block;text-indent:4em">响应格式包括json、xml、html、text，根据业务需要选择；</span>
                            <span style="display:block;text-indent:4em">响应格式为json、xml、html时需要将最外层标记录入到起始符号和结束符号中；</span>
                            <span style="display:block;text-indent:4em">起始符号是用于包裹输出内容的特定符号，响应格式为json时可能是<![CDATA[“{”、“[”，]]>响应格式为xml、html时是<![CDATA[“<”]]>，响应格式为text时可根据需要自定义；</span>
                            <span style="display:block;text-indent:4em">结束符号是用于包裹输出内容的特定符号，响应格式为json时可能是“}”、“]”，响应格式为xml、html时是“>”，响应格式为text时可根据需要自定义。</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
