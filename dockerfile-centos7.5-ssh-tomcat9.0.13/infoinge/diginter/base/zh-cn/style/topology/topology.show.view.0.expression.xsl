<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--<xsl:text>TYPE = 'Hinge' AND IS_ACTIVE='true'</xsl:text>-->
        <xsl:text>(TYPE = 'Hinge' or TYPE = 'DB') and IDENTIFIER != 'cludove.crest.spruce' and IDENTIFIER != 'cludove.crest.journal' and IDENTIFIER != 'diginter.business'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
