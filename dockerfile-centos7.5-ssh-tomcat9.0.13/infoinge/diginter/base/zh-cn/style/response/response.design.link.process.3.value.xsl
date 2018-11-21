<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <xsl:if test="parameter.cludove/remove_s_data_code != ''">
            <parameter>
                <S_DATA_CODE>
                    <xsl:value-of select="/content/parameter.cludove/s_data_code"/>
                </S_DATA_CODE>
                <S_IDENTIFIER>
                    <xsl:value-of select="/content/parameter.cludove/s_identifier"/>
                </S_IDENTIFIER>
                <S_RESOURCE_NAME>
                    <xsl:value-of select="/content/parameter.cludove/s_resource_name"/>
                </S_RESOURCE_NAME>
                <S_FIELD>
                    <xsl:value-of select="/content/parameter.cludove/s_field"/>
                </S_FIELD>
                <R_DATA_CODE>
                    <xsl:value-of select="/content/parameter.cludove/r_data_code"/>
                </R_DATA_CODE>
                <R_IDENTIFIER>
                    <xsl:value-of select="/content/parameter.cludove/r_identifier"/>
                </R_IDENTIFIER>
                <R_RESOURCE_NAME>
                    <xsl:value-of select="/content/parameter.cludove/r_resource_name"/>
                </R_RESOURCE_NAME>
                <R_FIELD>
                    <xsl:value-of select="/content/parameter.cludove/r_field"/>
                </R_FIELD>
                <PREFIX_SYMBOL>
                </PREFIX_SYMBOL>
                <SUFFIX_SYMBOL>
                </SUFFIX_SYMBOL>
                <POSITION>
                    <xsl:value-of select="/content/parameter.cludove/position"/>
                </POSITION>
                <xsl:variable name="s_data_code">
                    <xsl:for-each select="/content/cludove.crest.spruce.data/record.crest">
                        <xsl:sort data-type="number" order="ascending" select="position"/>
                        <xsl:if test="position() = 1">
                            <xsl:value-of select="code"/>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:variable name="s_resource_name">
                    <xsl:value-of select="translate(/content/parameter.cludove/s_resource_name,$smallcase,$uppercase)"/>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="/content/parameter.cludove/s_data_code = $s_data_code">
                        <IS_MAIN>
                            <xsl:text>true</xsl:text>
                        </IS_MAIN>
                    </xsl:when>
                    <xsl:otherwise>
                        <IS_MAIN>
                            <xsl:text>false</xsl:text>
                        </IS_MAIN>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="count(/content/cludove.crest.spruce.resource_relevance/record.crest) > 0">
                    <xsl:choose>
                        <xsl:when test="/content/parameter.cludove/s_data_code = $s_data_code"/>
                        <xsl:otherwise>
                            <xsl:if test="count(/content/cludove.crest.spruce.resource_relevance/record.crest[r_resource_name = $s_resource_name and r_field != '']) > 0">
                                <TEST_EXPRESSION>
                                    <xsl:for-each select="/content/cludove.crest.spruce.resource_relevance/record.crest[r_resource_name = $s_resource_name and r_field != '']">
                                        <xsl:if test="position() > 1">
                                            <xsl:text> and </xsl:text>
                                        </xsl:if>
                                        <xsl:value-of select="translate(r_field,$uppercase,$smallcase)"/>
                                        <xsl:text>=$</xsl:text>
                                        <xsl:value-of select="translate(s_field,$uppercase,$smallcase)"/>
                                    </xsl:for-each>
                                </TEST_EXPRESSION>
                            </xsl:if>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </parameter>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
