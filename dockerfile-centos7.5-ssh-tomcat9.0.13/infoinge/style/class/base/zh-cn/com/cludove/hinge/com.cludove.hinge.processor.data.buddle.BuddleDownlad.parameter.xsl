<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml"/>
	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="method.cludove = 'transform'">
				<metadata>
					<record.crest>
						<name>
							<xsl:text>name</xsl:text>
						</name>
						<remark>
							<xsl:text>方法名字</xsl:text>
						</remark>
						<type>
							<xsl:text>String</xsl:text>
						</type>
						<display>
							<xsl:text>方法名字</xsl:text>
						</display>
						<length>
							<xsl:text>128</xsl:text>
						</length>
						<primary>
							<xsl:text>code</xsl:text>
						</primary>
					</record.crest>
					<record.crest>
						<name>
							<xsl:text>length</xsl:text>
						</name>
						<remark>
							<xsl:text>方法名字的长度</xsl:text>
						</remark>
						<type>
							<xsl:text>Integer</xsl:text>
						</type>
						<display>
							<xsl:text>名字长度</xsl:text>
						</display>
						<length>
							<xsl:text>4</xsl:text>
						</length>
						<primary>
							<xsl:text>code</xsl:text>
						</primary>
					</record.crest>
				</metadata>
			</xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
