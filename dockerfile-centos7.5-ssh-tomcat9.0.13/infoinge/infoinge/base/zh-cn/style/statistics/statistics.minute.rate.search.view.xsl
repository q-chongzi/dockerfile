<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="text"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:value-of select="infoinge.statistics"/>
    </xsl:template>
</xsl:stylesheet>
