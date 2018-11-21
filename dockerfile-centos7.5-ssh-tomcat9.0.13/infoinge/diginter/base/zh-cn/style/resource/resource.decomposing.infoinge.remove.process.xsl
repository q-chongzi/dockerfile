<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="identifier">
			<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest[1]/identifier != $identifier">
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest[1]/is_dsb = 'true'">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest[1]/is_locked != 'true'">
								<xsl:choose>
									<xsl:when test="dsb_status = 'success'">
										<xsl:text>success</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>删除失败</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>总线无法连接不允许删除</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>success</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>success</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
