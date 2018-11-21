<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
		encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:for-each
			select="/content/cludove.crest.spruce.data_exception/record.crest">
			<li>
				<xsl:attribute name="class">diginter_data_exception <xsl:value-of select="code"/></xsl:attribute>
				<xsl:variable name="verify_code">
					<xsl:value-of select="verify_code" />
				</xsl:variable>
				<!--<i><xsl:number value="position()" /></i> -->
				<a href="javascript:void(0)" class="no_time">
					<xsl:attribute name="onclick">flag = 1;onExceptionMonitorEdit('<xsl:value-of select="code" />')</xsl:attribute>
					<xsl:attribute name="title">
                        <xsl:value-of select="resource_name" />
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="connection_id" />
                        <xsl:text>]的</xsl:text>
                        <xsl:value-of select="exception_field" />
                        <xsl:value-of select="exception_content" />
                        <xsl:text>不符合</xsl:text>
                        <xsl:value-of
						select="/content/cludove.crest.spruce.verify_regulation/record.crest[code = $verify_code]/regulation_name" />
                    </xsl:attribute>
					<span>
						<xsl:attribute name="id">
						<xsl:if test="count(identifier)>0"><xsl:value-of select="identifier" /></xsl:if>
						<xsl:if test="count(identifier)=0"><xsl:value-of select="code" /></xsl:if>
						</xsl:attribute>
						<xsl:value-of select="resource_name" />
						<xsl:text>[</xsl:text>
						<xsl:value-of select="connection_id" />
						<xsl:text>]的</xsl:text>
						<xsl:value-of select="exception_field" />
						<xsl:value-of select="exception_content" />
						<xsl:text>不符合</xsl:text>
						<xsl:value-of
							select="/content/cludove.crest.spruce.verify_regulation/record.crest[code = $verify_code]/regulation_name" />
					</span>
				</a>
				<span class="remove-bottom">
					<xsl:attribute name="onclick">removeException('<xsl:value-of select="code"/>')</xsl:attribute>
					<xsl:text>删除</xsl:text>
				</span>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
