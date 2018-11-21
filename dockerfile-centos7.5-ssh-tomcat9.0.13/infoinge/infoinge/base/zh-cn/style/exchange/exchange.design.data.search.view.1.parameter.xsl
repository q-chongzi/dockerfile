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
                <xsl:for-each select="cludove.crest.spruce.data/record.crest">
                    <xsl:if test="position() > 1">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                    <xsl:value-of select="type"/>
                </xsl:for-each>
            </TYPE>
            <CONNECTION_ID>
                <xsl:for-each select="cludove.crest.spruce.data/record.crest">
                    <xsl:if test="position() > 1">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                    <xsl:value-of select="connection_id"/>
                </xsl:for-each>
            </CONNECTION_ID>
            <RESOURCE_NAME>
                <xsl:for-each select="cludove.crest.spruce.data/record.crest">
                    <xsl:if test="position() > 1">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                    <xsl:value-of select="resource_name"/>
                </xsl:for-each>
            </RESOURCE_NAME>
            <RESOURCE_BUDDLE>
                <xsl:for-each select="cludove.crest.spruce.data/record.crest">
                    <xsl:if test="position() > 1">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                    <xsl:value-of select="resource_buddle"/>
                </xsl:for-each>
            </RESOURCE_BUDDLE>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
