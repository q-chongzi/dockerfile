<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--根据总线返回数据,判断同步成功与否-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.catalog/record.crest) = 0"/>
            <xsl:otherwise>
                <parameter>
                    <xsl:choose>
                        <xsl:when test="/content/result = 'success'">
                            <IS_SYNCED_DSB>
                                <xsl:text>true</xsl:text>
                            </IS_SYNCED_DSB>
                            <SYNC_DSB_REASON/>
                        </xsl:when>
                        <xsl:otherwise>
                            <SYNC_DSB_REASON>
                                <xsl:text>failure</xsl:text>
                            </SYNC_DSB_REASON>
                        </xsl:otherwise>
                    </xsl:choose>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
