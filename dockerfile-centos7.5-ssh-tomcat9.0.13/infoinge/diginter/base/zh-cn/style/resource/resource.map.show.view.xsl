<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="identifier">
            <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
        </xsl:variable>
        <xsl:text>[</xsl:text>
        <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest">
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
            <xsl:text>key:"</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text>",code:"</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text>",name:"</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text>",latlong:[</xsl:text>
            <xsl:value-of select="gps_location"/>
            <xsl:text>],</xsl:text>
            <xsl:choose>
                <xsl:when test="is_dsb = 'true'">
                    <xsl:choose>
                        <xsl:when test="is_locked = 'true'">
                            <xsl:text>fill:"#FF6339"</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>fill:"#63FF6B"</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                   <xsl:text>,size:new go.Size(12,12)</xsl:text>
                </xsl:when>
                <xsl:when test="identifier = $identifier">
                    <xsl:choose>
                        <xsl:when test="is_locked = 'true'">
                            <xsl:text>fill:"#FF6339"</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>fill:"#FFFF6B"</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text>,size:new go.Size(16,16)</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="is_locked = 'true'">
                            <xsl:text>fill:"#FF6339"</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>fill:"#009CCE"</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text>,size:new go.Size(8,8)</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>}</xsl:text>
        </xsl:for-each>
        <xsl:text>]</xsl:text>
    </xsl:template>
</xsl:stylesheet>
