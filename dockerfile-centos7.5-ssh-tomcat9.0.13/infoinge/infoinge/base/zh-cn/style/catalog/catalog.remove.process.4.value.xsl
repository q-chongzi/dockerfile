<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/isDsbSetting.cludove = 'true' and parameter.cludove/buddle_id !='infoinge' and parameter.cludove/buddle_id !='lock' and parameter.cludove/buddle_id !='diginter'">
                <xsl:if test="parameter.cludove/type ='function'">
                    <xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">
                        <parameter>
                            <IS_SYNCED_DSB>
                                <xsl:text disable-output-escaping="yes">false</xsl:text>
                            </IS_SYNCED_DSB>
                            <IS_SYNCED_ACTIVE>
                                <xsl:text disable-output-escaping="yes">true</xsl:text>
                            </IS_SYNCED_ACTIVE>
                            <SYNC_ACTIVE_STATUS>
                                <xsl:text disable-output-escaping="yes">wait_delete</xsl:text>
                            </SYNC_ACTIVE_STATUS>
                        </parameter>
                    </xsl:if>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
