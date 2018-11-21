<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--对提交的新连接进行保存-->
        <parameter>
            <BUDDLE_ID>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
            </BUDDLE_ID>
            <CATALOG_ID>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
            </CATALOG_ID>
            <DATA_CODE>
                <xsl:value-of select="parameter.cludove/data_code"/>
            </DATA_CODE>
            <TAG_NAME>
                <xsl:value-of select="parameter.cludove/tag_name"/>
            </TAG_NAME>
            <xsl:choose>
                <xsl:when test="count(/content/cludove.crest.spruce.data_value[2]/record.crest) = 0">
                    <VALUE_CODE>
                        <xsl:value-of select="/content/cludove.crest.spruce.data_value[1]/record.crest/code"/>
                    </VALUE_CODE>
                </xsl:when>
                <xsl:otherwise>
                    <VALUE_CODE>
                        <xsl:value-of select="/content/cludove.crest.spruce.data_value[2]/record.crest/code"/>
                    </VALUE_CODE>
                </xsl:otherwise>
            </xsl:choose>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
