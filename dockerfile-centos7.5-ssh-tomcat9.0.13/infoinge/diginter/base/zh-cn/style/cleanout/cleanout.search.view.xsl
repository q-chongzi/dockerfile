<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table border="" cellspacing="" cellpadding="" style="table-layout:fixed">
				<tr>
					<th>
						<span class="span_check span_check_cleanout" id="check_all_cleanout" />
					</th>
					<th>规则名字</th>
					<th>规则标识</th>
					<th>清洗类</th>
					<th style="width:15%">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.cleanout_regulation/record.crest">
					<xsl:sort order="ascending" select="identifier"/>
					<xsl:sort order="ascending" select="regulation_name"/>
					<tr class="border-bg2">
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<xsl:attribute name="id"><xsl:value-of select="code" /></xsl:attribute>
						<td class="td1">
							<input type="hidden" class="cleanout_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_cleanout span_check_select_cleanout cleanout_check_select" />
						</td>
                        <td style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
							<xsl:attribute name="title"><xsl:value-of select="regulation_name" /></xsl:attribute>
							<xsl:value-of select="regulation_name" />
						</td>
                        <td style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
							<xsl:attribute name="title"><xsl:value-of select="identifier" /></xsl:attribute>
							<xsl:value-of select="identifier" />
						</td>
                        <td style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
							<xsl:attribute name="title"><xsl:value-of select="class" /></xsl:attribute>
							<xsl:value-of select="class" />
						</td>
						<td>
							<a href="javascript:void(0)" class="revise" title="查看">
								<xsl:attribute name="onclick">showCleanoutSetting('<xsl:value-of select="code" />')</xsl:attribute>
							</a>
							<a href="javascript:void(0)" class="delete-icon" title="停用">
								<xsl:attribute name="onclick">zdconfirm('提示',"确认停用 清洗规则 <xsl:value-of select="regulation_name" /> / <xsl:value-of select="class" />  吗？",function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'is_active', 'cleanout_code', 'connection_code'), new Array('diginter', 'cleanout.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="code" />', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');} })</xsl:attribute>
								<xsl:choose>
									<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'cleanout.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</a>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
