<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <!--判断数据是否能同步-->
            <xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest) > 0">
                <xsl:text>(IS_SYNCED_DSB !='true' or count(IS_SYNCED_DSB) = 0) and (SYNC_STATUS = '' or count(SYNC_STATUS) = 0) and IS_ISSUE_DSB='true' and BUDDLE_ID != 'lock' and BUDDLE_ID != 'infoinge' and BUDDLE_ID != 'diginter' and TYPE = 'function' and (IS_RUNNING !='true' or count(IS_RUNNING) = 0)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
