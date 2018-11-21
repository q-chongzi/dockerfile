<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:for-each select="cludove.crest.spruce.infoinge_job/record.crest">
            <xsl:sort order="ascending" select="name"/>
            <li>
                <xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
                <a href="javascript:void(0)">
                    <span>
                        <xsl:attribute name="onclick">flag = 1; onJobSetting('<xsl:value-of select="code"/>')</xsl:attribute>
                        <xsl:value-of select="name"/>
                    </span>
                </a>
            </li>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
