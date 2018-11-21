<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="retrieve-con-tit">
            <p style="float:right;cursor:pointer" onclick="$('#show_contact').hide()">&#215;</p>
            <p>节点当前不能访问，请联系管理员</p>
        </div>
        <hr/>
        <br/>
        <div class="retrieve-con-txt" style="padding:50px 80px 0">
            <!--<h1 style="line-height:40px">请输入你需要修改的密码</h1>-->
            <form  role="form" class="form-horizontal">
                <div>
                    <label for="" style="font-weight:bold" >电话：</label>
                    <input type="text" class="user"  disabled="disabled" style="width:200px;background:#ffffff;border-top:none;border-right:none;border-left:none">
                        <xsl:attribute name="value">
                            <xsl:choose>
                                <xsl:when test="cludove.crest.spruce.contact/record.crest[type = 'telephone']/content !=''">
                                    <xsl:value-of select="cludove.crest.spruce.contact/record.crest[type = 'telephone']/content"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>暂无联系电话</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:attribute>
                    </input>
                </div>
                <div>
                    <label style="font-weight:bold" for="">邮箱：</label>
                    <input type="text" class="user" disabled="disabled" style="width:200px;background:#ffffff;border-top:none;border-right:none;border-left:none">
                        <xsl:attribute name="value">
                            <xsl:choose>
                                <xsl:when test="cludove.crest.spruce.contact/record.crest[type = 'email']/content !=''">
                                    <xsl:value-of select="cludove.crest.spruce.contact/record.crest[type = 'email']/content"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>暂无联系邮箱</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:attribute>
                    </input>
                </div>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
