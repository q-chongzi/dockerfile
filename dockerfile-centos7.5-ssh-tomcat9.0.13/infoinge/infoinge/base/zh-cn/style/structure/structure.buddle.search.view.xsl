<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<metadata>
			<xsl:for-each select="/content/cludove.crest.spruce.buddle/record.crest">
				<xsl:sort order="ascending" select="identifier"/>
				<record.crest>
					<name>
						<xsl:value-of select="identifier" />
					</name>
					<remark>
						<xsl:value-of select="name" />
					</remark>
					<type/>
					<display>
						<xsl:value-of select="name" />
					</display>
				</record.crest>
			</xsl:for-each>
		</metadata>
	</xsl:template>
</xsl:stylesheet>
