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
            <xsl:when test="count(/content/cludove.crest.spruce.catalog_parameter/record.crest) > 0">
                <xsl:for-each select="/content/cludove.crest.spruce.catalog_parameter/record.crest">
                    <xsl:variable name="data_position" select="data_position"/>
                    <parameter>
                        <IS_ACTIVE>
                            <xsl:value-of select="is_active" />
                        </IS_ACTIVE>
                        <CHANGE_INDEX>
                            <xsl:value-of select="change_index" />
                        </CHANGE_INDEX>
                        <CHANGE_NUMBER>
                            <xsl:value-of select="change_number" />
                        </CHANGE_NUMBER>
                        <SECRET>
                            <xsl:value-of select="secret" />
                        </SECRET>
                        <SECRECY>
                            <xsl:value-of select="secrecy" />
                        </SECRECY>
                        <START_DATE>
                            <xsl:value-of select="start_date" />
                        </START_DATE>
                        <END_DATE>
                            <xsl:value-of select="end_date" />
                        </END_DATE>
                        <BUDDLE_ID>
                            <xsl:value-of select="buddle_id" />
                        </BUDDLE_ID>
                        <CATALOG_ID>
                            <xsl:value-of select="/content/parameter.cludove/catalog_identifier_new"/>
                        </CATALOG_ID>
                        <DATA_POSITION>
                            <xsl:value-of select="data_position" />
                        </DATA_POSITION>
                        <DATA_CODE>
                            <xsl:value-of select="/content/cludove.crest.spruce.data[2]/record.crest[position=$data_position]/code"/>
                        </DATA_CODE>
                        <DATA_NAME>
                            <xsl:value-of select="data_name" />
                        </DATA_NAME>
                        <DATA_TYPE>
                            <xsl:value-of select="data_type" />
                        </DATA_TYPE>
                        <PARAMETER_NAME>
                            <xsl:value-of select="parameter_name" />
                        </PARAMETER_NAME>
                        <PARAMETER_TYPE>
                            <xsl:value-of select="parameter_type" />
                        </PARAMETER_TYPE>
                        <PARAMETER_LENGTH>
                            <xsl:value-of select="parameter_length" />
                        </PARAMETER_LENGTH>
                        <CONNECTION_ID>
                            <xsl:value-of select="connection_id" />
                        </CONNECTION_ID>
                        <RESOURCE_BUDDLE>
                            <xsl:value-of select="resource_buddle" />
                        </RESOURCE_BUDDLE>
                        <RESOURCE_NAME>
                            <xsl:value-of select="resource_name" />
                        </RESOURCE_NAME>
                        <RELATED_FIELD>
                            <xsl:value-of select="related_field" />
                        </RELATED_FIELD>
                    </parameter>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
