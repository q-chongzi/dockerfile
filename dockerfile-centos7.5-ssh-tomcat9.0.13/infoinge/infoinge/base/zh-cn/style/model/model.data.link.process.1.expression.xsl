<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询功能目录数据，用以判断改功能是否为迁移或同步-->
       <xsl:choose>
           <xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0 ">
               <xsl:text>(BUDDLE_ID ='</xsl:text>
               <xsl:value-of select="parameter.cludove/buddle_id"/>
               <xsl:text>' and CATALOG_ID ='</xsl:text>
               <xsl:value-of select="parameter.cludove/catalog_id"/>
               <xsl:text>' and TYPE ='DB') and (OPERATION = 'migrate' or OPERATION = 'synchronize' or OPERATION = 'mysql_migrate' or OPERATION = 'mysql_sync' or OPERATION = 'oracle_migr' or OPERATION = 'oracle_sync' or OPERATION = 'sql_migr' or OPERATION = 'sql_sync')</xsl:text>
               <!--<xsl:text> AND IS_ACTIVE = 'true'</xsl:text>-->
           </xsl:when>
           <xsl:otherwise>
               <xsl:text>count(CODE) = 0</xsl:text>
           </xsl:otherwise>
       </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
