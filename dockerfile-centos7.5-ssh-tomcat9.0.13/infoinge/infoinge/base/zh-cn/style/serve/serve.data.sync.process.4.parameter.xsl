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
            <xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0">
                <xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest) = 0">
                    <parameter>
                        <IS_NOT_CALL>
                            <xsl:text disable-output-escaping="yes">true</xsl:text>
                        </IS_NOT_CALL>
                    </parameter>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <parameter>
                    <buddle.cludove>
                        <xsl:text disable-output-escaping="yes">infoinge</xsl:text>
                    </buddle.cludove>
                    <catalog.cludove>
                        <xsl:text disable-output-escaping="yes">dsb.data.sync.process</xsl:text>
                    </catalog.cludove>

                    <HINGE_CONNECTION_ID>
                        <xsl:value-of select="parameter.cludove/dsbConnectionId.cludove"/>
                    </HINGE_CONNECTION_ID>

                    <IS_DSB_REQUEST>
                        <xsl:text disable-output-escaping="yes">true</xsl:text>
                    </IS_DSB_REQUEST>

                    <IS_SYNCED_ACTIVE>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/is_synced_active"/>
                    </IS_SYNCED_ACTIVE>

                    <SYNC_ACTIVE_STATUS>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/sync_active_status"/>
                    </SYNC_ACTIVE_STATUS>

                    <BUDDLE_ID>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/buddle_id"/>
                    </BUDDLE_ID>

                    <CATALOG_ID>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/catalog_id"/>
                    </CATALOG_ID>

                    <NAME>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/name"/>
                        <xsl:text>:encode</xsl:text>
                    </NAME>

                    <TYPE>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/type"/>
                    </TYPE>

                    <CONNECTION_ID>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/connection_id"/>
                    </CONNECTION_ID>

                    <RESOURCE_NAME>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/resource_name"/>
                    </RESOURCE_NAME>

                    <OPERATION>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/operation"/>
                    </OPERATION>

                    <IS_PAGINATE>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/is_paginate"/>
                    </IS_PAGINATE>

                    <POSITION>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/position"/>
                    </POSITION>

                    <IS_PERMIT>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/is_permit"/>
                    </IS_PERMIT>

                    <IS_FULL>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/is_full"/>
                    </IS_FULL>

                    <ROW_NUMBER>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/row_number"/>
                    </ROW_NUMBER>

                    <UNIQUES>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/uniques"/>
                    </UNIQUES>

                    <IS_DESCEND>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/is_descend"/>
                    </IS_DESCEND>

                    <RESOURCE_BUDDLE>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/resource_buddle"/>
                    </RESOURCE_BUDDLE>

                    <DESCRIPTION>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/description"/>
                        <xsl:text>:encode</xsl:text>
                    </DESCRIPTION>

                    <CLASS>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/class"/>
                    </CLASS>

                    <IS_FOR_EACH>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/is_for_each"/>
                    </IS_FOR_EACH>

                    <SELECT_EXPRESSION>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/select_expression"/>
                        <xsl:text>:encode</xsl:text>
                    </SELECT_EXPRESSION>

                    <CLASSIFY>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/classify"/>
                    </CLASSIFY>

                    <DATA_METHOD>
                        <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest[1]/data_method"/>
                    </DATA_METHOD>

                    <SERVE_ID>
                        <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                    </SERVE_ID>

                    <REMOVE_REPEAT_FIELD>
                        <xsl:value-of select="cludove.crest.spruce.data/record.crest[1]/remove_repeat_field"/>
                    </REMOVE_REPEAT_FIELD>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
