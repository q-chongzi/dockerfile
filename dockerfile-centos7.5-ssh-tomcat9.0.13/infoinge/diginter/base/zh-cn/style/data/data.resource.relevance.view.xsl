<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="GBK" method="xml"/>
<xsl:include href="common.xsl"/>
<xsl:template match="content">
	<xsl:variable name="primary">
		<xsl:value-of select="metadata/record.crest[1]/primary"/>
	</xsl:variable>
	<span style="color:#808080;" class="span_tit">关联字段：</span>
	<select id="data_r_field" class="validate[required]" title="用于操作名字为查询时增加库表关联字段录入项">

		<xsl:choose>
			<xsl:when test="parameter.cludove/data_r_type= 'Hinge' or parameter.cludove/data_r_type= 'WS' or parameter.cludove/data_r_type= 'Class'">
				<option value="">
					<xsl:choose>
						<xsl:when test="parameter.cludove/data_r_type= 'Hinge'">
							<xsl:text>请选择功能目录数据元字段</xsl:text>
						</xsl:when>
						<xsl:when test="parameter.cludove/data_r_type= 'WS' or parameter.cludove/data_r_type= 'Class'">
							<xsl:text>请选择驱动处理数据元字段</xsl:text>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</option>
				<xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest">
					<option>
						<xsl:if test="name = /content/cludove.crest.spruce.resource_relevance/record.crest/r_field">
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
				<xsl:choose>
					<xsl:when test="count(metadata/record.crest) > 0">
						<option>
							<xsl:attribute name="value"><xsl:value-of select="$primary"/></xsl:attribute>
							<xsl:attribute name="class">
								<xsl:value-of select="type"/>
							</xsl:attribute>
							<xsl:value-of select="$primary"/>
						</option>
						<xsl:for-each select="metadata/record.crest[name != $primary]">
							<option>
								<xsl:if test="name = /content/cludove.crest.spruce.resource_relevance/record.crest/r_field">
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
					</xsl:when>
					<xsl:otherwise>
						<option value="">
							<xsl:text>添加目录数据后才可选择关联字段</xsl:text>
						</option>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>


	</select>
	<p class="list" style="margin-top:8px">
		<span class="span_tit">关联资源：</span>
		<input id="data_r_identifier_view" maxlength="128" type="text" disabled="disabled" placeholder="显示添加的第一条目录数据的关联资源" class="input-1">
		</input>
	</p>
	<p class="list">
		<span class="span_tit">关联表名：</span>
		<input id="r_resource_name_view" maxlength="128" type="text" disabled="disabled" placeholder="显示添加的第一条目录数据的关联表名" class="input-1">
		</input>
	</p>
</xsl:template>
</xsl:stylesheet>