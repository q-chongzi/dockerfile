<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <result>
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.buddle/record.crest)>0">
                    <xsl:text>success</xsl:text>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </result>
    </xsl:template>
</xsl:stylesheet>
