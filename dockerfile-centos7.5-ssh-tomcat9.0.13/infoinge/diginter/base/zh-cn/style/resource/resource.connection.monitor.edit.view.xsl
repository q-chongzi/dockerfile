<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="configure-fr-side info_page" style="top:10px;">
            <a class="close-reveal-modal" onclick="$(this).parents('#serve_page').hide()">&#215;</a>
            <form class="configure-form" role="form">
                <h2 style="height:40px; line-height:40px; font-size:16px; color:#808080">
                    服务注册详情
                </h2>
                <hr/>
                <p>连接名字：
                    <span>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
                    </span>
                </p>
                <p>连接标识：
                    <span>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
                    </span>
                </p>
                <p>注册状态：
                    <span>
                        <xsl:choose>
                            <xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'regist'">
                                <xsl:text disable-output-escaping="yes">注册</xsl:text>
                            </xsl:when>
                            <xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'work'">
                                <xsl:text disable-output-escaping="yes">工作</xsl:text>
                            </xsl:when>
                            <xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'refuse'">
                                <xsl:text disable-output-escaping="yes">拒绝</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text disable-output-escaping="yes">未注册</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </span>
                </p>
                <p>服务地址：
                    <span>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
                    </span>
                </p>
                <p>服务端口：
                    <span>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/port"/>
                    </span>
                </p>
                <p>连接模板：
                    <span>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>
                    </span>
                </p>
                <div style="font-size:14px;" class="configure-fr-side-bottom">
                    <a href="javascript:void(0)" class="sub" style="line-height:30px;">
                        <xsl:attribute name="onclick">
                            processResourceMonitor('<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/code"/>','work');
                            $("#serve_page").hide();
                        </xsl:attribute>
                        <xsl:text>允许注册</xsl:text>
                    </a>
                    <a href="javascript:void(0)" class="sub" style="line-height:30px;background:#d51111">
                        <xsl:attribute name="onclick">
                            processResourceMonitor('<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/code"/>','refuse');
                            $("#serve_page").hide();
                        </xsl:attribute>
                        <xsl:text>拒绝注册</xsl:text>
                    </a>
                    <a href="javascript:void(0)" class="but" onclick="$(this).parents('#serve_page').hide()" style="line-height:30px;">取消</a>
                </div>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
