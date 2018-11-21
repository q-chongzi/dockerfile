<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--根据提交的参数是否为空，判断是否需要新增-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.data_value[1]/record.crest) > 0"/>
            <xsl:otherwise>
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
                    <SELECT_EXPRESSION>
                        <xsl:value-of select="parameter.cludove/data_select_expression"/>
                    </SELECT_EXPRESSION>
                    <IS_FOR_EACH>
                        <xsl:text>true</xsl:text>
                    </IS_FOR_EACH>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>