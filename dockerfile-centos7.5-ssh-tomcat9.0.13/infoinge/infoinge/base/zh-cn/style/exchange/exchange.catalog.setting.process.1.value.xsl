<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/design_code = ''">
                <xsl:text>1=-1</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <parameter>
                    <DESIGN_CODE>
                        <xsl:value-of select="/content/parameter.cludove/design_code"/>
                    </DESIGN_CODE>
                    <CATALOG_CODE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/code"/>
                    </CATALOG_CODE>
                </parameter>
                </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
