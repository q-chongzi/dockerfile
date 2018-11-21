<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <xsl:text>IDENTIFIER = '</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_exception/record.crest/connection_id" />
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
