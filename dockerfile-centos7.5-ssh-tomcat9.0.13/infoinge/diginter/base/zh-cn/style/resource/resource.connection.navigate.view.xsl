<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <option value="">请选择资源定义</option>
        <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest[is_local = 'true' or reg_status ='work']">
            <xsl:variable name="host">
                <xsl:value-of select="host"/>
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="is_local = 'true'">
                    <option>
                        <xsl:attribute name="selected">selected</xsl:attribute>
                        <xsl:attribute name="value">
                            <xsl:text>exchange</xsl:text>
                        </xsl:attribute>
                        <xsl:value-of select="name"/>
                    </option>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:if test="count(/content/cludove.crest.spruce.prefix_code/record.crest[host = $host]) > 0">
                        <option>
                            <xsl:attribute name="value">
                                <xsl:value-of select="/content/cludove.crest.spruce.prefix_code/record.crest[host = $host]/precode"/>
                                <xsl:text>.exchange</xsl:text>
                            </xsl:attribute>
                            <xsl:value-of select="name"/>
                        </option>
                    </xsl:if>
                </xsl:otherwise>
                <!--<xsl:when test="count(/content/cludove.crest.spruce.prefix_code/record.crest[host = $host]) >0">-->
                    <!--<xsl:attribute name="value">-->
                        <!--<xsl:value-of select="/content/cludove.crest.spruce.prefix_code/record.crest[host = $host]/precode"/>-->
                        <!--<xsl:text>.exchange</xsl:text>-->
                    <!--</xsl:attribute>-->
                    <!--<xsl:value-of select="name"/>-->
                <!--</xsl:when>-->
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
