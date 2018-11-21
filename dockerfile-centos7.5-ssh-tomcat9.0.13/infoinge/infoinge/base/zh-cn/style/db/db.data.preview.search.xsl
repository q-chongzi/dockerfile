<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<!--<xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>-->
		<!--<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>-->
		<xsl:variable name="location_id">
			<xsl:value-of select="parameter.cludove/connection_id"/>
			<xsl:text>.</xsl:text>
			<xsl:value-of select="parameter.cludove/resource_name"/>
		</xsl:variable>
		<!--<xsl:variable name="location_id">-->
		<!--<xsl:value-of select="translate(parameter.cludove/connection_id,$uppercase,$smallcase)"/>-->
		<!--<xsl:text>.</xsl:text>-->
		<!--<xsl:value-of select="translate(parameter.cludove/resource_name,$uppercase,$smallcase)"/>-->
		<!--<xsl:text>/record.crest</xsl:text>-->
		<!--</xsl:variable>-->
		<xsl:for-each select="*">
			<xsl:apply-templates select=".">
				<xsl:with-param name="location_id">
					<xsl:value-of select="$location_id"/>
				</xsl:with-param>
			</xsl:apply-templates>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="*">
		<xsl:param name="location_id"/>
		<xsl:if test="@id=$location_id">
			<xsl:text disable-output-escaping="no">&lt;</xsl:text>
			<xsl:value-of select="$location_id"/>
			<xsl:text disable-output-escaping="no">&gt;</xsl:text>
			<div style="margin-left:50px;line-height: 20px">
				<xsl:for-each select="record.crest">
					<div style="margin-left:50px">
						<xsl:text disable-output-escaping="no">&lt;</xsl:text>
						<xsl:text disable-output-escaping="no">record.crest</xsl:text>
						<xsl:text disable-output-escaping="no">&gt;</xsl:text>
					</div>
					<div style="margin-left:100px">
						<xsl:for-each select="node()">
							<xsl:text disable-output-escaping="no">&lt;</xsl:text>
							<xsl:value-of select="name()"/>
							<xsl:text disable-output-escaping="no">&gt;</xsl:text>
							<span style="color:#1275B5">
								<xsl:value-of select="."/>
							</span>
							<xsl:text disable-output-escaping="no">&lt;/</xsl:text>
							<xsl:value-of select="name()"/>
							<xsl:text disable-output-escaping="no">&gt;</xsl:text>
							<br/>
						</xsl:for-each>
					</div>
					<div style="margin-left:50px">
						<xsl:text disable-output-escaping="no">&lt;/</xsl:text>
						<xsl:text disable-output-escaping="no">record.crest</xsl:text>
						<xsl:text disable-output-escaping="no">&gt;</xsl:text>
					</div>
				</xsl:for-each>
			</div>
			<xsl:text disable-output-escaping="no">&lt;/</xsl:text>
			<xsl:value-of select="$location_id"/>
			<xsl:text disable-output-escaping="no">&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
