<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="primary">
			<xsl:value-of select="metadata/record.crest[1]/primary"/>
		</xsl:variable>
		<span style="color:#808080" class="span_tit">本表字段：</span>
		<select id="data_s_field" class="validate[required]" title="用于操作名字为查询时增加库表关联本表字段录入项">
			<xsl:choose>
				<xsl:when test="parameter.cludove/type= 'Hinge' or parameter.cludove/type= 'WS' or parameter.cludove/type= 'Class'">
					<option value="">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type= 'Hinge'">
								<xsl:text>请选择功能目录数据元字段</xsl:text>
							</xsl:when>
							<xsl:when test="parameter.cludove/type= 'WS' or parameter.cludove/type= 'Class'">
								<xsl:text>请选择驱动处理数据元字段</xsl:text>
							</xsl:when>
							<xsl:otherwise/>
						</xsl:choose>
					</option>
					<xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest">
						<option>
							<xsl:if test="name = /content/cludove.crest.spruce.resource_relevance/record.crest/s_field">
								<xsl:attribute name="selected">selected</xsl:attribute>
							</xsl:if>
							<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
							<xsl:attribute name="class"><xsl:text>12</xsl:text></xsl:attribute>
							<xsl:value-of select="name"/>
							<xsl:if test="remark!=''">
								<xsl:text> - [</xsl:text>
								<xsl:value-of select="remark"/>
								<xsl:text>]</xsl:text>
							</xsl:if>
						</option>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<option value="">请选择本表字段</option>
					<xsl:for-each select="metadata/record.crest">
						<option>
							<xsl:if test="name = /content/cludove.crest.spruce.resource_relevance/record.crest/s_field">
								<xsl:attribute name="selected">selected</xsl:attribute>
							</xsl:if>
							<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
							<xsl:attribute name="class"><xsl:value-of select="type"/></xsl:attribute>
							<xsl:value-of select="name"/>
							<xsl:if test="remark!=''">
								<xsl:text> - [</xsl:text>
								<xsl:value-of select="remark"/>
								<xsl:text>]</xsl:text>
							</xsl:if>
						</option>
					</xsl:for-each>
				</xsl:otherwise>
			</xsl:choose>
		</select>
		<input type="hidden" id="resource_relevance_code">
			<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_relevance/record.crest/code"/></xsl:attribute>
		</input>
	</xsl:template>
</xsl:stylesheet>
