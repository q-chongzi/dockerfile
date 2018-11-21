<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <option value="">请选择功能目录标识</option>
        <xsl:for-each select="cludove.crest.spruce.catalog/record.crest">
            <option>
                <xsl:if test="identifier = /content/parameter.cludove/catalog_id">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                <xsl:attribute name="value">
                    <xsl:value-of select="identifier"/>
                </xsl:attribute>
                <xsl:attribute name="data-code">
                    <xsl:value-of select="code"/>
                </xsl:attribute>
                <xsl:value-of select="name"/>
            </option>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
