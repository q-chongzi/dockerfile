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
						<span class="span_check span_check_tag_item" id="check_all_tag_item"></span>
					</th>
					<th class="th1">处理顺序</th>
					<th>输出条件</th>
					<th>选取条件</th>
					<th class="th7">数据处理</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.tag_item/record.crest">
					<xsl:sort data-type="number" select="position"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="tag_item_select">
								<xsl:attribute name="onclick">showTagItemSetting('<xsl:value-of select="code" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="tag_item_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_tag_item span_check_select_tag_item tag_item_check_select"></span>
						</td>
						<td>
							<xsl:value-of select="position" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="test_expression" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="select_expression" />
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="class = 'select'">上下文选取</xsl:when>
								<xsl:when test="class = 'text'">纯文本定义</xsl:when>
								<xsl:when test="class = 'select_encode'">上下文选取后Base64编码</xsl:when>
								<xsl:when test="class = 'select_decode'">上下文选取后Base64解码</xsl:when>
								<xsl:when test="class = 'text_encode'">纯文本定义Base64编码</xsl:when>
								<xsl:when test="class = 'text_decode'">纯文本定义Base64解码</xsl:when>
								<xsl:when test="class = 'class'">数据加工类</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</td>
						<td>
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="停用">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'tag.item.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="onclick">if (confirm("确认停用 标记项目 <xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'tag_item_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'tag.item.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
									</img>
								</a>

								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showTagItemSetting('<xsl:value-of select="code" />')</xsl:attribute>
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
