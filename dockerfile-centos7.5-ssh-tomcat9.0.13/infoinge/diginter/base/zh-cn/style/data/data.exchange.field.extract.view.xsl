<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<input type="hidden" id="code_data_exchange">
			<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_exchange/record.crest/code"/></xsl:attribute>
		</input>
		<xsl:variable name="primary">
			<xsl:value-of select="metadata/record.crest[1]/primary"/>
		</xsl:variable>
		<p class="design-rad">
			<xsl:attribute name="id">data_exchange_is_full_container</xsl:attribute>
			<xsl:if test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'mysql_sync' or parameter.cludove/operation = 'oracle_sync' or parameter.cludove/operation = 'sql_sync'">
				<xsl:attribute name="style">display:none</xsl:attribute>
			</xsl:if>
			<span class="span_tit">是否全量：</span>
			<input class="input_radio" value="true" type="radio" name="is_full" id="data_exchange_is_full_true" onclick="$('#data_exchange_is_full').val('true'); $('#data_exchange_clean_expression_container').show(); $('#data_exchange_clean_expression').focus();">
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.data_exchange/record.crest/is_full = 'true'">
						<xsl:attribute name="checked">checked</xsl:attribute>
					</xsl:when>
					<xsl:otherwise/>
				</xsl:choose>
			</input>
			<label for="data_exchange_is_full_true"> 是 </label>
			<input class="input_radio" value="false" type="radio" name="is_full" id="data_exchange_is_full_false" onclick="$('#data_exchange_is_full').val('false'); $('#data_exchange_clean_expression_container').hide();">
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.data_exchange/record.crest/is_full = 'true'"/>
					<xsl:otherwise>
						<xsl:attribute name="checked">checked</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</input>
			<label for="data_exchange_is_full_false"> 否 </label>
			<input id="data_exchange_is_full" type="hidden" value="true">
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.data_exchange/record.crest/is_full != ''">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_exchange/record.crest/is_full"/></xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="value">false</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</input>
		</p>
		<p class="list">
			<xsl:attribute name="id">data_exchange_clean_expression_container</xsl:attribute>
			<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest) = 0 or cludove.crest.spruce.data_exchange/record.crest/is_full != 'true'">
				<xsl:attribute name="style">display:none</xsl:attribute>
			</xsl:if>
			<span class="span_tit">清除条件：</span>
			<input type="text" id="data_exchange_clean_expression" placeholder="全量迁移前需要将旧数据清除，为空则清除所有记录" class="input-1 validate[maxSize[256]]">
				<xsl:attribute name="value">
					<xsl:value-of select="cludove.crest.spruce.data_exchange/record.crest/clean_expression"/>
				</xsl:attribute>
			</input>
		</p>
		<input id="processor_number_validate" style="width:180px;height:0px;border: 1px solid #ffffff;color:#ffffff" value="1" class="validate[required,custom[validateInterval],min[1],max[1000]]">
		</input>
		<p class="list">
			<div  style="position: relative;">
				<span style="color:#808080" class="span_tit">线程数量：</span>
				<div style="position: absolute;top:-6px;left:60px" class="data_exchange_processor_number_spinner">
					<input style="width:120px" type="text" id="data_exchange_processor_number" onblur="$('#processor_number_validate').val(this.value)">
						<xsl:attribute name="value">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data_exchange/record.crest/processor_number != ''">
									<xsl:value-of select="cludove.crest.spruce.data_exchange/record.crest/processor_number"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>1</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:attribute>
					</input>
				</div>
			</div>
		</p>
		<p class="list">
			<xsl:attribute name="id">data_exchange_migr_field_container</xsl:attribute>
			<xsl:if test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'mysql_sync'  or parameter.cludove/operation = 'oracle_sync'  or parameter.cludove/operation = 'sql_sync' or parameter.cludove/operation = 'infoinge_sync'">
				<xsl:attribute name="style">display:none</xsl:attribute>
			</xsl:if>
			<span style="color:#808080" class="span_tit">迁移字段：</span>
			<input type="text" id="data_exchange_migr_field" disabled="disabled" class="input-1">
				<xsl:attribute name="value">
					<xsl:choose>
						<xsl:when test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'mysql_sync'  or parameter.cludove/operation = 'oracle_sync'  or parameter.cludove/operation = 'sql_sync' or parameter.cludove/operation = 'infoinge_sync'">
							<xsl:text></xsl:text>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="metadata/record.crest[1]/primary"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
			</input>
			<!--<select id="data_exchange_migr_field" class="validate[required]" title="用于迁移数据时记录迁移位置，通常为主键">-->
				<!--<option value="">请选择迁移字段</option>-->
				<!--<xsl:for-each select="metadata/record.crest">-->
					<!--<option>-->
						<!--<xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/migr_field">-->
							<!--<xsl:attribute name="selected">selected</xsl:attribute>-->
						<!--</xsl:if>-->
						<!--<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>-->
						<!--<xsl:value-of select="name"/>-->
					<!--</option>-->
				<!--</xsl:for-each>-->
					<!--</select>-->
		</p>
		<div id="flag_field_judge" style="position: absolute;left:40px;display:none;">
			<div style="width:300px;height:100px;background-color: #fff;box-shadow: 10px 10px 5px #888888;border: 1px solid #C9C9C9">
				<p style="margin-top:20px;text-align: center">是否放弃用同步时间来判断数据是否修改？</p>
				<p class="configure-fr-side-bottom">
					<input type="button" value="是" class="but">
						<xsl:attribute name="onclick">$('#data_div_btn').show();$('#flag_field_judge').hide();$('#data_exchange_sync_time_field').val('');$('#data_exchange_sync_time_field').removeClass("validate[required]");$('#data_exchange_flag_change_container').show();$('#data_exchange_flag_reset_container').show();</xsl:attribute>
					</input>
					<input type="button" value="否" class="but">
						<xsl:attribute name="onclick">$('#data_div_btn').show();$('#flag_field_judge').hide();$('#data_exchange_flag_field').val('');$('#data_exchange_flag_field').removeClass("validate[required]");$('#data_exchange_flag_change_container').hide();$('#data_exchange_flag_reset_container').hide();</xsl:attribute>
					</input>
				</p>
			</div>
		</div>
		<div id="Synchronization_time" style="position: absolute;left:40px;display:none;">
			<div style="width:300px;height:100px;background-color: #fff;box-shadow: 10px 10px 5px #888888;border: 1px solid #C9C9C9">
				<p style="margin-top:20px;text-align: center">是否放弃用标志字段来判断数据是否修改？</p>
				<p class="configure-fr-side-bottom">
					<input type="button" value="是" class="but">
						<xsl:attribute name="onclick">$('#data_div_btn').show();$('#Synchronization_time').hide();$('#data_exchange_flag_field').val('');$('#data_exchange_flag_field').removeClass("validate[required]");$('#data_exchange_flag_change').val('');$('#data_exchange_flag_reset').val('');$('#data_exchange_flag_change_container').hide();$('#data_exchange_flag_reset_container').hide();</xsl:attribute>
					</input>
					<input type="button" value="否" class="but">
						<xsl:attribute name="onclick">$('#data_div_btn').show();$('#Synchronization_time').hide();$('#data_exchange_sync_time_field').val('');$('#data_exchange_sync_time_field').removeClass("validate[required]");$('#data_exchange_flag_change_container').show();$('#data_exchange_flag_reset_container').show();</xsl:attribute>
					</input>
				</p>
			</div>
		</div>
		<p class="list">
			<xsl:attribute name="id">data_exchange_sync_field_container</xsl:attribute>
			<xsl:if test="parameter.cludove/operation = 'migrate' or parameter.cludove/operation = 'mysql_migrate' or parameter.cludove/operation = 'oracle_migr' or parameter.cludove/operation = 'sql_migr' or parameter.cludove/operation = 'infoinge_migr'">
				<xsl:attribute name="style">display:none</xsl:attribute>
			</xsl:if>
			<span style="color:#808080" class="span_tit">同步字段：</span>
			<input type="text" id="data_exchange_sync_field" disabled="disabled" class="input-1">
				<xsl:attribute name="value">
					<xsl:choose>
						<xsl:when test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'mysql_sync'  or parameter.cludove/operation = 'oracle_sync'  or parameter.cludove/operation = 'sql_sync'  or parameter.cludove/operation = 'infoinge_sync'">
							<xsl:value-of select="metadata/record.crest[1]/primary"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text></xsl:text>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
			</input>
			<!--<select id="data_exchange_sync_field" class="validate[required]" title="用于同步数据时记录同步位置，通常为主键">-->
				<!--<option value="">请选择同步字段</option>-->
				<!--<xsl:for-each select="metadata/record.crest">-->
					<!--<option>-->
						<!--<xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/sync_field">-->
							<!--<xsl:attribute name="selected">selected</xsl:attribute>-->
						<!--</xsl:if>-->
						<!--<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>-->
						<!--<xsl:value-of select="name"/>-->
					<!--</option>-->
				<!--</xsl:for-each>-->
			<!--</select>-->
		</p>
		<p class="list">
			<xsl:attribute name="id">data_exchange_sync_time_container</xsl:attribute>
			<xsl:choose>
				<xsl:when test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'infoinge_sync'"></xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="style">display:none</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<span style="color:#808080" class="span_tit">同步时间：</span>
			<select id="data_exchange_sync_time_field" class="validate[required]" title="用于同步数据时生成判断增量起始位置的条件，通常为时间戳类型的字段，可以是timestamp或者毫秒数，与标志字段可组合使用">
				<!--<xsl:attribute name="onchange">if(this.value != ''){$('#data_exchange_flag_field').val('');$('#data_exchange_flag_field').removeClass("validate[required]");$('#data_exchange_flag_change_container').hide();$('#data_exchange_flag_reset_container').hide();} else {$('#data_exchange_flag_field').addClass("validate[required]");}</xsl:attribute>-->
				<xsl:attribute name="onchange">if(this.value !=''){$('#data_exchange_flag_change_container').hide();$('#data_exchange_flag_reset_container').hide();$('#data_exchange_flag_field').removeClass("validate[required]");if($('#data_exchange_flag_field').val()!=''){$('#Synchronization_time').show();$('#data_div_btn').hide();}};if(this.value ==''){if($('#data_exchange_flag_field').val() ==''){$('#data_exchange_flag_field').attr('class','validate[required]');$('#data_exchange_sync_time_field').attr('class','validate[required]')}}</xsl:attribute>
				<option value="">请选择同步时间</option>
				<xsl:for-each select="metadata/record.crest[name != $primary]">
					<option>
						<xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/sync_time_field">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
						<xsl:value-of select="name"/>
					</option>
				</xsl:for-each>
			</select>
		</p>
		<p class="list">
			<xsl:attribute name="id">data_exchange_flag_field_container</xsl:attribute>
			<xsl:choose>
				<xsl:when test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'infoinge_sync'"></xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="style">display:none</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<span style="color:#808080" class="span_tit">标志字段：</span>
			<select id="data_exchange_flag_field" class="validate[required]" title="用于同步数据时生成判断增量数据的条件，通常为整数、字符类型的字段，具体条件在操作为同步的目录数据的查询条件中配置">
				<!--<xsl:attribute name="onchange">if(this.value != ''){$('#data_exchange_sync_time_field').val('');$('#data_exchange_sync_time_field').removeClass("validate[required]");$('#data_exchange_flag_change_container').show();$('#data_exchange_flag_reset_container').show();} else {$('#data_exchange_sync_time_field').addClass("validate[required]");}</xsl:attribute>-->
				<xsl:attribute name="onchange">if(this.value==''){$('#data_exchange_flag_change_container').hide();$('#data_exchange_flag_reset_container').hide();if($('#data_exchange_sync_time_field').val() ==''){$('#data_exchange_flag_field').attr('class','validate[required]');$('#data_exchange_sync_time_field').attr('class','validate[required]')}};if(this.value !=''){$('#data_exchange_sync_time_field').removeClass("validate[required]");$('#data_exchange_flag_change_container').show();$('#data_exchange_flag_reset_container').show();if($('#data_exchange_sync_time_field').val()!=''){$('#flag_field_judge').show();$('#data_div_btn').hide()}};</xsl:attribute>
				<option value="">请选择标志字段</option>
				<xsl:for-each select="metadata/record.crest[name != $primary]">
					<option>
						<xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/flag_field">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
						<xsl:value-of select="name"/>
					</option>
				</xsl:for-each>
			</select>
	    </p>
		<p style="display: none" class="list">
			<xsl:attribute name="id">data_exchange_flag_change_container</xsl:attribute>
			<xsl:choose>
				<xsl:when test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'infoinge_sync'"></xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="style">display:none</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
				<xsl:attribute name="style">display:none</xsl:attribute>
			</xsl:if>
			<!--<xsl:if test="cludove.crest.spruce.data_exchange/record.crest/flag_change != ''">-->
				<!--<xsl:attribute name="style">display:block</xsl:attribute>-->
			<!--</xsl:if>-->
			<!--</xsl:if>-->
			<span style="color:#808080" class="span_tit">标志改变：</span>
			<input type="text" id="data_exchange_flag_change" placeholder="用于和标志字段一起生成判断记录改变的条件" class="input-1 validate[required,maxSize[32],custom[onlyNumberSp]]">
				<xsl:attribute name="value">
					<xsl:value-of select="/content/cludove.crest.spruce.data_exchange/record.crest/flag_change"/>
				</xsl:attribute>
			</input>
		</p>
		<p style="display: none" class="list">
			<xsl:attribute name="id">data_exchange_flag_reset_container</xsl:attribute>
			<xsl:choose>
				<xsl:when test="parameter.cludove/operation = 'synchronize' or parameter.cludove/operation = 'infoinge_sync'"></xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="style">display:none</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
				<xsl:attribute name="style">display:none</xsl:attribute>
			</xsl:if>
			<!--<xsl:if test="cludove.crest.spruce.data_exchange/record.crest/flag_reset != ''">-->
				<!--<xsl:attribute name="style">display:block</xsl:attribute>-->
			<!--</xsl:if>-->
			<span style="color:#808080" class="span_tit">标志复位：</span>
			<input type="text" id="data_exchange_flag_reset" placeholder="用于和标志字段一起生成复位记录的设置值" class="input-1 validate[required,maxSize[32],custom[onlyNumberSp]]">
				<xsl:attribute name="value">
					<xsl:value-of select="/content/cludove.crest.spruce.data_exchange/record.crest/flag_reset"/>
				</xsl:attribute>
			</input>
		</p>
	</xsl:template>
</xsl:stylesheet>
