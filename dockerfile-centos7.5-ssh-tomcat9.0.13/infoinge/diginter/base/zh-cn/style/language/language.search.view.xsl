<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1">
						<span class="span_check span_check_language" id="check_all_language"></span>
					</th>
					<th>语言名字</th>
					<th>字符集</th>
					<th>映射字符集</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.language/record.crest">
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<xsl:if test="code != 'spruce-lan-1000000101' and code != 'spruce-lan-1000000201'">
								<input type="hidden" class="language_check">
									<xsl:attribute name="value">
										<xsl:value-of select="code" />
										<xsl:text>,</xsl:text>
										<xsl:value-of select="connection_code" />
									</xsl:attribute>
								</input>
								<span class="span_check span_check_language span_check_select_language language_check_select"></span>
							</xsl:if>
						</td>
						<td>
							<xsl:value-of select="name" />
						</td>
						<td>
							<xsl:value-of select="encoding" />
						</td>
						<td>
							<xsl:value-of select="mapping" />
						</td>

						<td>
							<a href="javascript:void(0)" title="查看|修改" class="revise" onclick="editData(this)">
								<xsl:attribute name="onclick">$("#basics_setting").show();showLanguageSetting('<xsl:value-of select="code" />')</xsl:attribute>
							</a>
							<xsl:if test="code != 'spruce-lan-1000000101' and code != 'spruce-lan-1000000201'">
								<a class="delete-icon" href="javascript:void(0)" title="停用">
									<xsl:choose>
										<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'language.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
										<xsl:otherwise>
											<xsl:attribute name="style">display:none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的语言支持 <xsl:value-of select="class" />/<xsl:value-of select="name" />  吗？',function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'language_record_code', 'is_active', 'connection_code'), new Array('diginter', 'language.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
								</a>
							</xsl:if>
						</td>
					</tr>
				</xsl:for-each>

			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
