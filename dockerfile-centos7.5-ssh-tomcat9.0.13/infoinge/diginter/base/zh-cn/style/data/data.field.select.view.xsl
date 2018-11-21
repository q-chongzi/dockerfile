<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <option value="">请选择去重字段</option>
        <xsl:for-each select="metadata/record.crest">
            <option>
                <xsl:attribute name="value">
                    <xsl:value-of select="name"/>
                </xsl:attribute>
                <xsl:value-of select="name"/>
            </option>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
