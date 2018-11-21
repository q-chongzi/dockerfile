<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--循环取出需要设置的值-->
        <xsl:for-each select="cludove.crest.spruce.data_mapping/record.crest">
            <parameter>
                <VALUE_CODE>
                    <xsl:value-of select="value_code"/>
                </VALUE_CODE>
                <S_DATA_CODE>
                    <xsl:value-of select="s_data_code"/>
                </S_DATA_CODE>
                <R_DATA_CODE>
                    <xsl:value-of select="r_data_code"/>
                </R_DATA_CODE>
            </parameter>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
