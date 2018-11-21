<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:template match="content">
        <div class="configure-fl-link-tit" style="font-size:16px; overflow:hidden; text-overflow: ellipsis; white-space: nowrap; padding-right:15px;">
            <xsl:choose>
                <xsl:when test="count(cludove.crest.spruce.buddle/record.crest/name)>0">
                    <xsl:attribute name="title">
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/name"></xsl:value-of>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/identifier"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/name"></xsl:value-of>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/identifier"></xsl:value-of>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>功能目录</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </div>
        <ul class="configure-fl-catalog" id="catalog_toggle">
            <li>
                <a class="catalog_toggle" href="javascript:void(0)" title="function">服务功能</a>
                <ul class="hidden catalog">
                    <xsl:for-each select="cludove.crest.spruce.catalog/record.crest[type='function']">
                        <xsl:sort order="ascending" select="identifier"/>
                        <li>
                            <xsl:attribute name="class"><xsl:value-of select="code"/> api_catalog</xsl:attribute>
                            <xsl:attribute name="buddle_id">
                                <xsl:value-of select="buddle_id"/>
                            </xsl:attribute>
                            <xsl:attribute name="catalog_id">
                                <xsl:value-of select="identifier"/>
                            </xsl:attribute>
                            <a>
                                <span>
                                    <xsl:value-of select="name"/>
                                    <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                    <xsl:value-of select="identifier"/>
                                </span>
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>
            </li>
            <li>
                <a class="catalog_toggle" href="javascript:void(0)" title="migration">数据迁移</a>
                <ul class="hidden catalog">
                    <xsl:for-each select="cludove.crest.spruce.catalog/record.crest[type='migration']">
                        <xsl:sort order="ascending" select="identifier"/>
                        <li>
                            <xsl:attribute name="class"><xsl:value-of select="code"/> api_catalog</xsl:attribute>
                            <xsl:attribute name="buddle_id">
                                <xsl:value-of select="buddle_id"/>
                            </xsl:attribute>
                            <xsl:attribute name="catalog_id">
                                <xsl:value-of select="identifier"/>
                            </xsl:attribute>
                            <a>
                                <span>
                                    <xsl:value-of select="name"/>
                                    <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                    <xsl:value-of select="identifier"/>
                                </span>
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>
            </li>
            <li>
                <a class="catalog_toggle" href="javascript:void(0)" title="synchronization">数据同步</a>
                <ul class="hidden catalog">
                    <xsl:for-each select="cludove.crest.spruce.catalog/record.crest[type='synchronization']">
                        <xsl:sort order="ascending" select="identifier"/>
                        <li>
                            <xsl:attribute name="class"><xsl:value-of select="code"/> api_catalog</xsl:attribute>
                            <xsl:attribute name="buddle_id">
                                <xsl:value-of select="buddle_id"/>
                            </xsl:attribute>
                            <xsl:attribute name="catalog_id">
                                <xsl:value-of select="identifier"/>
                            </xsl:attribute>
                            <a>
                                <span>
                                    <xsl:value-of select="name"/>
                                    <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                    <xsl:value-of select="identifier"/>
                                </span>
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>
            </li>
        </ul>
    </xsl:template>
</xsl:stylesheet>
