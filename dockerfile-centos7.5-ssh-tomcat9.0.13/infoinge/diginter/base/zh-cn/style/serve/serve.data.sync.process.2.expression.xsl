<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--判断数据是否能同步-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0">
                <xsl:text>(IS_SYNCED_DSB !='true' OR IS_SYNCED_DSB IS NULL) AND (SYNC_STATUS = '' OR SYNC_STATUS IS NULL) AND  BUDDLE_ID != 'lock' AND BUDDLE_ID != 'infoinge' AND POSITION = '0' AND OPERATION != 'migrate' AND OPERATION != 'synchronize' AND (</xsl:text>
                <xsl:for-each select="cludove.crest.spruce.catalog/record.crest">
                    <xsl:if test="position() > 1">
                        <xsl:text> OR </xsl:text>
                    </xsl:if>
                    <xsl:text> CATALOG_ID ='</xsl:text>
                    <xsl:value-of select="identifier"/>
                    <xsl:text>'</xsl:text>
                </xsl:for-each>
                <xsl:text>)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>1=-1</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
