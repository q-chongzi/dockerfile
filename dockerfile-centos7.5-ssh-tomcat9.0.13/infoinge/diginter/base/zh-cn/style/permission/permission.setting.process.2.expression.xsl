<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:text>BUDDLE_ID='</xsl:text>
		<xsl:value-of select="parameter.cludove/buddle_id"/>
		<xsl:text>'</xsl:text>
		<xsl:text> and  (</xsl:text>
		<xsl:for-each select="cludove.crest.spruce.data/record.crest">
			<xsl:choose>
				<xsl:when test="position()=1"/>
				<xsl:otherwise>
					<xsl:text> or </xsl:text>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:text> CATALOG_ID ='</xsl:text>
			<xsl:value-of select="catalog_id"/>
			<xsl:text>' </xsl:text>
		</xsl:for-each>
		<xsl:text>)</xsl:text>
		<xsl:text> and (count(CODE)=0</xsl:text>
		<xsl:if test="parameter.cludove/owner_type = 'duty'">
			<xsl:text> or (OWNER_TYPE='duty' and OWNER_CODE='</xsl:text>
			<xsl:value-of select="parameter.cludove/owner_code"/>
			<xsl:text>')</xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/owner_type = 'department'">
			<xsl:text> or (OWNER_TYPE='department' and OWNER_CODE ='</xsl:text>
			<xsl:value-of select="parameter.cludove/owner_code"/>
			<xsl:text>')</xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/owner_type = 'organization'">
			<xsl:text> or (OWNER_TYPE='organization' and OWNER_CODE ='</xsl:text>
			<xsl:value-of select="parameter.cludove/owner_code"/>
			<xsl:text>')</xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/owner_type = ''">
			<xsl:text> or OWNER_CODE ='</xsl:text>
			<xsl:value-of select="parameter.cludove/owner_code"/>
			<xsl:text>'</xsl:text>
		</xsl:if>
		<xsl:text>)</xsl:text>
	</xsl:template>
</xsl:stylesheet>
