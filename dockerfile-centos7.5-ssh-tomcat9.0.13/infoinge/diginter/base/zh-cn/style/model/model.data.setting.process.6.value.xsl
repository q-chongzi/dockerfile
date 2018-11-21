<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:if test="cludove.crest.spruce.catalog/record.crest/has_set_metadata = 'true'">
            <xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest">
                <parameter>
                    <DATA_TYPE>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/type"/>
                    </DATA_TYPE>
                    <BUDDLE_ID>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/buddle_id"/>
                    </BUDDLE_ID>
                    <CATALOG_ID>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/catalog_id"/>
                    </CATALOG_ID>
                    <DATA_POSITION>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/position"/>
                    </DATA_POSITION>
                    <DATA_CODE>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/code"/>
                    </DATA_CODE>
                    <DATA_NAME>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/name"/>
                    </DATA_NAME>
                    <CONNECTION_ID>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/connection_id"/>
                    </CONNECTION_ID>
                    <PARAMETER_NAME>
                        <xsl:value-of select="name"/>
                    </PARAMETER_NAME>
                    <PARAMETER_TYPE>
                        <xsl:value-of select="type"/>
                    </PARAMETER_TYPE>
                    <PARAMETER_LENGTH>
                        <xsl:value-of select="length"/>
                    </PARAMETER_LENGTH>
                    <RESOURCE_BUDDLE>
                        <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest/resource_buddle"/>
                    </RESOURCE_BUDDLE>
                    <RESOURCE_NAME>
                        <xsl:value-of select="data_id"/>
                    </RESOURCE_NAME>
                </parameter>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
