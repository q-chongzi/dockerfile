<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest">
            <xsl:sort select="identifier" order="ascending"/>
            <xsl:if test="reg_status = 'refuse'">
                <li class="serve_dsb_data">
                    <!--<i><xsl:number value="position()" /></i>-->
                    <a href="javascript:void(0)" class="refuse no_time">
                        <xsl:attribute name="onclick">flag = 1; onResourceMonitorDsbEdit('<xsl:value-of select="code"/>','refuse')</xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:text>拒绝：</xsl:text>
                            <xsl:value-of select="name"/>
                            <xsl:text>[</xsl:text>
                            <xsl:value-of select="identifier"/>
                            <xsl:text>]的</xsl:text>
                            <xsl:value-of select="host"/>
                            <xsl:text>注册服务节点被拒绝</xsl:text>
                        </xsl:attribute>
                        <span>
                       		<xsl:attribute name="id"><xsl:value-of select="code"/></xsl:attribute>
                            <xsl:text>拒绝：</xsl:text>
                            <xsl:value-of select="name"/>
                            <xsl:text>[</xsl:text>
                            <xsl:value-of select="identifier"/>
                            <xsl:text>]的</xsl:text>
                            <xsl:value-of select="host"/>
                            <xsl:text>注册服务节点被拒绝</xsl:text>
                        </span>
                    </a>
                </li>
            </xsl:if>
            <xsl:if test="reg_reason != ''">
                <li class="serve_dsb_data">
<!--                     <i><xsl:number value="position()" /></i> -->
                    <a href="javascript:void(0)" class="refuse no_time">
                        <xsl:attribute name="onclick">flag = 1; onResourceMonitorDsbEdit('<xsl:value-of select="code"/>','fail')</xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:text>错误：</xsl:text>
                            <xsl:value-of select="name"/>
                            <xsl:text>[</xsl:text>
                            <xsl:value-of select="identifier"/>
                            <xsl:text>]的</xsl:text>
                            <xsl:value-of select="host"/>
                            <xsl:text>注册服务节点失败,原因是</xsl:text>
                            <xsl:value-of select="reg_reason"/>
                        </xsl:attribute>
                        <span>
                    	    <xsl:attribute name="id"><xsl:value-of select="code"/></xsl:attribute>
                            <xsl:text>错误：</xsl:text>
                            <xsl:value-of select="name"/>
                            <xsl:text>[</xsl:text>
                            <xsl:value-of select="identifier"/>
                            <xsl:text>]的</xsl:text>
                            <xsl:value-of select="host"/>
                            <xsl:text>注册服务节点失败,原因是</xsl:text>
                            <xsl:value-of select="reg_reason"/>
                        </span>
                    </a>
                </li>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
