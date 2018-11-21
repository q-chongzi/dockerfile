<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="code">
            <xsl:value-of select="parameter.cludove/code"/>
        </xsl:variable>
        <xsl:if test="count(cludove.crest.spruce.data_metadata[1]/record.crest) = 0 or cludove.crest.spruce.data_metadata[1]/record.crest/code =$code">
            <parameter>
                <xsl:if test="parameter.cludove/code != ''">
                    <CODE>
                        <xsl:value-of select="parameter.cludove/code"/>
                    </CODE>
                </xsl:if>
                <DATA_ID>
                    <xsl:value-of select="parameter.cludove/data_id"/>
                </DATA_ID>
                <REMARK>
                    <xsl:value-of select="parameter.cludove/remark"/>
                </REMARK>
                <NAME>
                    <xsl:value-of select="parameter.cludove/name"/>
                </NAME>
                <LENGTH>
                    <xsl:value-of select="parameter.cludove/length"/>
                </LENGTH>
                <PRIMARY_NAME>
                    <xsl:value-of select="parameter.cludove/primary_name"/>
                </PRIMARY_NAME>
                <DATA_DIRECT>
                    <xsl:value-of select="parameter.cludove/data_direct"/>
                </DATA_DIRECT>
                <TYPE>
                    <xsl:value-of select="parameter.cludove/type"/>
                </TYPE>
            </parameter>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
