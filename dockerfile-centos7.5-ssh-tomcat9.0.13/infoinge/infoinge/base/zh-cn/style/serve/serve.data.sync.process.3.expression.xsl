<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--<xsl:variable name="position">-->
            <!--<xsl:for-each select="cludove.crest.spruce.data/record.crest">-->
                <!--<xsl:sort data-type="number" order="ascending" select="position"/>-->
                <!--<xsl:if test="position() = 1">-->
                    <!--<xsl:value-of select="position"/>-->
                <!--</xsl:if>-->
            <!--</xsl:for-each>-->
        <!--</xsl:variable>-->
        <!--&lt;!&ndash;判断数据是否能同步&ndash;&gt;-->
        <!--<xsl:choose>-->
            <!--<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0">-->
                <!--&lt;!&ndash;<xsl:text>(IS_SYNCED_DSB !='true' or count(IS_SYNCED_DSB) = 0) and (SYNC_STATUS = '' or count(SYNC_STATUS) = 0) and  BUDDLE_ID != 'lock' and BUDDLE_ID != 'infoinge' and POSITION = '0' and OPERATION != 'migrate' and OPERATION != 'synchronize' and (</xsl:text>&ndash;&gt;-->
                <!--<xsl:text>(IS_SYNCED_DSB !='true' or count(IS_SYNCED_DSB) = 0) and (SYNC_STATUS = '' or count(SYNC_STATUS) = 0) and  BUDDLE_ID != 'lock' and BUDDLE_ID != 'infoinge' and POSITION = '</xsl:text>-->
                <!--<xsl:value-of select="$position"/>-->
                <!--<xsl:text>' and OPERATION != 'migrate' and OPERATION != 'synchronize' and (</xsl:text>-->
                <!--<xsl:for-each select="cludove.crest.spruce.catalog/record.crest">-->
                    <!--<xsl:if test="position() > 1">-->
                        <!--<xsl:text> or </xsl:text>-->
                    <!--</xsl:if>-->
                    <!--<xsl:text>CATALOG_ID ='</xsl:text>-->
                    <!--<xsl:value-of select="identifier"/>-->
                    <!--<xsl:text>'</xsl:text>-->
                <!--</xsl:for-each>-->
                <!--<xsl:text>)</xsl:text>-->
            <!--</xsl:when>-->
            <!--<xsl:otherwise>-->
                <!--<xsl:text>count(CODE) = 0</xsl:text>-->
            <!--</xsl:otherwise>-->
        <!--</xsl:choose>-->
        <xsl:text>count(CODE) = 0</xsl:text>
    </xsl:template>
</xsl:stylesheet>