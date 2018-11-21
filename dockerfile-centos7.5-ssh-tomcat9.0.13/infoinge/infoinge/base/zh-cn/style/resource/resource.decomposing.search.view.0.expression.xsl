<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>IDENTIFIER !='</xsl:text>
        <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
        <xsl:text>' and TYPE='Hinge' and (IS_DSB !='true' or count(IS_DSB) = 0) and (REG_STATUS ='regist' or REG_STATUS ='refuse')</xsl:text>
    </xsl:template>
</xsl:stylesheet>