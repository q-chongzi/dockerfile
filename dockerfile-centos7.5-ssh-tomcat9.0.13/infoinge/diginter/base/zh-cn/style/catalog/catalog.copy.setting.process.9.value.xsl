<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(/content/cludove.crest.spruce.resource_relevance/record.crest) > 0">
                <xsl:for-each select="/content/cludove.crest.spruce.resource_relevance/record.crest">
                    <xsl:variable name="catalog_identifier" select="/content/cludove.crest.spruce.catalog[1]/record.crest/identifier"/>
                    <parameter>
                        <BUILDER>
                            <xsl:value-of select="builder" />
                        </BUILDER>
                        <OWNER>
                            <xsl:value-of select="owner" />
                        </OWNER>
                        <BUDDLE_ID>
                            <xsl:value-of select="buddle_id" />
                        </BUDDLE_ID>
                        <CATALOG_ID>
                            <xsl:value-of select="/content/parameter.cludove/catalog_identifier_new"/>
                        </CATALOG_ID>
                        <S_IDENTIFIER>
                            <xsl:choose>
                                <xsl:when test="s_identifier != $catalog_identifier">
                                    <xsl:value-of select="s_identifier" />
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="/content/parameter.cludove/catalog_identifier_new"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </S_IDENTIFIER>
                        <S_RESOURCE_NAME>
                            <xsl:value-of select="s_resource_name" />
                        </S_RESOURCE_NAME>
                        <S_FIELD>
                            <xsl:value-of select="s_field" />
                        </S_FIELD>
                        <S_FIELD_TYPE>
                            <xsl:value-of select="s_field_type" />
                        </S_FIELD_TYPE>
                        <R_IDENTIFIER>
                            <xsl:choose>
                                <xsl:when test="r_identifier != $catalog_identifier">
                                    <xsl:value-of select="r_identifier" />
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="/content/parameter.cludove/catalog_identifier_new"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </R_IDENTIFIER>
                        <R_RESOURCE_NAME>
                            <xsl:value-of select="r_resource_name" />
                        </R_RESOURCE_NAME>
                        <R_FIELD>
                            <xsl:value-of select="r_field" />
                        </R_FIELD>
                        <R_FIELD_TYPE>
                            <xsl:value-of select="r_field_type" />
                        </R_FIELD_TYPE>
                        <CONNECTION_CODE>
                            <xsl:value-of select="connection_code" />
                        </CONNECTION_CODE>
                    </parameter>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
