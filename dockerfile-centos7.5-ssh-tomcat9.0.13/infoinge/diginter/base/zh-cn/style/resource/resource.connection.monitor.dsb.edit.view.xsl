<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="configure-fr-side info_page" style="top:10px;">
            <xsl:attribute name="title">
                <xsl:choose>
                    <xsl:when test="parameter.cludove/status = 'refuse'">
                        <xsl:text>拒绝：</xsl:text>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
                        <xsl:text>]的</xsl:text>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
                        <xsl:text>注册服务节点被拒绝</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="parameter.cludove/status = 'fail'">
                            <xsl:text>错误：</xsl:text>
                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
                            <xsl:text>[</xsl:text>
                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
                            <xsl:text>]的</xsl:text>
                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
                            <xsl:text>注册服务节点失败,原因是</xsl:text>
                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/reg_reason"/>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <a class="close-reveal-modal" onclick="$(this).parents('#serve_page').hide()">&#215;</a>
            <form class="configure-form" role="form">
                <h2 style="height:40px; line-height:40px; font-size:16px; color:#808080">
                    总线注册错误
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
                <div class="configure-fr-side-bottom" style="font-size:14px;">
                    <a href="javascript:void(0)" class="sub" style="line-height:30px;">
                        <xsl:attribute name="onclick">
                            processResourceMonitor('<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/code"/>','');
                            $("#serve_page").hide();
                        </xsl:attribute>
                        <xsl:text>重新注册</xsl:text>
                    </a>
                    <a href="javascript:void(0)" class="but" onclick="$(this).parents('#serve_page').hide()" style="line-height:30px;">取消</a>
                </div>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
