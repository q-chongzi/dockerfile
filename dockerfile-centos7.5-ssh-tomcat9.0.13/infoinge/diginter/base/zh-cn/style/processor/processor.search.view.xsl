<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<table border="" cellspacing="" cellpadding="" style="table-layout: fixed;">
			<tr>
				<th class="td1" style="padding-left:0;"><span class="span_check span_check_processor" id="check_all_processor" /></th>
				<th>驱动处理类</th>
				<th>驱动名称</th>
				<th>驱动类型</th>
				<th style="width:15%;">操作</th>
			</tr>
			<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
				<xsl:sort order="ascending" select="type"/>
				<xsl:sort order="ascending" select="class"/>
				<tr class="border-bg2">
					<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
					<td class="td1">
						<xsl:variable name="class"><xsl:value-of select="class"/></xsl:variable>
						<xsl:choose>
							<xsl:when test="(count(/content/cludove.crest.spruce.data_mapping/record.crest[s_identifier = $class or r_identifier = $class]) > 0)" />
							<xsl:otherwise>
								<input type="hidden" class="processor_check">
									<xsl:attribute name="value">
										<xsl:value-of select="code" />
										<xsl:text>,</xsl:text>
										<xsl:value-of select="connection_code" />
										<xsl:text>,</xsl:text>
										<xsl:value-of select="class" />
									</xsl:attribute>
								</input>
								<span class="span_check span_check_processor span_check_select_processor processor_check_select" />
							</xsl:otherwise>
						</xsl:choose>
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
						<xsl:attribute name="title"><xsl:value-of select="class" /></xsl:attribute>
						<xsl:value-of select="class" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
						<xsl:attribute name="title"><xsl:value-of select="name" /></xsl:attribute>
						<xsl:value-of select="name" />
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="type = 'Hinge.Data'">
								<xsl:text disable-output-escaping="yes">功能数据类</xsl:text>
							</xsl:when>
							<xsl:when test="type = 'Hinge.Quote'">
								<xsl:text disable-output-escaping="yes">数据加工类</xsl:text>
							</xsl:when>
							<xsl:when test="type = 'DB'">
								<xsl:text disable-output-escaping="yes">数据库驱动</xsl:text>
							</xsl:when>
							<xsl:when test="type = 'WS'">
								<xsl:text disable-output-escaping="yes">外部数据类</xsl:text>
							</xsl:when>
							<xsl:when test="type = 'Verify.Regulation'">
								<xsl:text disable-output-escaping="yes">验证规则类</xsl:text>
							</xsl:when>
							<xsl:when test="type = 'Cleanout.Regulation'">
								<xsl:text disable-output-escaping="yes">清洗规则类</xsl:text>
							</xsl:when>
							<xsl:otherwise />
						</xsl:choose>
					</td>
					<td>
						<a href="javascript:void(0)" class="revise" title="查看">
							<xsl:attribute name="onclick">
								showProcessorSetting("<xsl:value-of select='code' />")
							</xsl:attribute>
						</a>
						<xsl:if test="is_metadata = 'true'">
						<a class="data-icon" href="javascript:void(0)" title="数据元数据">
							<xsl:choose>
								<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'processor.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
								<xsl:otherwise>
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:attribute name="onclick">onProcessorMetadataSetting('<xsl:value-of select="class"/>')</xsl:attribute>
						</a>
						</xsl:if>
						<a href="javascript:void(0)" class="delete-icon" title="停用">
							<xsl:variable name="class"><xsl:value-of select="class"/></xsl:variable>
							<xsl:choose>
								<xsl:when test="(count(/content/cludove.crest.spruce.data_mapping/record.crest[s_identifier = $class or r_identifier = $class]) > 0)" >
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
							<xsl:attribute name="onclick">zdconfirm("提示","确认停用 驱动处理 <xsl:value-of select="name" />  吗？",function(confirm){if(confirm){$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'processor_record_code', 'is_active','class','connection_code'), new Array('diginter', 'processor.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="class" />', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}})	</xsl:attribute>
							<xsl:choose>
								<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'processor.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
								<xsl:otherwise>
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</a>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
