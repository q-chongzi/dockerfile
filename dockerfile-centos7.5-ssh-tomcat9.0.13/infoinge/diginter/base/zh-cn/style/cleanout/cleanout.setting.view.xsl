<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="configure-form" role="form" id="validate_cleanout_setting">
			<p>规则名字：
				<input maxlength="64" type="text" id="cleanout_name" class="input-1 input-c validate[required,maxSize[64]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/regulation_name"/>
					</xsl:attribute>
				</input>
			</p>
			<p>规则标识：
				<input maxlength="64" type="text" id="cleanout_identifier" class="input-1 input-c validate[required,maxSize[64]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/identifier"/>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.cleanout_regulation/record.crest/code !=''">
							<xsl:attribute name="disabled">disabled</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
			</p>
			<p>清洗类：
				<select id="class_cleanout" class="validate[required]" style="padding-right: 18px; margin-left:12px;">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/class"/>
					</xsl:attribute>
					<xsl:attribute name="onchange">if (this.value != 'WS') {$('#processor_telephone_list').css('display','none'); $('#processor_email_list').css('display','none');}else{$('#processor_telephone_list').css('display','block'); $('#processor_email_list').css('display','block');}if($('#code_processor').val()==""){onProcessorSearch();}</xsl:attribute>
					<option value="">请选择清洗类</option>
					<xsl:for-each select="cludove.crest.spruce.processor/record.crest">
						<option>
							<xsl:if test="class = /content/cludove.crest.spruce.cleanout_regulation[1]/record.crest/class">
								<xsl:attribute name="selected">selected</xsl:attribute>
							</xsl:if>
							<xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
							<xsl:value-of select="name"/>
						</option>
					</xsl:for-each>
				</select>
			</p>
			<p class="texta">规则描述：
				<textarea id="cleanout_description" class="validate[maxSize[256]]">
					<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/description"/>
				</textarea>
			</p>
			<div class="configure-fr-side-bottom">
				<input type="button" value="提交" class="sub" onclick="processCleanoutSetting()"/>
				<input type="reset" value="清除" class="res"/>
				<input type="button" value="取消" class="but" onclick="$('#basics_setting').hide()"/>
			</div>

			<!--隐藏按钮-->
			<input type="hidden" name="code" id="code_cleanout">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/code"/></xsl:attribute>
			</input>
			<input type="hidden" name="connection_code" id="connection_code_cleanout">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/connection_code"/></xsl:attribute>
			</input>
		</form>
	</xsl:template>
</xsl:stylesheet>
