<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="selected_value">
			<xsl:value-of select="parameter.cludove/selected_value"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="parameter.cludove/selectidentifier != ''">
				<select class="form_select">
					<xsl:attribute name="name"><xsl:value-of select="parameter.cludove/selectname"/></xsl:attribute>
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/selectidentifier"/></xsl:attribute>
					<xsl:if test="parameter.cludove/select_blank != ''">
						<option value="">
							<xsl:value-of select="parameter.cludove/select_blank"/>
						</option>
					</xsl:if>
					<xsl:for-each select="metadata/record.crest">
						<option>
							<xsl:if test="name = /content/parameter.cludove/selected_value">
								<xsl:attribute name="selected">selected</xsl:attribute>
							</xsl:if>
							<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
							<xsl:if test="display != ''">
								<xsl:value-of select="display"/>
								<xsl:text> | </xsl:text>
							</xsl:if>
							<xsl:value-of select="name"/>
						</option>
					</xsl:for-each>
				</select>
			</xsl:when>
			<xsl:otherwise>
				<xsl:if test="parameter.cludove/select_blank != ''">
					<option value="">
						<xsl:value-of select="parameter.cludove/select_blank"/>
					</option>
				</xsl:if>
				<xsl:for-each select="metadata/record.crest">
					<option>
						<xsl:if test="name = /content/parameter.cludove/selected_value">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
						<xsl:if test="display != ''">
							<xsl:value-of select="display"/>
							<xsl:text> | </xsl:text>
						</xsl:if>
						<xsl:value-of select="name"/>
					</option>
				</xsl:for-each>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
