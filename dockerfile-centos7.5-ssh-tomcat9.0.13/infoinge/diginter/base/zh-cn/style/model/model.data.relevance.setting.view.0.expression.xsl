<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>BUDDLE_ID='</xsl:text>
        <xsl:value-of select="parameter.cludove/buddle_id"/>
        <xsl:text>' and CATALOG_ID='</xsl:text>
        <xsl:value-of select="parameter.cludove/catalog_id"/>
        <xsl:text>' and (OPERATION = 'synchronize' or OPERATION = 'mysql_sync' or OPERATION = 'oracle_sync' or OPERATION = 'sql_sync' or OPERATION = 'migrate' or OPERATION = 'mysql_migrate' or OPERATION = 'oracle_migr' or OPERATION = 'sql_migr' or OPERATION = 'infoinge_sync' or OPERATION = 'infoinge_migr' or OPERATION = 'class_sync' or OPERATION = 'class_migr')</xsl:text>
    </xsl:template>
</xsl:stylesheet>