<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:template match="content">
        <div class="configure-fl-about-tit api_title" id="api_hinge">
            <xsl:choose>
                <xsl:when test="parameter.cludove/resource_name = ''">
                    <xsl:attribute name="title">
                        <xsl:text>讯枢.青云之上</xsl:text>
                    </xsl:attribute>
                    <xsl:text>讯枢.青云之上</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="title">
                        <xsl:value-of select="parameter.cludove/resource_name"/>
                    </xsl:attribute>
                    <xsl:value-of select="parameter.cludove/resource_name"/>
                </xsl:otherwise>
            </xsl:choose>
        </div>
        <ul class="configure-nav1" id="api_application">
            <xsl:for-each select="cludove.crest.spruce.buddle/record.crest">
                <xsl:sort order="ascending" select="identifier"/>
                <xsl:choose>
                    <xsl:when test="identifier != 'diginter' and identifier != 'infoinge'">
                        <li>
                            <xsl:attribute name="class"><xsl:value-of select="code"/> nav1-lis api_buddle</xsl:attribute>
                            <xsl:attribute name="api_buddle_id">
                                <xsl:value-of select="identifier"/>
                            </xsl:attribute>
                            <a style="height:40px; text-overflow: ellipsis; white-space: nowrap; padding-right:18px;">
                                <xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_navigater</xsl:text></xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="name"/>
                                    <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                    <xsl:value-of select="identifier"/>
                                </xsl:attribute>
                                <xsl:attribute name="onclick">
                                    onApiCatalogShow('<xsl:value-of select="identifier"/>')
                                </xsl:attribute>
                                <xsl:value-of select="name"/>
                                <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                <xsl:value-of select="identifier"/>
                            </a>
                        </li>
                    </xsl:when>
                    <xsl:otherwise />
                </xsl:choose>
            </xsl:for-each>
        </ul>
    </xsl:template>
</xsl:stylesheet>
