<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<!--<li>-->
			<!--<a href="javascript:void(0)">-->
				<!--<span>-->
					<!--<xsl:attribute name="onclick">onExchangeDesignNaviagate('<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>')</xsl:attribute>-->
					<!--<xsl:text disable-output-escaping="yes">交换设计</xsl:text>-->
				<!--</span>-->
			<!--</a>-->
			<!--<ul>-->
				<!--<xsl:attribute name="id"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/><xsl:text disable-output-escaping="yes">_exchange_design_container</xsl:text></xsl:attribute>-->
			<!--</ul>-->
		<!--</li>-->
		<li>
			<a href="javascript:void(0)">
				<span>
					<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_exception_navigater</xsl:text></xsl:attribute>
					<xsl:attribute name="onclick">onExceptionResponseNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_exception_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_exception_navigater</xsl:text>', '<xsl:value-of select="parameter.cludove/buddle_id"/>')</xsl:attribute>
					<xsl:text disable-output-escaping="yes">异常响应</xsl:text>
				</span>
			</a>
			<ul>
				<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_exception_container</xsl:text></xsl:attribute>
			</ul>
		</li>
 		
		<li>
			<a href="javascript:void(0)">
				<span>
					<xsl:attribute name="onclick">businessmodel()</xsl:attribute>
					<xsl:text disable-output-escaping="yes">业务模型</xsl:text>
				</span>
			</a>
			<ul>
				<xsl:for-each select="cludove.crest.spruce.catalog/record.crest">
					<xsl:sort order="ascending" select="identifier"/>
					<li>
						<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
						<a href="javascript:void(0)">
							<span>
								<xsl:attribute name="onclick">flag = 1; onCatalogSetting('<xsl:value-of select="code"/>', '<xsl:value-of select="identifier"/>', 0)</xsl:attribute>
								<xsl:value-of select="name"/>
							</span>
						</a>
						<ul>
							<li>
								<a href="javascript:void(0)">
									<span>
										<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_data_navigater</xsl:text></xsl:attribute>
										<xsl:attribute name="onclick">onDataNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_data_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_data_navigater</xsl:text>', '<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
										<xsl:text disable-output-escaping="yes">目录数据</xsl:text>
									</span>
								</a>
								<ul>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_data_container</xsl:text></xsl:attribute>
								</ul>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span>
										<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_response_navigater</xsl:text></xsl:attribute>
										<xsl:attribute name="onclick">onCatalogResponseNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_response_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_response_navigater</xsl:text>', '<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
										<xsl:text disable-output-escaping="yes">目录响应</xsl:text>
									</span>
								</a>
								<ul>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_response_container</xsl:text></xsl:attribute>
								</ul>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span>
										<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_style_navigater</xsl:text></xsl:attribute>
										<xsl:attribute name="onclick">onCatalogStyleSetting('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
										<xsl:text disable-output-escaping="yes">样式单文件</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span>
										<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_infoapi_navigater</xsl:text></xsl:attribute>
										<xsl:attribute name="onclick">onCatalogInfoapiSetting('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
										<xsl:text disable-output-escaping="yes">功能参数</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span>
										<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_response_navigater</xsl:text></xsl:attribute>
										<xsl:attribute name="onclick">onCatalogReturnEdit('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
										<xsl:text disable-output-escaping="yes">功能返回</xsl:text>
									</span>
								</a>
								<ul>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_response_container</xsl:text></xsl:attribute>
								</ul>
							</li>
						</ul>
					</li>
				</xsl:for-each>

			</ul>
		</li>
		
		<li>
			<a href="javascript:void(0)">
				<span>
					<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_issue_navigater</xsl:text></xsl:attribute>
					<xsl:attribute name="onclick">onBuddleissueNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_issue_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_issue_navigater</xsl:text>', '<xsl:value-of select="parameter.cludove/buddle_id"/>')</xsl:attribute>
					<xsl:text disable-output-escaping="yes">应用发布</xsl:text>
				</span>
			</a>
			<ul>
				<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_issue_container</xsl:text></xsl:attribute>
			</ul>
		</li>
	</xsl:template>
</xsl:stylesheet>
