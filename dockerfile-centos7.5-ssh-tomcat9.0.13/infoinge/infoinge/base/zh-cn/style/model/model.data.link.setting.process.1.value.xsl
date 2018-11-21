<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--循环设置is_mian的值-->
        <xsl:for-each select="cludove.crest.spruce.data_mapping/record.crest">
            <parameter>
                <IS_MAIN>
                    <xsl:value-of select="/content/parameter.cludove/is_main"/>
                </IS_MAIN>
            </parameter>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
