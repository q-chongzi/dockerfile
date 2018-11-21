<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:if test="count(parameter.cludove/code) = 0 or (count(parameter.cludove/data_is_mapping) > 0 and count(parameter.cludove/data_main_code) > 0 and parameter.cludove/data_is_mapping = 'true')">
            <xsl:choose>
                <xsl:when test="parameter.cludove/is_exchange = 'true'
                and cludove.crest.spruce.data[1]/record.crest/position = '0'">
                    <xsl:for-each select="cludove.crest.spruce.data_metadata[2]/record.crest">
                        <parameter>
                            <BUDDLE_ID>
                                <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
                            </BUDDLE_ID>
                            <CATALOG_ID>
                                <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
                            </CATALOG_ID>
                            <S_DATA_CODE>
                                <xsl:value-of select="/content/cludove.crest.spruce.data[1]/record.crest/code"/>
                            </S_DATA_CODE>
                            <IS_MAIN>
                                <xsl:text>true</xsl:text>
                            </IS_MAIN>
                            <POSITION>
                                <xsl:value-of select="position() - 1"/>
                            </POSITION>
                            <S_IDENTIFIER>
                                <xsl:value-of select="/content/cludove.crest.spruce.data[1]/record.crest/connection_id"/>
                            </S_IDENTIFIER>
                            <S_RESOURCE_NAME>
                                <xsl:value-of select="/content/cludove.crest.spruce.data[1]/record.crest/resource_name"/>
                            </S_RESOURCE_NAME>
                            <S_FIELD>
                                <xsl:value-of select="name"/>
                            </S_FIELD>
                            <R_DATA_CODE>
                                <xsl:text>catalog.response</xsl:text>
                            </R_DATA_CODE>
                            <R_IDENTIFIER>
                                <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
                            </R_IDENTIFIER>
                            <R_RESOURCE_NAME>
                                <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
                            </R_RESOURCE_NAME>
                            <R_FIELD>
                                <xsl:value-of select="name"/>
                            </R_FIELD>
                        </parameter>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise/>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
