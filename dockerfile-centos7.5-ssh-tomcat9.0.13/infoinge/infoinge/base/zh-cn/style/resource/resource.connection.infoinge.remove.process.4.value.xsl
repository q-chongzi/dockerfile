<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--修改IS_SYNCED_DSB想总线同步节点数据删除-->
        <xsl:choose>
            <xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/is_dsb = 'true'"></xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.prefix_code[1]/record.crest) > 0 ">
                        <parameter>
                            <IS_SYNCED_DSB>
                                <xsl:text disable-output-escaping="yes">true</xsl:text>
                            </IS_SYNCED_DSB>
                        </parameter>
                    </xsl:when>
                    <xsl:otherwise>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
