<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:for-each select="cludove.crest.spruce.data/record.crest">
			<xsl:sort order="ascending" select="position"/>
			<li>
				<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
				<a href="javascript:void(0)">
					<span>
						<xsl:attribute name="onclick">flag=1;onDataSetting('<xsl:value-of select="code"/>');</xsl:attribute>
						<xsl:value-of select="name"/>
					</span>
				</a>
				<ul>
					<li>
						<a href="javascript:void(0)">
							<xsl:attribute name="onclick">onDataParameterNaviagate('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
							<span>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_parameter_navigater</xsl:text></xsl:attribute>
								<xsl:text disable-output-escaping="yes">数据参数</xsl:text>
							</span>
						</a>
					</li>
					<!--li>
						<a href="javascript:void(0)">
							<span>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_variable_navigater</xsl:text></xsl:attribute>
								<xsl:attribute name="onclick">onDataVariableNaviagate('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
								<xsl:text disable-output-escaping="yes">数据变量</xsl:text>
							</span>
						</a>
					</li-->
					<xsl:if test="(operation = 'build' or operation = 'modify') and (type = 'DB' or type = 'XML')">
						<li>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_value_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onDataValueNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_value_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_value_navigater</xsl:text>', '<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
									<xsl:text disable-output-escaping="yes">数据取值</xsl:text>
								</span>
							</a>
							<ul class="value_tag_container">
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_value_container</xsl:text></xsl:attribute>
							</ul>
						</li>
						<li>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_quote_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onQuoteNaviagate('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
									<xsl:text disable-output-escaping="yes">数据引用</xsl:text>
								</span>
							</a>
						</li>
					</xsl:if>
					<xsl:if test="operation = 'build' or operation = 'modify' or operation = 'remove'">
						<li>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_condition_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onDataConditionNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_condition_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_condition_navigater</xsl:text>', '<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
									<xsl:text disable-output-escaping="yes">执行条件</xsl:text>
								</span>
							</a>
							<ul>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_condition_container</xsl:text></xsl:attribute>
							</ul>
						</li>
					</xsl:if>
					<xsl:if test="operation = 'search' or operation = 'migrate' or operation = 'synchronize' or operation = 'modify' or operation = 'remove' or operation = 'mysql_migrate' or operation = 'mysql_sync' or operation = 'oracle_migr' or operation = 'oracle_sync' or operation = 'sql_migr' or operation = 'sql_sync'">
						<li>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_expression_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onDataExpressionNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_expression_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_expression_navigater</xsl:text>', '<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
									<xsl:text disable-output-escaping="yes">查询条件</xsl:text>
								</span>
							</a>
							<ul>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_expression_container</xsl:text></xsl:attribute>
							</ul>
						</li>
					</xsl:if>
					<xsl:if test="operation = 'search' or operation = 'migrate' or operation = 'synchronize' or operation = 'mysql_migrate' or operation = 'mysql_sync' or operation = 'oracle_migr' or operation = 'oracle_sync' or operation = 'sql_migr' or operation = 'sql_sync'">
						<li>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_order_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onDataOrderNaviagate('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
									<xsl:text disable-output-escaping="yes">数据排序</xsl:text>
								</span>
							</a>
							<ul>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_order_container</xsl:text></xsl:attribute>
							</ul>
						</li>
						<!--li>
							<a href="javascript:void(0)">
								<span>
									<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_group_navigater</xsl:text></xsl:attribute>
									<xsl:attribute name="onclick">onDataGroupNaviagate('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="catalog_id"/>', '<xsl:value-of select="code"/>', '<xsl:value-of select="type"/>', '<xsl:value-of select="connection_id"/>', '<xsl:value-of select="resource_name"/>')</xsl:attribute>
									<xsl:text disable-output-escaping="yes">数据分组</xsl:text>
								</span>
							</a>
							<ul>
								<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_data_group_container</xsl:text></xsl:attribute>
							</ul>
						</li-->
					</xsl:if>
				</ul>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
