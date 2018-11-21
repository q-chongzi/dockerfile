<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th>文件名字</th>
					<th>文件大小</th>
					<th>上传时间</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="catalog.style.file/record.crest">
					<tr>
						<xsl:attribute name="id"><xsl:value-of select="file_id" /></xsl:attribute>
						<td>
							<xsl:value-of select="file_name" />
						</td>
						<td>
							<xsl:value-of select="file_length" />
						</td>
						<td>
							<xsl:value-of select="file_last_modified" />
						</td>
						<td>
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="删除">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'style.catalog.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="onclick">if (confirm("确认删除 样式单文件 <xsl:value-of select="file_name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'file_id', 'file_name', 'style_name', 'language_name'), new Array('infoinge', 'style.catalog.remove.process', '<xsl:value-of select="file_id" />', '<xsl:value-of select="file_name" />', 'base', 'zh-cn'), new Array('buddle_id', 'catalog_id'), new Array('buddle_id', 'catalog_id'), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
									</img>
								</a>
								<xsl:if test="file_name != 'common.xsl'">
									<a class="a_edit" onclick="editData(this)">
										<xsl:attribute name="href">s?buddle.cludove=infoinge&amp;catalog.cludove=buddle.download.process&amp;buddle_id=<xsl:value-of select="/content/parameter.cludove/buddle_id"/>&amp;catalog_id=<xsl:value-of select="/content/parameter.cludove/catalog_id"/>&amp;style_name=<xsl:value-of select="/content/parameter.cludove/style_name"/>&amp;language_name=<xsl:value-of select="/content/parameter.cludove/language_name"/>&amp;buddle_file=<xsl:value-of select="file_name"/></xsl:attribute>
										<img src="infoinge/base/zh-cn/img/edit.png" title="查看|下载"/>
									</a>
								</xsl:if>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
