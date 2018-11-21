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
            <xsl:when test="parameter.cludove/isDsbSetting.cludove = 'true' and parameter.cludove/position = '0' and count(cludove.crest.spruce.catalog/record.crest) > 0">
                <xsl:variable name="main_code">
                    <xsl:value-of select="parameter.cludove/data_main_code"/>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="parameter.cludove/code = $main_code">
                        <parameter>
                            <BUDDLE_ID>
                                <xsl:value-of select="parameter.cludove/buddle_id"/>
                            </BUDDLE_ID>
                            <CATALOG_ID>
                                <xsl:value-of select="parameter.cludove/catalog_id"/>
                            </CATALOG_ID>
                        </parameter>
                    </xsl:when>
                    <xsl:otherwise>
                        <parameter>
                            <CODE>
                                <xsl:value-of select="parameter.cludove/code"/>
                            </CODE>
                        </parameter>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
