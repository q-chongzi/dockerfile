<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1">
					</th>
					<th class="th1">
						<span class="span_check span_check_processor" id="check_all_processor" />
					</th>
					<th>驱动处理类</th>
					<th class="th7">名字</th>
					<th class="th7">类型</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
					<xsl:sort order="ascending" select="type"/>
					<xsl:sort order="ascending" select="class"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="processor_select">
								<xsl:attribute name="onclick">showProcessorSetting('<xsl:value-of select="code" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="processor_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_processor span_check_select_processor processor_check_select" />
						</td>
						<td align="left" style="overflow:hidden; text-overflow:ellipsis;">
							<xsl:attribute name="title"><xsl:value-of select="class" /></xsl:attribute>
							<xsl:value-of select="class" />
						</td>
						<td style="overflow:hidden; text-overflow:ellipsis;">
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
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="停用">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:attribute name="onclick">if (confirm("确认停用 驱动处理 <xsl:value-of select="class" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'processor_record_code', 'is_active','class','connection_code'), new Array('infoinge', 'processor.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="class" />', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}	</xsl:attribute>
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'processor.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</img>
								</a>
								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showProcessorSetting('<xsl:value-of select="code" />')</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
								</a>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
