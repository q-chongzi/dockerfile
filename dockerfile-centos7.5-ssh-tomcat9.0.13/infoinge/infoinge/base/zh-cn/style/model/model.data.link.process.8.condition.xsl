<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--查询修改的数据-->
        <xsl:variable name="remove_r_data_code">
            <xsl:value-of select="parameter.cludove/remove_r_data_code"/>
        </xsl:variable>
        <xsl:if test="parameter.cludove/r_data_code = $remove_r_data_code">
            <parameter>
                <VALUE_CODE>
                    <xsl:value-of select="/content/cludove.crest.spruce.data_value[3]/record.crest/code"/>
                </VALUE_CODE>
                <S_DATA_CODE>
                    <xsl:value-of select="parameter.cludove/remove_s_data_code"/>
                </S_DATA_CODE>
                <S_IDENTIFIER>
                    <xsl:value-of select="parameter.cludove/remove_s_identifier"/>
                </S_IDENTIFIER>
                <S_RESOURCE_NAME>
                    <xsl:value-of select="parameter.cludove/remove_s_resource_name"/>
                </S_RESOURCE_NAME>
                <S_FIELD>
                    <xsl:value-of select="parameter.cludove/remove_s_field"/>
                </S_FIELD>
                <R_DATA_CODE>
                    <xsl:value-of select="parameter.cludove/remove_r_data_code"/>
                </R_DATA_CODE>
                <R_IDENTIFIER>
                    <xsl:value-of select="parameter.cludove/remove_r_identifier"/>
                </R_IDENTIFIER>
                <R_RESOURCE_NAME>
                    <xsl:value-of select="parameter.cludove/remove_r_resource_name"/>
                </R_RESOURCE_NAME>
                <R_FIELD>
                    <xsl:value-of select="parameter.cludove/remove_r_field"/>
                </R_FIELD>
            </parameter>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
