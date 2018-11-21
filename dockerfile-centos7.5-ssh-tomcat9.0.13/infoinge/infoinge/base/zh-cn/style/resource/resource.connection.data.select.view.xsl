<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:if test="parameter.cludove/select_blank != ''">
            <option value="">
                <xsl:if test="/content/parameter.cludove/selected_code = ''">
                    <xsl:attribute name="selected">selected</xsl:attribute>
                </xsl:if>
                <xsl:value-of select="parameter.cludove/select_blank"/>
            </option>
        </xsl:if>
        <xsl:choose>
            <xsl:when test="/content/parameter.cludove/type = 'Class' or /content/parameter.cludove/type = 'WS'">
                <option>
                    <xsl:attribute name="selected">selected</xsl:attribute>
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier='infoinge.cludove']/identifier"/></xsl:attribute>
                    <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier='infoinge.cludove']/name"/>
                </option>
            </xsl:when>
            <xsl:otherwise>
                <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest[identifier='infoinge.cludove' or (identifier!='diginter.business' and is_locked!='true' and ((reg_status='work') or ((IS_DSB != 'true' or count(IS_DSB) = 0) and (REG_STATUS != 'regist' or count(REG_STATUS) = 0))))]">
                    <option>
                        <xsl:if test="identifier = /content/parameter.cludove/connection_id">
                            <xsl:attribute name="selected">selected</xsl:attribute>
                        </xsl:if>
                        <xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
                        <xsl:value-of select="name"/>
                    </option>
                </xsl:for-each>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
