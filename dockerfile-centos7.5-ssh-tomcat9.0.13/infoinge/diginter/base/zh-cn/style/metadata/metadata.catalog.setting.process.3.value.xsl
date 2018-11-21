<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="code">
            <xsl:value-of select="parameter.cludove/code"/>
        </xsl:variable>
        <xsl:if test="count(cludove.crest.spruce.data_metadata[1]/record.crest) = 0 or cludove.crest.spruce.data_metadata[1]/record.crest/code =$code">
            <parameter>
                <PRIMARY_NAME>
                    <xsl:value-of select="parameter.cludove/primary_name"/>
                </PRIMARY_NAME>
            </parameter>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
