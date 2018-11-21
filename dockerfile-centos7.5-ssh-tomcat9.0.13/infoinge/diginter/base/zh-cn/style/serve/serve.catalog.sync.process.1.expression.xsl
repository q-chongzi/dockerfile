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
                <xsl:text>(IS_SYNCED_DSB !='true' OR IS_SYNCED_DSB IS NULL) AND (SYNC_STATUS = '' OR SYNC_STATUS IS NULL) AND IS_ISSUE_DSB='true' AND BUDDLE_ID != 'lock' AND BUDDLE_ID != 'infoinge' AND TYPE = 'function' AND (IS_RUNNING !='true' OR IS_RUNNING IS NULL)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>1=-1</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
