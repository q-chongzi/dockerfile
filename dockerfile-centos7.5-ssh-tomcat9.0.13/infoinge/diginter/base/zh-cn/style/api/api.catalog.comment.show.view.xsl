<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <xsl:for-each select="/content/cludove.crest.spruce.catalog_comment/record.crest">
            <li class="clearfix" style="margin-bottom:24px;">
                <p style="line-height:20px; float:left; word-break:break-all">
                    <xsl:value-of select="content"/>
                </p>
                <div style="float:right;color:#6c6c6c;">
                    <xsl:value-of select="substring(comment_time,1,19)"/>
                </div>
            </li>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>