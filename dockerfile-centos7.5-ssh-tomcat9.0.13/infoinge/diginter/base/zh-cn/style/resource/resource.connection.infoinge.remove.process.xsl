<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="identifier">
			<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/identifier != $identifier">
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/is_dsb = 'true'">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/is_locked != 'true'">
								<xsl:choose>
									<xsl:when test="dsb_status = 'success'">
										<xsl:text>resource_connection</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>resource_connection_fail</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>resource_connection_fail_dsb</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>resource_connection</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>resource_connection</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
