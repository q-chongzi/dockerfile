<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:for-each select="cludove.crest.spruce.exchange_design/record.crest">
            <xsl:sort order="ascending" select="name"/>
            <li>
                <xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
                <a href="javascript:void(0)">
                        <xsl:attribute name="onclick">flag = 1; onDesignNavigate('<xsl:value-of select="code"/>','<xsl:value-of select="code "/><xsl:text disable-output-escaping="yes">_design_catalog_container</xsl:text>')</xsl:attribute>
                    <span>
                        <xsl:value-of select="name"/>
                    </span>
                </a>
                <ul>
                    <xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_design_catalog_container</xsl:text></xsl:attribute>
                </ul>
            </li>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
