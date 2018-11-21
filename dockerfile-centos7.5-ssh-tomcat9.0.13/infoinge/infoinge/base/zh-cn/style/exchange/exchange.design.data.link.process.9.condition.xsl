<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--此步骤为多余，是以前左边多表情况的代码-->
        <parameter>
            <CODE>
                <xsl:value-of select="/content/cludove.crest.spruce.value_tag[3]/record.crest/value_code"/>
            </CODE>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
