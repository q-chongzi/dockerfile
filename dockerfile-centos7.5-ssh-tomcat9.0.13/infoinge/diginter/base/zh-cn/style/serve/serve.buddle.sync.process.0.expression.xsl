<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询本机资源是否需要同步-->
        <xsl:text>REG_STATUS = 'work' AND (IS_LOCKED ='false' OR IS_LOCKED IS NULL) AND IS_ACTIVE = 'true' AND TYPE='Hinge' AND IDENTIFIER='</xsl:text>
            <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
