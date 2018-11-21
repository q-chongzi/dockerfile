<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="localhost_identifier">
            <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
        </xsl:variable>
        <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest[identifier != $localhost_identifier]">
            <xsl:sort select="identifier" order="ascending"/>
            <li>
                <a href="javascript:void(0)">
                    <xsl:attribute name="onclick">flag = 1; onResourceMonitorEdit('<xsl:value-of select="code"/>')</xsl:attribute>
                    <span>
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
