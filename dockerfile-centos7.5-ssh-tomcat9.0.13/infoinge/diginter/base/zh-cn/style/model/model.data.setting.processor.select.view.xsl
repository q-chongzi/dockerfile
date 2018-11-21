<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:if test="parameter.cludove/select_blank != ''">
            <option value="">
                <xsl:if test="/content/parameter.cludove/selected_value = ''">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                <xsl:value-of select="parameter.cludove/select_blank"/>
            </option>
        </xsl:if>
        <xsl:for-each select="cludove.crest.spruce.processor/record.crest">
            <xsl:variable name="class"><xsl:value-of select="class" /></xsl:variable>
            <option>
                <xsl:if test="class = /content/parameter.cludove/selected_value">
                <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.data_metadata/record.crest[data_id = $class and data_direct = 'input'])>0 and count(/content/cludove.crest.spruce.data_metadata/record.crest[data_id = $class and data_direct = 'output'])>0"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
                <xsl:value-of select="name"/>
            </option>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
