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
						<span class="span_check span_check_value_tag" id="check_all_value_tag"></span>
					</th>
					<th class="th1">排列顺序</th>
					<th>标记名字</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.value_tag/record.crest">
					<xsl:sort data-type="number" select="position"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="value_tag_select">
								<xsl:attribute name="onclick">showValueTagSetting('<xsl:value-of select="code" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="value_tag_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_value_tag span_check_select_value_tag value_tag_check_select"></span>
						</td>
						<td>
							<xsl:value-of select="position" />
						</td>
						<td>
							<xsl:value-of select="tag_name" />
						</td>
						<td>
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="停用">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'value.tag.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="onclick">if (confirm("确认停用 取值标记 <xsl:value-of select="position" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'value_tag_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'value.tag.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
									</img>
								</a>

								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showValueTagSetting('<xsl:value-of select="code" />')</xsl:attribute>
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
