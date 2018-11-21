<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--删除总线时,查询本机资源连接-->
        <xsl:choose>
            <xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/is_dsb = 'true' and cludove.crest.spruce.resource_connection[1]/record.crest/is_locked != 'true'">
                <xsl:text>IDENTIFIER ='</xsl:text>
                <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                <xsl:text>' AND IS_ACTIVE= 'true'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>1=-1</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
