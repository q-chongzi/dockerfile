<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(parameter.cludove/buddle_id)>0">
                <parameter>
                    <xsl:if test="count(cludove.crest.spruce.data/record.crest)>0">
                        <CODE>
                            <xsl:value-of select="cludove.crest.spruce.data/record.crest/code"/>
                        </CODE>
                    </xsl:if>

                    <IS_SYNCED_ACTIVE>
                        <xsl:value-of select="parameter.cludove/is_synced_active"/>
                    </IS_SYNCED_ACTIVE>

                    <SYNC_ACTIVE_STATUS>
                        <xsl:value-of select="parameter.cludove/sync_active_status"/>
                    </SYNC_ACTIVE_STATUS>

                    <IS_SYNCED_DSB>
                        <xsl:text disable-output-escaping="yes">false</xsl:text>
                    </IS_SYNCED_DSB>

                    <BUDDLE_ID>
                        <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/precode"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="parameter.cludove/buddle_id"/>
                    </BUDDLE_ID>

                    <CATALOG_ID>
                        <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/precode"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="parameter.cludove/catalog_id"/>
                    </CATALOG_ID>

                    <NAME>
                        <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/precode"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="parameter.cludove/buddle_id"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="parameter.cludove/name"/>
                    </NAME>

                    <REMOVE_REPEAT_FIELD>
                        <xsl:value-of select="parameter.cludove/remove_repeat_field"/>
                    </REMOVE_REPEAT_FIELD>

                    <TYPE>
                        <xsl:value-of select="parameter.cludove/type"/>
                    </TYPE>

                    <CONNECTION_ID>
                        <xsl:value-of select="parameter.cludove/connection_id"/>
                    </CONNECTION_ID>

                    <RESOURCE_NAME>
                        <xsl:value-of select="parameter.cludove/resource_name"/>
                    </RESOURCE_NAME>

                    <OPERATION>
                        <xsl:value-of select="parameter.cludove/operation"/>
                    </OPERATION>

                    <IS_PAGINATE>
                        <xsl:value-of select="parameter.cludove/is_paginate"/>
                    </IS_PAGINATE>

                    <POSITION>
                        <xsl:value-of select="parameter.cludove/position"/>
                    </POSITION>

                    <IS_PERMIT>
                        <xsl:value-of select="parameter.cludove/is_permit"/>
                    </IS_PERMIT>

                    <IS_FULL>
                        <xsl:value-of select="parameter.cludove/is_full"/>
                    </IS_FULL>

                    <ROW_NUMBER>
                        <xsl:value-of select="parameter.cludove/row_number"/>
                    </ROW_NUMBER>

                    <UNIQUES>
                        <xsl:value-of select="parameter.cludove/uniques"/>
                    </UNIQUES>

                    <IS_DESCEND>
                        <xsl:value-of select="parameter.cludove/is_descend"/>
                    </IS_DESCEND>

                    <RESOURCE_BUDDLE>
                        <xsl:value-of select="parameter.cludove/resource_buddle"/>
                    </RESOURCE_BUDDLE>

                    <DESCRIPTION>
                        <xsl:value-of select="parameter.cludove/description"/>
                    </DESCRIPTION>

                    <CLASS>
                        <xsl:value-of select="parameter.cludove/class"/>
                    </CLASS>

                    <IS_FOR_EACH>
                        <xsl:value-of select="parameter.cludove/is_for_each"/>
                    </IS_FOR_EACH>

                    <SELECT_EXPRESSION>
                        <xsl:value-of select="parameter.cludove/select_expression"/>
                    </SELECT_EXPRESSION>

                    <CLASSIFY>
                        <xsl:value-of select="parameter.cludove/classify"/>
                    </CLASSIFY>

                    <DATA_METHOD>
                        <xsl:value-of select="parameter.cludove/data_method"/>
                    </DATA_METHOD>

                </parameter>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>

    </xsl:template>
</xsl:stylesheet>
