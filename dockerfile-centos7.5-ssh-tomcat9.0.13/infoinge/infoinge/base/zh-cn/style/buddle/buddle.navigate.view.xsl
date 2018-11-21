<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<div class="div_nav" style="margin-top:0;display:none">
			<!--<xsl:attribute name="onclick">display:none</xsl:attribute>-->
			<ul>
				<li>
					<a href="javascript:void(0)" onclick="onJobNavigate('')">
						<span style="padding-left:1.5em;display:inline-block">
							<xsl:text>作业管理</xsl:text>
						</span>
					</a>
					<ul id="job_navigation">
					</ul>
				</li>
			</ul>
		</div>
		<div class="tit">
			<span>
				<a href="javascript:void(0)" style="color: white">
					<xsl:attribute name="onclick">onResourceConnectionSetting('<xsl:value-of select="parameter.cludove/record_code"/>')</xsl:attribute>
					<xsl:text disable-output-escaping="yes">资源定义</xsl:text>
				</a>
				<!--<xsl:text disable-output-escaping="yes"> - </xsl:text>-->
				<a href="javascript:void(0)" style="color: white">
					<xsl:attribute name="onclick">onBuddleNaviagate('<xsl:value-of select="parameter.cludove/resource_id" />');</xsl:attribute>
					<!--<xsl:value-of select="parameter.cludove/resource_id"/>-->
				</a>
			</span>
			<input type="hidden" id="buddle_id"/>
			<input type="hidden" id="catalog_id"/>
			<input type="hidden" id="design_code"/>
			<input type="hidden" id="data_select_code"/>
			<input type="hidden" id="data_select_value_code"/>
			<input type="hidden" id="data_select_tag_code"/>
			<input type="hidden" id="data_select_condition_code"/>
			<input type="hidden" id="data_select_response_code"/>
			<input type="hidden" id="data_select_item_code"/>
			<input type="hidden" id="data_select_expression_code"/>
			<input type="hidden" id="data_select_type"/>
			<input type="hidden" id="data_select_connection_id"/>
			<input type="hidden" id="data_select_resource_name"/>
		</div>
		<ul>
			<xsl:for-each select="cludove.crest.spruce.buddle/record.crest">
				<xsl:sort order="ascending" select="identifier"/>
				<xsl:choose>
					<xsl:when test="/content/parameter.cludove/is_local = 'true'">
						<li>
							<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onCatalogNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_navigater</xsl:text>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
									<xsl:value-of select="name"/>
									<xsl:text disable-output-escaping="yes"> - </xsl:text>
									<xsl:value-of select="identifier"/>
								</span>
							</a>
							<ul>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_container</xsl:text></xsl:attribute>
							</ul>
						</li>
					</xsl:when>
					<xsl:when test="identifier != 'lock' and identifier != 'infoinge' and identifier != 'diginter'">
						<li>
							<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onCatalogNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_navigater</xsl:text>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
									<xsl:value-of select="name"/>
									<xsl:text disable-output-escaping="yes"> - </xsl:text>
									<xsl:value-of select="identifier"/>
								</span>
							</a>
							<ul>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_container</xsl:text></xsl:attribute>
							</ul>
						</li>
					</xsl:when>
					<xsl:otherwise/>
				</xsl:choose>
				<!--<xsl:if test="identifier != 'infoinge'">-->

				<!--</xsl:if>-->
			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>
