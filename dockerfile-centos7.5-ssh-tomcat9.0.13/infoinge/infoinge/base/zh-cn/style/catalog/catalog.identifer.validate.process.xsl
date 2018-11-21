<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="identifier">
            <xsl:value-of select="parameter.cludove/identifier"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="parameter.cludove/catalog_code =''">
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.catalog[1]/record.crest) > 0">
                        <xsl:text>1</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="count(cludove.crest.spruce.catalog[2]/record.crest) > 0">
                                <xsl:text>2</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>ok</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.catalog[2]/record.crest) > 0">
                        <xsl:choose>
                            <xsl:when test="cludove.crest.spruce.catalog[2]/record.crest/identifier = $identifier">
                                <xsl:text>ok</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>2</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>ok</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
