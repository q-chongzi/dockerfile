<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="parameter.cludove/telephone != ''">
				<xsl:if test="count(cludove.spruce.lock.cd_contact[1]/record.crest[type = 'telephone']) = 0">
					<parameter>
						<OWNER_TYPE>
							<xsl:value-of select="parameter.cludove/type"/>
						</OWNER_TYPE>
						<OWNER_CODE>
							<xsl:value-of select="parameter.cludove/class"/>
						</OWNER_CODE>
						<TYPE>
							<xsl:text>telephone</xsl:text>
						</TYPE>
						<CONTENT>
							<xsl:value-of select="parameter.cludove/telephone"/>
						</CONTENT>
					</parameter>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
		<xsl:choose>
			<xsl:when test="parameter.cludove/email !=''">
				<xsl:if test="count(cludove.spruce.lock.cd_contact[1]/record.crest[type = 'email']) = 0">
					<parameter>
						<OWNER_TYPE>
							<xsl:value-of select="parameter.cludove/type"/>
						</OWNER_TYPE>
						<OWNER_CODE>
							<xsl:value-of select="parameter.cludove/class"/>
						</OWNER_CODE>
						<TYPE>
							<xsl:text>email</xsl:text>
						</TYPE>
						<CONTENT>
							<xsl:value-of select="parameter.cludove/email"/>
						</CONTENT>
					</parameter>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
