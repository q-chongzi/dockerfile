<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <table style="margin:20px 0 0 20px;">
                <tr>
                    <th>目录标识</th>
                    <th>目录名字</th>
                    <th>判断权限</th>
                    <th>入口目录</th>
                </tr>
                <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                    <xsl:sort order="ascending" select="identifier"/>
                    <tr>
                        <td>
                            <xsl:value-of select="identifier" />
                        </td>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="is_permit = 'true'">
                                    <xsl:text disable-output-escaping="yes">是</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text disable-output-escaping="yes">否</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="is_home = 'true'">
                                    <xsl:text disable-output-escaping="yes">是</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text disable-output-escaping="yes">否</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
    </xsl:template>
</xsl:stylesheet>
