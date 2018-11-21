<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="content">
        <xsl:text>IDENTIFIER = '</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.v_data_exception/record.crest/buddle_id" />
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
