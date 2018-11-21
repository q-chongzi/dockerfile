<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="localhost_identifier">
            <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
        </xsl:variable>
        <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest[identifier != $localhost_identifier and reg_status != 'work']">
            <xsl:sort select="identifier" order="ascending"/>
            <li class="serve_dsb_data">
                <!--<i><xsl:number value="position()" /></i>-->
                <a href="javascript:void(0)" class="no_time">
                    <xsl:attribute name="onclick">flag = 1; onResourceMonitorEdit('<xsl:value-of select="code"/>')</xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="name"/>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="identifier"/>
                        <xsl:text>]的</xsl:text>
                        <xsl:value-of select="host"/>
                        <xsl:text>请求注册为服务节点</xsl:text>
                    </xsl:attribute>
                    <span>
                    	<xsl:attribute name="id"><xsl:value-of select="code"/></xsl:attribute>
                        <xsl:value-of select="name"/>
                        <xsl:text>[</xsl:text>
                            <xsl:value-of select="identifier"/>
                        <xsl:text>]的</xsl:text>
                        <xsl:value-of select="host"/>
                        <xsl:text>请求注册为服务节点</xsl:text>
                    </span>
                </a>
            </li>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
