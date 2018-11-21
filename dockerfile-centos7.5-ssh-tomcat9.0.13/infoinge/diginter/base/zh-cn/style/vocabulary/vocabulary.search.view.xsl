<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<table style="table-layout:fixed">
			<tr>
				<!--<td class="td1"><input type="checkbox" name="" class="checkAll" id="checkAll" value="" /><label for="checkAll">全选</label></td>-->

				<!--<th class="th1">-->
				<!--<span class="span_check span_check_vocabulary" id="check_all_vocabulary"></span>-->
				<!--</th>-->
				<td>参数标识</td>
				<td>配置项</td>
				<td>配置内容</td>
				<td>操作</td>
			</tr>
			<xsl:for-each select="/content/cludove.crest.spruce.vocabulary/record.crest">
				<tr  class="border-bg2">
					<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
					<!--<td class="td1">-->
						<!--<input type="checkbox" name="processor_select" class="checkOne" />-->
					<!--</td>-->

					<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
						<xsl:attribute name="title"><xsl:value-of select="identifier" /></xsl:attribute>
						<xsl:value-of select="identifier" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
						<xsl:attribute name="title"><xsl:value-of select="keyword" /></xsl:attribute>
						<xsl:value-of select="keyword" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
						<xsl:attribute name="title"><xsl:value-of select="content" /></xsl:attribute>
						<xsl:value-of select="content" />
					</td>
					<td>
						<div class="div_btn">
							<!--<a class="a_dele" href="javascript:void(0)" title="停用">-->
							<!--<img src="infoinge/base/zh-cn/img/dele.png">-->
							<!--<xsl:choose>-->
							<!--<xsl:when test="(count(/content/cludove.spruce.lock.cd_permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'vocabulary.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />-->
							<!--<xsl:otherwise>-->
							<!--<xsl:attribute name="style">display:none</xsl:attribute>-->
							<!--</xsl:otherwise>-->
							<!--</xsl:choose>-->
							<!--<xsl:attribute name="onclick">if (confirm("确认停用 主机 <xsl:value-of select="class" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'vocabulary_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'vocabulary.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}-->
							<!--</xsl:attribute>-->
							<!--</img>-->
							<!--</a>-->

							<a href="javascript:void(0)" class="revise" title="查看|修改">
								<xsl:attribute name="onclick">showVocabularySetting('<xsl:value-of select="code" />')</xsl:attribute>
							</a>
						</div>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
