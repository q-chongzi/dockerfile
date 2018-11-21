<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:for-each select="journal.cludove/record.crest">
            <xsl:sort order="ascending" select="record_time"/>
            <xsl:if test="buddle_name != 'null'">
                <li>
                    <!--<i><xsl:number value="position()" /></i>-->
                    <a style="width:330px" class="warning_color" href="javascript:void(0)">
                        <xsl:attribute name="onclick">onExceptionWarningSetting('<xsl:value-of select="record_minute" />','<xsl:value-of select="request_id" />')</xsl:attribute>
                        <xsl:attribute name="title">
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
                                <xsl:otherwise/>
                            </xsl:choose>
                            <xsl:value-of select="description"/>
                            <xsl:if test="error_id!='null'">
                                <xsl:text> [</xsl:text>
                                <xsl:value-of select="error_id"/>
                                <xsl:text>]</xsl:text>
                            </xsl:if>
                        </xsl:attribute>
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
                                <xsl:otherwise/>
                            </xsl:choose>
                            <xsl:value-of select="description"/>
                            <xsl:if test="error_id!='null'">
                                <xsl:text> [</xsl:text>
                                <xsl:value-of select="error_id"/>
                                <xsl:text>]</xsl:text>
                            </xsl:if>
                        </span>
                    </a>
                    <span>
                        <xsl:value-of select="record_time"/>
                    </span>
                </li>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
