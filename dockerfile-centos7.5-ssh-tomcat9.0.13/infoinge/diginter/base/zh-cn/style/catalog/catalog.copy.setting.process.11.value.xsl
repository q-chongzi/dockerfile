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
            <xsl:when test="count(/content/cludove.crest.spruce.data_metadata/record.crest) > 0">
                <xsl:for-each select="/content/cludove.crest.spruce.data_metadata/record.crest">
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
                        <DATA_ID>
                            <xsl:text>[</xsl:text>
                            <xsl:value-of select="/content/cludove.crest.spruce.catalog[1]/record.crest/buddle_id"/>
                            <xsl:text>]</xsl:text>
                            <xsl:text>.[</xsl:text>
                            <xsl:value-of select="/content/parameter.cludove/catalog_identifier_new"/>
                            <xsl:text>]</xsl:text>
                        </DATA_ID>
                        <NAME>
                            <xsl:value-of select="name" />
                        </NAME>
                        <REMARK>
                            <xsl:value-of select="remark" />
                        </REMARK>
                        <TYPE>
                            <xsl:value-of select="type" />
                        </TYPE>
                        <DISPLAY>
                            <xsl:value-of select="display" />
                        </DISPLAY>
                        <LENGTH>
                            <xsl:value-of select="length" />
                        </LENGTH>
                        <PRIMARY_NAME>
                            <xsl:value-of select="primary_name" />
                        </PRIMARY_NAME>
                        <DATA_DIRECT>
                            <xsl:value-of select="data_direct" />
                        </DATA_DIRECT>
                    </parameter>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
