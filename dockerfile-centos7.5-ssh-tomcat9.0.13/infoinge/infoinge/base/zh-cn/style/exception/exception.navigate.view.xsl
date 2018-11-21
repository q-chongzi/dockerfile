<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:for-each select="journal.cludove/record.crest">
            <xsl:sort order="ascending" select="buddle_name"/>
            <xsl:if test="buddle_name != 'null'">
                <li>
                    <a href="javascript:void(0)">
                        <xsl:attribute name="onclick">flag = 1; onExceptionSetting('<xsl:value-of select="record_minute" />','<xsl:value-of select="request_id" />')</xsl:attribute>
                        <span>
                            <xsl:value-of select="buddle_name"/>
                            <xsl:text> </xsl:text>
                            <xsl:choose>
                                <xsl:when test="catalog_name!='null'">
                                    <xsl:value-of select="catalog_name"/>
                                    <xsl:text> </xsl:text>
                                </xsl:when>
                                <xsl:when test="data_name!='null'">
                                    <xsl:value-of select="data_name"/>
                                    <xsl:text> </xsl:text>
                                </xsl:when>
                                <xsl:when test="error_id!='null'">
                                    <xsl:value-of select="error_id"/>
                                    <xsl:text> </xsl:text>
                                </xsl:when>
                                <xsl:otherwise/>
                            </xsl:choose>
                        </span>
                    </a>
                </li>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
