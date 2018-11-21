<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="resource_name">
            <xsl:value-of select="parameter.cludove/resource_name"/>
        </xsl:variable>
        <xsl:variable name="connection_id">
            <xsl:value-of select="parameter.cludove/connection_id"/>
        </xsl:variable>
        <xsl:if test="count(parameter.cludove/code_data_migr) > 0">
            <xsl:if test="parameter.cludove/remove_resource_name != $resource_name or parameter.cludove/remove_connection_id != $connection_id">
                <parameter>
                    <MIGR_POSITION/>
                    <SYNC_POSITION/>
                    <SYNC_TIME_POSITION/>
                </parameter>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
