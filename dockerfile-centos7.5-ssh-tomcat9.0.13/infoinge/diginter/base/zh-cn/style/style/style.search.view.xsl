<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table style="table-layout: fixed;">
				<tr>
					<th class="th1">
						<span class="span_check span_check_style" id="check_all_style"></span>
					</th>
					<th>风格标识</th>
					<th>风格名字</th>
					<th>风格描述</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.style/record.crest">
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<xsl:if test="code != 'spruce-sty-1000000101'">
								<input type="hidden" class="style_check">
									<xsl:attribute name="value">
										<xsl:value-of select="code" />
										<xsl:text>,</xsl:text>
										<xsl:value-of select="connection_code" />
									</xsl:attribute>
								</input>
								<span class="span_check span_check_style span_check_select_style style_check_select"></span>
							</xsl:if>
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="identifier" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="name" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="description" />
						</td>
						<td>
							<a href="javascript:void(0)" title="查看|修改" class="revise" onclick="editData(this)">
								<xsl:attribute name="onclick">$("#basics_setting").show();showStyleSetting('<xsl:value-of select="code" />')</xsl:attribute>
							</a>
							<xsl:if test="code != 'spruce-sty-1000000101'">
								<a class="delete-icon" href="javascript:void(0)" title="停用">
									<xsl:choose>
										<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'style.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
										<xsl:otherwise>
											<xsl:attribute name="style">display:none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的风格 <xsl:value-of select="class" />/<xsl:value-of select="name" />  吗？',function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'style_record_code', 'is_active', 'connection_code'), new Array('diginter', 'style.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
								</a>
							</xsl:if>
						</td>
					</tr>
				</xsl:for-each>

			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
