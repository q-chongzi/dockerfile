<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(/content/cludove.crest.spruce.field_cleanout/record.crest) > 0">
                <xsl:choose>
                    <xsl:when test="parameter.cludove/field_cleanout_code = ''">
                        <xsl:text>false</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:variable name="field_cleanout_code">
                            <xsl:value-of select="parameter.cludove/field_cleanout_code"/>
                        </xsl:variable>
                        <xsl:choose>
                            <xsl:when test="/content/cludove.crest.spruce.field_cleanout/record.crest/code = $field_cleanout_code">
                                <xsl:text>true</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>false</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>true</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
