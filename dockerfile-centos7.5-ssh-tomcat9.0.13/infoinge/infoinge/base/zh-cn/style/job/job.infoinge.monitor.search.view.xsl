<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <xsl:text>[</xsl:text>
            <xsl:for-each select="cludove.crest.spruce.infoinge_job/record.crest">
                <xsl:if test="position() > 1">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>{</xsl:text>
                    <xsl:text>code:"</xsl:text>
                     <xsl:value-of select="code"/>
                    <xsl:text>",name:"</xsl:text>
                        <xsl:value-of select="name"/>
                    <xsl:text>",frequentness:"</xsl:text>
                        <xsl:value-of select="frequentness"/>
                    <xsl:text>",interval_time:"</xsl:text>
                        <xsl:value-of select="interval_time"/>
                    <xsl:text>",join_time:"</xsl:text>
                    <xsl:value-of select="substring(join_time,1,19)"/>
                    <xsl:text>",run_start_hour:"</xsl:text>
                    <xsl:value-of select="run_start_hour"/>
                    <xsl:text>",run_start_minute:"</xsl:text>
                    <xsl:value-of select="run_start_minute"/>
                    <xsl:text>",run_finish_hour:"</xsl:text>
                    <xsl:value-of select="run_finish_hour"/>
                    <xsl:text>",run_finish_minute:"</xsl:text>
                    <xsl:value-of select="run_finish_minute"/>
                    <xsl:text>",is_running:"</xsl:text>
                    <xsl:value-of select="is_running"/>
                    <xsl:text>"</xsl:text>
                <xsl:text>}</xsl:text>
            </xsl:for-each>
        <xsl:text>]</xsl:text>
    </xsl:template>
</xsl:stylesheet>
