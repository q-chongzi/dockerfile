<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1">
						<span class="span_check span_check_exception_response" id="check_all_exception_response"></span>
					</th>
					<th class="th1">处理顺序</th>
					<th>循环取值</th>
					<th class="th7">响应格式</th>
					<th>起始符号</th>
					<th>结束符号</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.exception_response/record.crest">
					<xsl:sort data-type="number" select="position"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="hidden" class="exception_response_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_exception_response span_check_select_exception_response exception_response_check_select"></span>
						</td>
						<td>
							<xsl:value-of select="position" />
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="is_for_each = 'true'">
									<xsl:text disable-output-escaping="yes">是</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text disable-output-escaping="yes"> </xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
							<xsl:value-of select="response_format" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="start_symbol" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="end_symbol" />
						</td>
						<td>
							<div class="div_btn">
								<a href="javascript:void(0)"  class="revise" onclick="editData(this)">
									<xsl:attribute name="onclick">onExceptionResponseSetting('<xsl:value-of select="code" />')</xsl:attribute>
								</a>
								<a class="delete-icon" href="javascript:void(0)" title="停用">
									<xsl:attribute name="onclick">zdconfirm('提示',"确认停用 目录响应 <xsl:value-of select="position" />/<xsl:value-of select="name" />  吗？", function(confirm){if (confirm){ $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'exception_response_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'response.exception.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');} })</xsl:attribute>
									<xsl:choose>
										<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'response.exception.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
										<xsl:otherwise>
											<xsl:attribute name="style">display:none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</a>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
