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
            <xsl:when test="count(/content/cludove.crest.spruce.data_exchange/record.crest) > 0">
                <xsl:for-each select="/content/cludove.crest.spruce.data_exchange/record.crest">
                    <parameter>
                        <BUDDLE_ID>
                            <xsl:value-of select="buddle_id" />
                        </BUDDLE_ID>
                        <CATALOG_ID>
                            <xsl:value-of select="/content/parameter.cludove/catalog_identifier_new"/>
                        </CATALOG_ID>
                        <DATA_CODE>
                            <xsl:value-of select="/content/cludove.crest.spruce.data[2]/record.crest[position='0']/code"/>
                        </DATA_CODE>
                        <OPERATION>
                            <xsl:value-of select="operation" />
                        </OPERATION>
                        <DATA_NAME>
                            <xsl:value-of select="data_name"/>
                        </DATA_NAME>
                        <PROCESSOR_NUMBER>
                            <xsl:value-of select="processor_number" />
                        </PROCESSOR_NUMBER>
                        <IS_FULL>
                            <xsl:value-of select="is_full" />
                        </IS_FULL>
                        <CLEAN_EXPRESSION>
                            <xsl:value-of select="clean_expression" />
                        </CLEAN_EXPRESSION>
                        <MIGR_FIELD>
                            <xsl:value-of select="migr_field" />
                        </MIGR_FIELD>
                        <MIGR_POSITION></MIGR_POSITION>
                        <MIGR_FIELD_TYPE>
                            <xsl:value-of select="migr_field_type" />
                        </MIGR_FIELD_TYPE>
                        <SYNC_POSITION></SYNC_POSITION>
                        <SYNC_FIELD>
                            <xsl:value-of select="sync_field" />
                        </SYNC_FIELD>
                        <SYNC_FIELD_TYPE>
                            <xsl:value-of select="sync_field_type" />
                        </SYNC_FIELD_TYPE>
                        <SYNC_TIME_POSITION>
                            <xsl:value-of select="sync_time_position" />
                        </SYNC_TIME_POSITION>
                        <SYNC_TIME_FIELD>
                            <xsl:value-of select="sync_time_field" />
                        </SYNC_TIME_FIELD>
                        <SYNC_TIME_FIELD_TYPE>
                            <xsl:value-of select="sync_time_field_type" />
                        </SYNC_TIME_FIELD_TYPE>
                        <FLAG_FIELD>
                            <xsl:value-of select="flag_field" />
                        </FLAG_FIELD>
                        <FLAG_FIELD_TYPE>
                            <xsl:value-of select="flag_field_type" />
                        </FLAG_FIELD_TYPE>
                        <FLAG_CHANGE>
                            <xsl:value-of select="flag_change" />
                        </FLAG_CHANGE>
                        <FLAG_RESET>
                            <xsl:value-of select="flag_reset" />
                        </FLAG_RESET>
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
