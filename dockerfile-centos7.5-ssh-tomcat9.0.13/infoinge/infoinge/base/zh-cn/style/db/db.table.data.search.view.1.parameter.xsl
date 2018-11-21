<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--提供查询数据元数据的参数-->
        <parameter>
            <TYPE>
                <xsl:text>DB</xsl:text>
                <xsl:for-each select="/content/cludove.crest.spruce.v_resource_relevance/record.crest">
                    <xsl:text>,</xsl:text>
                    <xsl:text>DB</xsl:text>
                </xsl:for-each>
            </TYPE>
            <CONNECTION_ID>
                <xsl:value-of select="parameter.cludove/s_identifier"/>
                <xsl:for-each select="/content/cludove.crest.spruce.v_resource_relevance/record.crest">
                    <xsl:text>,</xsl:text>
                    <xsl:value-of select="r_identifier"/>
                </xsl:for-each>
            </CONNECTION_ID>
            <RESOURCE_NAME>
                <xsl:value-of select="parameter.cludove/s_resource_name"/>
                <xsl:for-each select="/content/cludove.crest.spruce.v_resource_relevance/record.crest">
                    <xsl:text>,</xsl:text>
                    <xsl:value-of select="r_resource_name"/>
                </xsl:for-each>
            </RESOURCE_NAME>
            <RESOURCE_BUDDLE>
                <xsl:value-of select="parameter.cludove/s_resource_diaplay"/>
                <xsl:for-each select="/content/cludove.crest.spruce.v_resource_relevance/record.crest">
                    <xsl:if test="position() > 1">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                    <xsl:value-of select="r_resource_diaplay"/>
                </xsl:for-each>
            </RESOURCE_BUDDLE>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
