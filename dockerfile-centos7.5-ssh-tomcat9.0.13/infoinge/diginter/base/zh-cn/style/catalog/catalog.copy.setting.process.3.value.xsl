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
            <xsl:when test="count(/content/cludove.crest.spruce.data/record.crest) > 0">
                <xsl:for-each select="/content/cludove.crest.spruce.data/record.crest">
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
                        <NAME>
                            <xsl:value-of select="name" />
                        </NAME>
                        <TYPE>
                            <xsl:value-of select="type" />
                        </TYPE>
                        <CONNECTION_ID>
                            <xsl:value-of select="connection_id" />
                        </CONNECTION_ID>
                        <RESOURCE_NAME>
                            <xsl:value-of select="resource_name" />
                        </RESOURCE_NAME>
                        <OPERATION>
                            <xsl:value-of select="operation" />
                        </OPERATION>
                        <IS_PAGINATE>
                            <xsl:value-of select="is_paginate" />
                        </IS_PAGINATE>
                        <POSITION>
                            <xsl:value-of select="position" />
                        </POSITION>
                        <IS_PERMIT>
                            <xsl:value-of select="is_permit" />
                        </IS_PERMIT>
                        <IS_FULL>
                            <xsl:value-of select="is_full" />
                        </IS_FULL>
                        <ROW_NUMBER>
                            <xsl:value-of select="row_number" />
                        </ROW_NUMBER>
                        <UNIQUES>
                            <xsl:value-of select="uniques" />
                        </UNIQUES>
                        <IS_DESCEND>
                            <xsl:value-of select="is_descend" />
                        </IS_DESCEND>
                        <RESOURCE_BUDDLE>
                            <xsl:value-of select="resource_buddle" />
                        </RESOURCE_BUDDLE>
                        <IS_FOR_EACH>
                            <xsl:value-of select="is_for_each" />
                        </IS_FOR_EACH>
                        <SELECT_EXPRESSION>
                            <xsl:value-of select="select_expression" />
                        </SELECT_EXPRESSION>
                        <IS_SYNCED_DSB>
                            <xsl:value-of select="is_synced_dsb" />
                        </IS_SYNCED_DSB>
                        <REMOVE_REPEAT_FIELD>
                            <xsl:value-of select="remove_repeat_field" />
                        </REMOVE_REPEAT_FIELD>
                    </parameter>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
