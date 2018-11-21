<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <!--判断数据是否能同步-->
            <xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest) > 0">
                <xsl:text>(IS_SYNCED_DSB !='true' OR IS_SYNCED_DSB IS NULL) AND (SYNC_STATUS = '' OR SYNC_STATUS IS NULL) AND IDENTIFIER != 'lock' AND IDENTIFIER != 'infoinge'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>1=-1</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
