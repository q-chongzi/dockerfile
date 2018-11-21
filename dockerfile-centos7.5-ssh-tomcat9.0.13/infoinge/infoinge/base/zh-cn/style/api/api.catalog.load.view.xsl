<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:template match="content">
        <div class="item">
            <div class="title">
                <span class="span4">
                    <xsl:choose>
                        <xsl:when test="count(cludove.crest.spruce.buddle/record.crest/name)>0">
                            <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/name"></xsl:value-of>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"></xsl:value-of>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>功能参数</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </span>
            </div>
            <div class="div_nav">
                <div class="div_nav2">
                    <h3 style="padding-left: 30px">服务功能</h3>
                    <div class="list">
                        <ul class="left_txt">
                            <xsl:for-each select="cludove.crest.spruce.catalog/record.crest[type='function']">
                                <xsl:sort order="ascending" select="identifier"/>
                                <li>
                                    <xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
                                    <a target="apiDescription">
                                        <xsl:attribute name="href">
                                            <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.description.show.view&amp;buddle_id=</xsl:text>
                                            <xsl:value-of select="buddle_id"/><xsl:text>&amp;catalog_id=</xsl:text><xsl:value-of select="identifier"/>
                                        </xsl:attribute>
                                        <span>
                                            <xsl:value-of select="name"/>
                                            <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                            <xsl:value-of select="identifier"/>
                                        </span>
                                    </a>
                                </li>
                            </xsl:for-each>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="div_nav">
                <div class="div_nav2">
                    <h3 style="padding-left: 30px">数据迁移</h3>
                    <div class="list">
                        <ul class="left_txt">
                            <xsl:for-each select="cludove.crest.spruce.catalog/record.crest[type='migration']">
                                <xsl:sort order="ascending" select="identifier"/>
                                <li>
                                    <xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
                                    <a target="apiDescription">
                                        <xsl:attribute name="href">
                                            <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.description.show.view&amp;buddle_id=</xsl:text>
                                            <xsl:value-of select="buddle_id"/><xsl:text>&amp;catalog_id=</xsl:text><xsl:value-of select="identifier"/>
                                        </xsl:attribute>
                                        <span>
                                            <xsl:value-of select="name"/>
                                            <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                            <xsl:value-of select="identifier"/>
                                        </span>
                                    </a>
                                </li>
                            </xsl:for-each>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="div_nav">
                <div class="div_nav2">
                    <h3 style="padding-left: 30px">数据同步</h3>
                    <div class="list">
                        <ul class="left_txt">
                            <xsl:for-each select="cludove.crest.spruce.catalog/record.crest[type='synchronization']">
                                <xsl:sort order="ascending" select="identifier"/>
                                <li>
                                    <xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
                                    <a target="apiDescription">
                                        <xsl:attribute name="href">
                                            <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.description.show.view&amp;buddle_id=</xsl:text>
                                            <xsl:value-of select="buddle_id"/><xsl:text>&amp;catalog_id=</xsl:text><xsl:value-of select="identifier"/>
                                        </xsl:attribute>
                                        <span>
                                            <xsl:value-of select="name"/>
                                            <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                            <xsl:value-of select="identifier"/>
                                        </span>
                                    </a>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
