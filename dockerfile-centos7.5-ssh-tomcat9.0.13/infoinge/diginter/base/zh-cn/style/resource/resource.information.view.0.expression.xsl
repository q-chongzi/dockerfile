<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="content">
        <xsl:if test="parameter.cludove/node_view = 'integration'">
            <xsl:text>(IS_DSB != 'true' or (count(IS_DSB) = 0 and REG_STATUS = 'work'))</xsl:text>
            <xsl:text> and (IS_LOCAL !='true' or count(IS_LOCAL) = 0)</xsl:text>
            <xsl:text> and TYPE = 'Hinge'</xsl:text>
        </xsl:if>
        <xsl:if test="parameter.cludove/node_view = 'colony'">
            <xsl:text>(IS_DSB != 'true' or count(IS_DSB) = 0)</xsl:text>
            <xsl:text> and TYPE = 'Hinge' and IS_LOCAL = 'true'</xsl:text>
        </xsl:if>
        <xsl:if test="parameter.cludove/node_view = 'dsb'">
            <xsl:text>IS_DSB = 'true'</xsl:text>
            <xsl:text> and TYPE = 'Hinge'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>