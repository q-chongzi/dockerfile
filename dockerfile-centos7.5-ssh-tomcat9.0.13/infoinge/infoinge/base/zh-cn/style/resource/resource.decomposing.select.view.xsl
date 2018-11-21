<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:if test="parameter.cludove/select_blank != ''">
			<option value="">
				<xsl:if test="/content/parameter.cludove/selected_value = ''">
					<xsl:attribute name="selected">selected</xsl:attribute>
				</xsl:if>
				<xsl:value-of select="parameter.cludove/select_blank"/>
			</option>
		</xsl:if>
		<xsl:for-each select="/content/cludove.crest.spruce.resource_decomposing/record.crest[identifier != 'diginter.business']">
			<option>
				<xsl:if test="identifier = /content/parameter.cludove/selected_value">
					<xsl:attribute name="selected">selected</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="value">
					<xsl:choose>
						<xsl:when test="/content/parameter.cludove/select_column = 'code'">
							<xsl:value-of select="code"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="identifier"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
				<xsl:value-of select="name"/>
				<xsl:text disable-output-escaping="yes"> - </xsl:text>
				<xsl:value-of select="identifier"/>
			</option>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
