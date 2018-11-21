<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <p>
            <span>响应类型：</span>
            <select id="catalog_content_type" onchange="responseDesign.onResponseDesignCatalogContentType()">
                <option value="text/html">
                    <xsl:if test="cludove.crest.spruce.catalog/record.crest/content_type = 'text/html'">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:text disable-output-escaping="yes">text/html</xsl:text>
                </option>
                <option value="text/xml">
                    <xsl:if test="cludove.crest.spruce.catalog/record.crest/content_type = 'text/xml'">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:text disable-output-escaping="yes">text/xml</xsl:text>
                </option>
                <option value="text/json">
                    <xsl:if test="cludove.crest.spruce.catalog/record.crest/content_type = 'text/json'">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                    </xsl:if>
                    <xsl:text disable-output-escaping="yes">text/json</xsl:text>
                </option>
            </select>
        </p>
    </xsl:template>
</xsl:stylesheet>
