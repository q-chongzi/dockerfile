<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="identifier">
			<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
		</xsl:variable>
		<xsl:text>[</xsl:text>
			<xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest[run_id != 'negative']">
				<xsl:if test="position() > 1">
					<xsl:text>,</xsl:text>
				</xsl:if>
				<xsl:text>{</xsl:text>
				<xsl:text>key:"</xsl:text>
				<xsl:value-of select="code"/>
				<xsl:text>",code:"</xsl:text>
				<xsl:value-of select="code"/>
				<xsl:text>",name:"</xsl:text>
				<xsl:value-of select="name"/>
				<xsl:text>",identifier:"</xsl:text>
				<xsl:value-of select="identifier"/>
				<xsl:text>",template:"</xsl:text>
				<xsl:value-of select="template"/>
				<xsl:text>",source:"</xsl:text>
					<xsl:choose>
						<xsl:when test="is_dsb = 'true'">
							<xsl:choose>
								<xsl:when test="is_locked = 'true'">
									<xsl:text>img/icon104.png</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>img/icon101.png</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="identifier = $identifier">
							<xsl:choose>
								<xsl:when test="is_locked = 'true'">
									<xsl:text>img/icon103.png</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>img/icon100.png</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="type = 'DB'">
							<xsl:choose>
								<xsl:when test="is_locked = 'true'">
									<xsl:text>img/icon107.png</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>img/icon106.png</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<xsl:choose>
								<xsl:when test="is_locked = 'true'">
									<xsl:text>img/icon105.png</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>img/icon102.png</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:otherwise>
					</xsl:choose>
				<xsl:text>"}</xsl:text>
			</xsl:for-each>
		<xsl:text>]</xsl:text>
	</xsl:template>
</xsl:stylesheet>
