<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="position">
			<xsl:for-each select="cludove.crest.spruce.data[3]/record.crest">
				<xsl:sort data-type="number" order="descending" select="position"/>
				<xsl:if test="position() = 1">
					<xsl:value-of select="position"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="small_position">
			<xsl:for-each select="cludove.crest.spruce.data[3]/record.crest">
				<xsl:sort data-type="number" order="ascending" select="position"/>
				<xsl:if test="position() = 1">
					<xsl:value-of select="position"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="position_new">
			<xsl:for-each select="cludove.crest.spruce.data[3]/record.crest[position!=100]">
				<xsl:sort data-type="number" order="descending" select="position"/>
				<xsl:if test="position() = 1">
					<xsl:value-of select="position"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
			<div class="item"  style="position: relative">
				<div style="display:none" class="div_txt">
					<div class="configure-fr-tit1">
						<ul>
							<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration' or cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
								<li>
									<a href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">
										<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
										<xsl:text>预览功能</xsl:text>
									</a>
								</li>
							</xsl:if>
							<!--<li>-->
								<!--<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_data_input_container').is(':hidden')) $('#style_file_data_input_container').show(); else $('#style_file_data_input_container').hide();">上传样式单</a>-->
							<!--</li>-->
						</ul>
					</div>
				</div>
				<p class="div_txt">
					<xsl:attribute name="id">style_file_data_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<input type="file" id="style_file_data_input" name="style_file" class="input-1">
						<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_data_input', '样式单文件')</xsl:attribute>
					</input>

				</p>
			</div>
			<form class="configure-form" role="form" id="validate_data_setting">
				<p>数据名字：<input maxlength="128" type="text" id="data_name" placeholder="数据名字被用于权限分组，同组权限名字一致" class="input-1 validate[required,maxSize[128]]">
						<xsl:attribute name="value">
							<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/name"/>
						</xsl:attribute>
					</input>
				</p>

				<p class="design-rad">数据类型：
					<input class="input_radio" value="true" type="radio" name="data_type_select" id="data_type_db" checked="">
						<xsl:attribute name="onclick">$("#data_connection_id").attr('onchange','onDataConnectionIdChange()');$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("数据库表："); $("#data_type").val("DB"); onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", "identifier", "onDataTypeDbCheck('data_connection_id', 'connection_id_by_db')");$('#data_connection_id').attr('class','validate[required]');$("#alert_content").hide();$("#hinge_content").hide();</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge' or cludove.crest.spruce.data[1]/record.crest/type = 'WS' or cludove.crest.spruce.data[1]/record.crest/type = 'Class' or cludove.crest.spruce.data[1]/record.crest/type = 'Metadata'"/>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge' or cludove.crest.spruce.data[1]/record.crest/type = 'WS' or cludove.crest.spruce.data[1]/record.crest/type = 'Class' or cludove.crest.spruce.data[1]/record.crest/type = 'Metadata'"/>
							<xsl:otherwise>
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</input>
					<label for="data_type_db">数据库</label>
					<input style="margin-left: 15px" class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_class">
						<xsl:attribute name="onclick">$("#data_connection_id").attr('onchange','dataExchangeFieldMetadata()');$("#data_connection_id_title").text("处理类名："); $("#data_resource_name_title").text("类方法名："); $("#data_type").val("Class"); onResourceConnectionDataSelect("class_connection_id", "Class",'<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id" />', "请选择资源定义");onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");$('#data_connection_id').attr('class','validate[required]');</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:when>
							<xsl:otherwise/>
						</xsl:choose>
					</input>
					<label for="data_type_class">功能数据</label>
					<input style="margin-left: 15px" class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_ws">
						<xsl:attribute name="onclick">$("#data_connection_id").attr('onchange','dataExchangeFieldMetadata()');$("#data_connection_id_title").text("处理类名："); $("#data_resource_name_title").text("类方法名："); $("#data_type").val("WS"); onResourceConnectionDataSelect("class_connection_id", "WS",'<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id" />', "请选择资源定义");onProcessorSelect("data_connection_id", "WS", "请选择外部数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");$('#data_connection_id').attr('class','validate[required]');</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'WS'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:when>
							<xsl:otherwise/>
						</xsl:choose>
					</input>
					<label for="data_type_ws">外部数据</label>
					<br class="data_type_metadata_br"/><br class="data_type_metadata_br"/>
					<input style="margin-left: 60px" class="input_radio" value="Metadata" type="radio" name="data_type_select" id="data_type_metadata">
						<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("数据库表："); $("#data_type").val("Metadata"); onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", "identifier", "onDataTypeMetadataCheck('data_connection_id', 'connection_id_by_metadata')");$('#data_connection_id').removeClass('validate[required]');</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Metadata'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:when>
							<xsl:otherwise/>
						</xsl:choose>
					</input>
					<label id="data_type_metadata_lable" for="data_type_metadata">数据元数据</label>

					<!--<xsl:choose>-->
						<!--<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0 and count(cludove.crest.spruce.data[1]/record.crest[position ='0']) = 0">-->
							<!--<xsl:choose>-->
								<!--<xsl:when test="count(cludove.crest.spruce.data[3]/record.crest) = 0"/>-->
								<!--<xsl:otherwise>-->
					<xsl:if test="parameter.cludove/is_exchange != 'true'">
									<input style="margin-left: 25px" class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_hinge">
										<xsl:attribute name="onclick">
											$('#data_connection_id').val('');
											$("#data_connection_id").attr('onchange','onDataConnectionIdChange()');
											$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("功能目录："); $("#data_type").val("Hinge"); onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");
											$("#alert_content").hide();
											$("#hinge_content").hide();
										</xsl:attribute>
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">
												<xsl:attribute name="checked">checked</xsl:attribute>
											</xsl:when>
											<xsl:otherwise/>
										</xsl:choose>
									</input>
									<label for="data_type_hinge">讯枢</label>
					</xsl:if>
								<!--</xsl:otherwise>-->
							<!--</xsl:choose>-->
						<!--</xsl:when>-->
						<!--<xsl:otherwise>-->
							<!--<input style="margin-left: 25px" class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_hinge">-->
								<!--<xsl:attribute name="onclick">-->
									<!--$("#data_connection_id").attr('onchange','onDataConnectionIdChange()');-->
									<!--$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("功能目录："); $("#data_type").val("Hinge"); onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");-->
									<!--$("#alert_content").hide();-->
									<!--$("#hinge_content").hide();-->
								<!--</xsl:attribute>-->
								<!--<xsl:choose>-->
									<!--<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">-->
										<!--<xsl:attribute name="checked">checked</xsl:attribute>-->
									<!--</xsl:when>-->
									<!--<xsl:otherwise/>-->
								<!--</xsl:choose>-->
							<!--</input>-->
							<!--<label for="data_type_hinge">讯枢</label>-->
						<!--</xsl:otherwise>-->
					<!--</xsl:choose>-->

					<!--=========-->

					<input id="data_type" type="hidden">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type != ''">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/type"/></xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="value">DB</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</input>
				</p>

				<!--====================分类========================================-->
				<p class="design-rad" id="data_classify_container">
					<xsl:attribute name="style">display: none</xsl:attribute>分类：
					<input style="margin-left: 25px" class="input_radio" value="true" type="radio" name="data_classify" id="data_classify_none">
						<xsl:attribute name="onclick">$("#data_classify").val("none");onProcessorSelect("data_connection_id","Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/classify = 'none'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
									<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</input>
					<label for="data_classify_none">不分类</label>
					<input style="margin-left: 15px" class="input_radio" value="false" type="radio" name="data_classify" id="data_classify_input">
						<xsl:attribute name="onclick">$("#data_classify").val("input");onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/classify = 'input'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:when>
							<xsl:otherwise/>
						</xsl:choose>
					</input>
					<label for="data_classify_input">输入</label>
					<input style="margin-left: 15px" class="input_radio" value="false" type="radio" name="data_classify" id="data_classify_output">
						<xsl:attribute name="onclick">$("#data_classify").val("output");onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/classify = 'output'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:when>
							<xsl:otherwise/>
						</xsl:choose>
					</input>
					<label for="data_classify_output">输出</label>
					<input id="data_classify" type="hidden">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/classify != ''">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/classify"/></xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="value">none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</input>
				</p>
				<p>
					<xsl:attribute name="id">data_classification</xsl:attribute>
					<xsl:attribute name="style">display: none</xsl:attribute>
					资源定义：
					<select id="class_connection_id" style="padding-right: 18px">
					</select>
				</p>

				<!--============================-->
				<p style="position:relative;margin-bottom:15px;">
					<xsl:attribute name="id">data_connection_id_container</xsl:attribute>
					<span class="list" style="position:absolute;top:-5px;left:60px;color:red; display:none" id="alert_content">

					</span>
					<span class="span_tit">
						<xsl:attribute name="id">data_connection_id_title</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'WS' or cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
								<xsl:text>处理类名：</xsl:text>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>资源定义：</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</span>
					<select id="data_connection_id" class="validate[required]"  style="padding-right: 18px;width:85%">
						<xsl:attribute name="onchange">onDataConnectionIdChange()</xsl:attribute>
						<option value="">请选择资源定义</option>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Class' or cludove.crest.spruce.data[1]/record.crest/type = 'WS'">
								<xsl:for-each select="cludove.crest.spruce.processor/record.crest">
									<option>
										<xsl:if test="class = /content/cludove.crest.spruce.data[1]/record.crest/connection_id">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
										<xsl:value-of select="name"/>
									</option>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<xsl:for-each select="cludove.crest.spruce.resource_decomposing/record.crest">
									<option>
										<xsl:choose>
											<xsl:when test="/content/cludove.crest.spruce.resource_decomposing/record.crest/type = 'DB'">
												<xsl:if test="identifier = /content/cludove.crest.spruce.data[1]/record.crest/connection_id">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
											</xsl:when>
											<xsl:otherwise>
												<xsl:choose>
													<xsl:when test="count(/content/cludove.crest.spruce.resource_connection[2]/record.crest)>0">
														<xsl:if test="identifier = /content/cludove.crest.spruce.data[1]/record.crest/connection_id">
															<xsl:attribute name="selected">selected</xsl:attribute>
														</xsl:if>
													</xsl:when>
													<xsl:otherwise>
														<xsl:if test="is_dsb='true'">
															<xsl:attribute name="selected">selected</xsl:attribute>
														</xsl:if>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
										<xsl:value-of select="name"/>
										<xsl:text> - </xsl:text>
										<xsl:value-of select="identifier"/>
									</option>
								</xsl:for-each>
							</xsl:otherwise>
						</xsl:choose>
					</select>
				</p>


				<p>
					<xsl:attribute name="id">data_resource_buddle_container</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'"/>
						<xsl:otherwise>
							<xsl:attribute name="style">display: none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					应用标识：
					<select id="data_resource_buddle" class="validate[required]" style="padding-right: 18px;width:85%">
						<xsl:attribute name="onchange">onDataResourceBuddleChange()</xsl:attribute>
						<option value="">请选择应用标识</option>
					</select>
					<span style="color:red; display:none" id="hinge_content_block">

					</span>
				</p>
				<p style="position:relative;margin-bottom:16px;margin-top:-6px;">
					<xsl:attribute name="id">data_resource_name_container</xsl:attribute>
					<span style="position:absolute;top:-10px;left:60px;color:red; display:none" id="hinge_content">

					</span>
					<span class="span_tit">
						<xsl:attribute name="id">data_resource_name_title</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'WS' or cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
								<xsl:text>类方法名：</xsl:text>
							</xsl:when>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">
								<xsl:text>功能目录：</xsl:text>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>数据库表：</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</span>
					<select id="data_resource_name" class="validate[required]" style="padding-right: 18px;width:85%" onclick="$(this).unbind();">
						<xsl:attribute name="onchange">onDataResourceNameChange()</xsl:attribute>
						<option value="">请选择数据库表</option>
					</select>
				</p>

				<p>
					<xsl:attribute name="id">data_operation_migrate_container</xsl:attribute>
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0">
							<xsl:choose>
								<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) > 0">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation !=  'search' and cludove.crest.spruce.data[1]/record.crest/operation != 'build' and cludove.crest.spruce.data[1]/record.crest/operation != 'modify' and cludove.crest.spruce.data[1]/record.crest/operation != 'remove' and cludove.crest.spruce.data[1]/record.crest/operation != 'upload' and cludove.crest.spruce.data[1]/record.crest/operation != 'download'">

										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="style">display: none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:when>
								<xsl:otherwise>
									<xsl:choose>
										<xsl:when test="count(cludove.crest.spruce.data[2]/record.crest) = 0"/>
										<xsl:otherwise>
											<xsl:attribute name="style">display: none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="style">display: none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					操作名字：
					<select id="data_operation_migr" style="padding-right: 18px;width:85%">
						<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
							<xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
							<!--<option value="infoinge_migr">-->
								<!--<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_migr'">-->
									<!--<xsl:attribute name="selected">selected</xsl:attribute>-->
								<!--</xsl:if>-->
								<!--<xsl:text>迅枢通用迁移</xsl:text>-->
							<!--</option>-->
							<option value="migrate">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'migrate'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>JDBC通用迁移</xsl:text>
							</option>
							<option value="mysql_migrate">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_migrate'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>日志Mysql迁移</xsl:text>
							</option>
							<option value="oracle_migr">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_migr'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>日志Oracle迁移</xsl:text>
							</option>
							<option value="sql_migr">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'sql_migr'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>日志Sqlserver迁移</xsl:text>
							</option>
						</xsl:if>
						<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
							<xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
							<!--<option value="infoinge_sync">-->
								<!--<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_sync'">-->
									<!--<xsl:attribute name="selected">selected</xsl:attribute>-->
								<!--</xsl:if>-->
								<!--<xsl:text>迅枢通用同步</xsl:text>-->
							<!--</option>-->
							<option value="synchronize">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'synchronize'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>JDBC通用同步</xsl:text>
							</option>
							<option value="mysql_sync">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_sync'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>日志Mysql同步</xsl:text>
							</option>
							<option value="oracle_sync">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_sync'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>日志Oracle同步</xsl:text>
							</option>
							<option value="sql_sync">
								<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'sql_sync'">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:text>日志Sqlserver同步</xsl:text>
							</option>
					</xsl:if>
					</select>
				</p>

				<p>
					<xsl:attribute name="id">data_operation_container</xsl:attribute>
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type != ''">
							<xsl:choose>
								<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) > 0">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation !=  'search' and cludove.crest.spruce.data[1]/record.crest/operation != 'build' and cludove.crest.spruce.data[1]/record.crest/operation != 'modify' and cludove.crest.spruce.data[1]/record.crest/operation != 'remove' and cludove.crest.spruce.data[1]/record.crest/operation != 'upload' and cludove.crest.spruce.data[1]/record.crest/operation != 'download'">
											<xsl:attribute name="style">display: none</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:when>
								<xsl:otherwise>
									<xsl:choose>
										<xsl:when test="count(cludove.crest.spruce.data[2]/record.crest) = 0">
											<xsl:if test="count(cludove.crest.spruce.catalog/record.crest) > 0">
												<xsl:attribute name="style">display: none</xsl:attribute>
											</xsl:if>
										</xsl:when>
									</xsl:choose>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="style">display: none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					操作名字：
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0 ">
							<select id="data_operation" style="padding-right: 18px;width:84%">
								<xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_sync'">
										<option value="infoinge_sync">
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_sync'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:text>讯枢通用同步</xsl:text>
										</option>
									</xsl:when>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_migr'">
										<option value="infoinge_migr">
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_migr'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:text>讯枢通用迁移</xsl:text>
										</option>
									</xsl:when>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation = 'class_sync'">
										<option value="class_sync">
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'class_sync'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:text>程序通用同步</xsl:text>
										</option>
									</xsl:when>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation = 'class_migr'">
										<option value="class_migr">
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'class_migr'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:text>程序通用迁移</xsl:text>
										</option>
									</xsl:when>
									<xsl:otherwise>
										<option value="build">
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'build'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:text>保存</xsl:text>
										</option>
										<option value="search">
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.data[2]/record.crest/operation = 'mysql_migrate' or cludove.crest.spruce.data[2]/record.crest/operation = 'oracle_migr' or cludove.crest.spruce.data[2]/record.crest/operation = 'sql_migr' or cludove.crest.spruce.data[2]/record.crest/operation = 'mysql_sync' or cludove.crest.spruce.data[2]/record.crest/operation = 'oracle_sync' or cludove.crest.spruce.data[2]/record.crest/operation = 'sql_sync'">
													<xsl:attribute name="style">display:none</xsl:attribute>
												</xsl:when>
												<xsl:otherwise>
													<xsl:attribute name="style">display:block</xsl:attribute>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'search'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:text>查询</xsl:text>
										</option>
									</xsl:otherwise>
								</xsl:choose>
								<option value="migrate" style="display:none">
									<xsl:choose>
										<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0">
											<xsl:choose>
												<xsl:when test="count(cludove.crest.spruce.data[2]/record.crest) = 0">
													<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
														<xsl:attribute name="selected">selected</xsl:attribute>
													</xsl:if>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</xsl:when>
										<xsl:otherwise>
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'migrate'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:text>JDBC通用迁移</xsl:text>
								</option>
								<option value="synchronize" style="display:none">
									<xsl:choose>
										<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0">
											<xsl:choose>
												<xsl:when test="count(cludove.crest.spruce.data[2]/record.crest) = 0">
													<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
														<xsl:attribute name="selected">selected</xsl:attribute>
													</xsl:if>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</xsl:when>
										<xsl:otherwise>
											<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'synchronize'">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:text>JDBC通用同步</xsl:text>
								</option>
							</select>

						</xsl:when>
						<xsl:otherwise>

							<select id="data_operation" style="padding-right: 18px;width:84%">
								<xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
								<option value="search">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'search'">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:text>查询</xsl:text>
								</option>
								<option value="build">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'build'">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:text>保存</xsl:text>
								</option>
								<option value="modify">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'modify'">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:text>修改</xsl:text>
								</option>
								<option value="remove">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'remove'">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:text>删除</xsl:text>
								</option>
								<option value="upload">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB' or count(cludove.crest.spruce.data[1]/record.crest) = 0">
										<xsl:attribute name="style">display: none</xsl:attribute>
									</xsl:if>
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'upload'">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:text>上传</xsl:text>
								</option>
								<option value="download">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB' or count(cludove.crest.spruce.data[1]/record.crest) = 0">
										<xsl:attribute name="style">display: none</xsl:attribute>
									</xsl:if>
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'download'">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:text>下载</xsl:text>
								</option>
							</select>
						</xsl:otherwise>
					</xsl:choose>
				</p>
				<div id="repeat_field_container" style="display:none">
					<p>
						<span class="span_tit">设置去重：</span>
						<select id="data_remove_repeat_field" style="padding-right: 18px;width:85%">
							<xsl:attribute name="onchange">addTag(this)</xsl:attribute>
							<option value="">请选择去重字段</option>
						</select>
					</p>
					<div style="color: #808080;margin-bottom: 15px">
						<span style="vertical-align:top" class="span_tit">去重字段：</span>
						<div class="tags" id="tags">
							<xsl:text> </xsl:text>
						</div>
					</div>
					<input type="hidden" id="repeat_field_value">
						<xsl:attribute name="value">
							<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/remove_repeat_field"/>
						</xsl:attribute>
					</input>
				</div>
				<div>
					<p class="design-rad">
						<xsl:attribute name="id">data_is_paginate_container</xsl:attribute>
						<!--<xsl:choose>-->
							<!--<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>-->
							<!--<xsl:otherwise>-->
								<!--<xsl:attribute name="style">display: none</xsl:attribute>-->
							<!--</xsl:otherwise>-->
						<!--</xsl:choose>-->
						<span>是否分页：</span>
						<input class="input_radio" value="true" type="radio" name="is_paginate" id="data_is_paginate_true" onclick="$('#data_is_paginate').val('true')">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_paginate = 'false'">
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</input>
						<label for="data_is_paginate_true"> 是 </label>
						<input style="margin-left:10px" class="input_radio" value="false" type="radio" name="is_paginate" id="data_is_paginate_false" onclick="$('#data_is_paginate').val('false')">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_paginate = 'false'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
								</xsl:otherwise>
							</xsl:choose>
						</input>
						<label for="data_is_paginate_false"> 否 </label>
						<input id="data_is_paginate" type="hidden" value="true">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_paginate != ''">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/is_paginate"/></xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="value">true</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</input>
					</p>
				</div>
				<p style="margin-top:18px" class="design-rad">
					<xsl:attribute name="id">data_is_permit_container</xsl:attribute>
					<span class="span_tit">权限判断：</span>
					<input class="input_radio" value="true" type="radio" name="is_permit" id="data_is_permit_true" onclick="$('#data_is_permit').val('true')">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_permit = 'false'"/>
							<xsl:otherwise>
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</input>
					<label for="data_is_paginate_true"> 是 </label>
					<input  style="margin-left:10px" class="input_radio" value="false" type="radio" name="is_permit" id="data_is_permit_false" onclick="$('#data_is_permit').val('false')">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_permit = 'false'">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:when>
						</xsl:choose>
					</input>
					<label for="data_is_paginate_false"> 否 </label>
					<input id="data_is_permit" type="hidden" value="true">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_permit != ''">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/is_permit"/></xsl:attribute>
							</xsl:when>
						</xsl:choose>
					</input>
				</p>
				<input id="data_position_validate" style="width:180px;height:0px;border: 1px solid #ffffff;color:#ffffff" value="1" class="validate[required,custom[zpositive],max[100]]">
				</input>
				<div class="list">
					<div style="position: relative;top:-12px">
						<span style="color:#808080">处理顺序：</span>
						<div style="position: absolute;top:-6px;left:60px" class="data_position_spinner">
							<input style="width:100px;height:20px" type="text" id="data_position" onblur="$('#data_position_validate').val(this.value)" class="input-1">
								<xsl:attribute name="onkeyup">if(this.value == '0') {this.value = '1'}</xsl:attribute>
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/position"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:choose>
												<xsl:when test="count(cludove.crest.spruce.data[3]/record.crest[operation != 'upload' and operation != 'download']) > 0">
													<xsl:choose>
														<xsl:when test="$position = 100">
															<xsl:value-of select="$position"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="$position + 1"/>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>0</xsl:text>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
							</input>
						</div>
					</div>
				</div>
				<input id="data_row_number_validate" style="width:180px;height:0px;border: 1px solid #ffffff;color:#ffffff" value="0" class="validate[required,custom[zpositive],max[100]]">
				</input>
				<div class="list">
					<xsl:attribute name="id">data_row_number_container</xsl:attribute>
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
						<xsl:otherwise>
							<xsl:attribute name="style">display: none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					<div style="position: relative;">
						<span style="color:#808080" class="span_tit">数据行数：</span>
						<div style="position: absolute;top:-6px;left:60px;" class="data_row_number_spinner">
							<input style="width:100px;height:20px" maxlength="3" type="text" id="data_row_number" onblur="$('#data_row_number_validate').val(this.value)" class="input-1">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/row_number != ''">
											<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/row_number"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text>0</xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
							</input>
						</div>
					</div>
				</div>

				<div class="list">
					<xsl:attribute name="id">data_exchange_processor_number_div</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.catalog/record.crest)>0"/>
						<xsl:otherwise>
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					<div  style="position: relative;">
						<span style="color:#808080" class="span_tit">线程数量：</span>
						<div style="position: absolute;top:-6px;left:60px" class="ddata_exchange_new_processor_number_spinner">
							<input style="width:100px;height:20px;padding-left:10px" type="text" id="data_exchange_new_processor_number">
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
				</div>

				<div style="margin-top:20px">
					<p class="list">
						<xsl:attribute name="id">data_uniques_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">唯一描述：</span>
						<input maxlength="128" type="text" id="data_uniques" placeholder="多数情况下是指主键字段，保持大写，可为空" class="input-1 validate[custom[capital],maxSize[128]]">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/uniques"/>
							</xsl:attribute>
						</input>
					</p>
				</div>
				<div>
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.data[3]/record.crest) = 0 or  cludove.crest.spruce.data[1]/record.crest/position = $small_position">
							<xsl:attribute name="style">display: none</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
					<!--r_关联字段-->
					<p>
						<xsl:attribute name="id">data_r_association_field</xsl:attribute>
					</p>
					<!--s_本表字段-->
					<p>
						<xsl:attribute name="id">data_s_association_field</xsl:attribute>
					</p>
				</div>
				<div style="display:none">
					<p class="design-rad">
						<xsl:attribute name="style">display:none</xsl:attribute>
						<xsl:attribute name="id">data_is_for_each_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">循环取值：</span>

						<input class="input_radio" value="true" type="radio" name="is_for_each" id="data_is_for_each_true" onclick="$('#data_is_for_each').val('true'); $('#data_select_expression').attr('class','validate[required,maxSize[1024]]');">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_for_each = 'true'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</input>
						<label for="data_is_for_each_true"> 是 </label>
						<input class="input_radio" value="false" type="radio" name="is_for_each" id="data_is_for_each_false" onclick="$('#data_is_for_each').val('false');$('#data_select_expression').attr('class','validate[maxSize[1024]]');">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_for_each = 'true'"/>
								<xsl:otherwise>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</input>
						<label for="data_is_for_each_false"> 否 </label>
						<input id="data_is_for_each" type="hidden" value="true">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_for_each != ''">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/is_for_each"/></xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="value">false</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</input>
					</p>
					<p>
						<xsl:attribute name="style">display:none</xsl:attribute>
						<xsl:attribute name="id">data_select_expression_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">选取条件：</span>
						<textarea id="data_select_expression" placeholder="xsl:for-each输出目录数据，循环取值为是时不能为空" title="与循环取值配合使用，循环取值为是时生效，用于循环输出数据取值、执行条件，用在数据参数、查询条件、数据排序、数据分组上仅会取第一条输出">
							<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/select_expression"/>
						</textarea>
					</p>
				</div>
				<xsl:if test="count(cludove.crest.spruce.resource_connection[1]/record.crest) > 0 and cludove.crest.spruce.data[1]/record.crest[buddle_id !='infoinge' and buddle_id !='lock'] and count(cludove.crest.spruce.catalog/record.crest) = 0">
					<p class="list">
						<span class="span_tit">同步总线：</span>
						<input class="input_radio" value="true" type="radio" name="is_synced_dsb" disabled="disabled">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_synced_dsb = 'true'">
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</input>
						<label for=""> 是 </label>
						<input class="input_radio" value="false" type="radio" name="is_synced_dsb" disabled="disabled">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_synced_dsb = 'true'"/>
								<xsl:otherwise>
									<xsl:attribute name="checked">checked</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</input>
						<label for=""> 否 </label>
					</p>
					<p style="" class="list">
						<span class="span_tit">同步原因：</span>
						<span class="div_input" style="height:25px">
							<xsl:choose>
								<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) > 0">
									<xsl:choose>
										<xsl:when test="/content/cludove.crest.spruce.data[1]/record.crest/is_synced_dsb = 'true'">
											<text>同步成功</text>
										</xsl:when>
										<xsl:when test="/content/cludove.crest.spruce.data[1]/record.crest/sync_dsb_reason = 'failure'">
											<text>同步失败</text>
										</xsl:when>
										<xsl:otherwise>
											<text>尚未同步</text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:when>
								<xsl:otherwise>
									<text>  </text>
								</xsl:otherwise>
							</xsl:choose>
						</span>
					</p>
				</xsl:if>
				<div>
					<xsl:attribute name="id">data_exchange_container</xsl:attribute>
					<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest) = 0">
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:if>
					<div class="list">
						<xsl:attribute name="id">data_migr_field_container</xsl:attribute>
						<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'synchronize'  or cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_sync' or cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_sync' or cludove.crest.spruce.data[1]/record.crest/operation = 'sql_sync' or cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_sync'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<p>
							<span class="span_tit">迁移字段：</span>
							<select id="data_migr_field"  style="padding-right: 18px">
								<option value="">请选择迁移字段</option>
								<xsl:for-each select="metadata/record.crest">
									<option>
										<xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/migr_field">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:attribute name="value">
											<xsl:value-of select="name"/>
										</xsl:attribute>
										<xsl:value-of select="name"/>
									</option>
								</xsl:for-each>
							</select>
						</p>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_sync_field_container</xsl:attribute>
						<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_migr' or cludove.crest.spruce.data[1]/record.crest/operation = 'sql_migr' or cludove.crest.spruce.data[1]/record.crest/operation = 'infoinge_migr'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<p>
							<span class="span_tit">同步字段：</span>
							<select id="data_sync_field" class="validate[required]"  style="padding-right: 18px">
								<option value="">请选择同步字段</option>
								<xsl:for-each select="metadata/record.crest">
									<option>
										<xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/sync_field">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:attribute name="value">
											<xsl:value-of select="name"/>
										</xsl:attribute>
										<xsl:value-of select="name"/>
									</option>
								</xsl:for-each>
							</select>
						</p>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_sync_time_container</xsl:attribute>
						<xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_migr' or cludove.crest.spruce.data[1]/record.crest/operation = 'sql_migr'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<p>
							<span class="span_tit">同步时间：</span>
							<select id="data_sync_time_field"  style="padding-right: 18px">
								<option value="">请选择同步时间</option>
								<xsl:for-each select="metadata/record.crest">
									<option>
										<xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/sync_time_field">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:attribute name="value">
											<xsl:value-of select="name"/>
										</xsl:attribute>
										<xsl:value-of select="name"/>
									</option>
								</xsl:for-each>
							</select>
						</p>
					</div>
				</div>
				<div id="data_div_btn" class="configure-fr-side-bottom">
					<!--<xsl:attribute name="id">data_div_btn</xsl:attribute>-->
					<xsl:choose>
						<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
						<xsl:when test="cludove.crest.spruce.data[1]/record.crest/buddle_id = 'exchange'"/>
						<xsl:otherwise>
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					<span class="span_tit"/>
					<p class="configure-fr-side-bottom">
						<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">
							<input type="button" href="javascript:void(0)" value="提交" class="submit_btn sub" onclick="processDataSetting()"/>
							<input type="button" href="javascript:void(0)" class="res" value="清除" onclick="resetData(this);initDataSetting()"/>
						</xsl:if>
						<input onclick="$('#resource_setting_right').hide()" type="button" value="取消" class="but"/>
						<input type="reset" style="display:none" class="reset_data"/>
					</p>

						<!--隐藏按钮-->

						<input type="hidden" name="data_catalog_type" id="data_catalog_type">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/type"/></xsl:attribute>
						</input>

						<input type="hidden" name="data_count" id="data_count">
							<xsl:attribute name="value"><xsl:value-of select="count(cludove.crest.spruce.data[2]/record.crest)"/></xsl:attribute>
						</input>

						<input type="hidden" name="data_count_all" id="data_count_all">
							<xsl:attribute name="value"><xsl:value-of select="count(cludove.crest.spruce.data[3]/record.crest)"/></xsl:attribute>
						</input>

						<!--保存 右侧data数量-->
						<input type="hidden" name="data_count_right" id="data_count_right">
							<xsl:attribute name="value"><xsl:value-of select="count(cludove.crest.spruce.data[2]/record.crest[operation = 'build'])"/></xsl:attribute>
						</input>

						<input type="hidden" name="data_type_init" id="data_type_init">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/type"/></xsl:attribute>
						</input>
						<input type="hidden" name="data_location" id="data_location">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation!='build'">
										<xsl:text>1</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>2</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						</input>
						<!--添加 data_exchange隐藏按钮存储code-->
						<input type="hidden" name="code_data_exchange" id="code_data_exchange">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_exchange/record.crest/code"/></xsl:attribute>
						</input>


						<input type="hidden" name="code_data_migr" id="code_data_migr">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[3]/record.crest[position = 0]/code"/></xsl:attribute>
						</input>


						<input type="hidden" name="code" id="code_data">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/code"/></xsl:attribute>
						</input>
						<input type="hidden" name="connection_code" id="connection_code_data">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_code"/></xsl:attribute>
						</input>
						<input type="hidden" id="connection_id_by_db">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="resource_name_by_db">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="resource_name_by_db_one">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="remove_parameter_data_code"/>

						<!--=====新增存储初始资源定义名=========-->
						<input type="hidden" id="remove_connection_id_by_db">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/></xsl:attribute>
							</xsl:if>
						</input>

						<input type="hidden" id="remove_connection_id">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/></xsl:attribute>
						</input>
						<!--=====新增存储初始库表名=========-->
						<input type="hidden" id="remove_resource_name_by_db">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="remove_operation_by_db">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/operation"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="remove_operation">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/operation"/></xsl:attribute>
						</input>
						<input type="hidden" id="remove_resource_name">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
						</input>

						<input type="hidden" id="operation_by_db">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/operation"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">search</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:if>
						</input>
						<input type="hidden" id="connection_id_by_metadata">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Metadata'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="resource_name_by_metadata">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Metadata'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="connection_id_by_hinge">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/></xsl:attribute>
							</xsl:if>
						</input>


						<input type="hidden" id="resource_buddle_by_hinge">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_buddle"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="resource_name_by_hinge">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="connection_id_by_ws">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'WS'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="resource_name_by_ws">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'WS'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/operation"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="connection_id_by_class">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="class_connection_id_by_class">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/></xsl:attribute>
							</xsl:if>
						</input>
						<input type="hidden" id="resource_name_by_class">
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/operation"/></xsl:attribute>
							</xsl:if>
						</input>

						<input type="hidden" id="data_position_setting">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="count(cludove.crest.spruce.data[3]/record.crest) > 0">
										<xsl:value-of select="$position_new + 1"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>0</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						</input>
						<input type="hidden" id="data_position_setting_this">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/position"/></xsl:attribute>
						</input>
						<input type="hidden" id="data_operation_setting_this">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/operation"/></xsl:attribute>
						</input>
						<input type="hidden" id="data_operation_setting">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[2]/record.crest/operation"/></xsl:attribute>
						</input>
						<input type="hidden" name="build_connection_id" id="build_connection_id">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[2]/record.crest[operation = 'build']/connection_id"/></xsl:attribute>
						</input>
						<input type="hidden" name="build_resource_name" id="build_resource_name">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[2]/record.crest[operation = 'build']/resource_name"/></xsl:attribute>
						</input>
						<input value="exchange" type="hidden" id="buddle_id"/>
						<input type="hidden" id="catalog_id">
							<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/catalog_id"/></xsl:attribute>
						</input>
						<input type="hidden" id="catalog_code">
							<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/catalog_code"/></xsl:attribute>
						</input>
						<input type="hidden" id="is_exchange">
							<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/is_exchange"/></xsl:attribute>
						</input>
						<input type="hidden" id="data_catalog_id">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/catalog_id"/></xsl:attribute>
						</input>
						<!--用做库表关联-->
						<input type="hidden" id="data_r_identifier">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[2]/record.crest/connection_id"/></xsl:attribute>
						</input>
						<input type="hidden" id="data_r_resource_name">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[2]/record.crest/resource_name"/></xsl:attribute>
						</input>
						<input type="hidden" id="data_r_type">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[2]/record.crest/type"/></xsl:attribute>
						</input>
						<input type="hidden" id="data_is_design">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0">1</xsl:when>
									<xsl:otherwise>0</xsl:otherwise>
								</xsl:choose>
								<!--<xsl:value-of select="cludove.crest.spruce.data[2]/record.crest/type"/>-->
							</xsl:attribute>
						</input>
						<input type="hidden" id="data_is_response_design" value="1"/>
						<input type="hidden" name="data_main_code" id="data_main_code">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[3]/record.crest[position = $small_position]/code"/></xsl:attribute>
						</input>
						<!--判断是否删除数据映射-->
						<input type="hidden" name="data_is_mapping" id="data_is_mapping" value="false"/>
						<!--判断是否删除保存表-->
						<input type="hidden" name="data_is_operation" id="data_is_operation" value="false"/>

						<!--判断为功能数据、外部数据、迅枢时 存储 迁移/同步 字段-->
						<input type="hidden" name="metadata_filed_migr" id="metadata_filed_migr"/>
						<input type="hidden" name="metadata_filed_sync" id="metadata_filed_sync"/>
						<!--限制迅枢操作名字为保存，只显示有输入的数据元数据-->
						<input type="hidden" name="metadata_complete" id="metadata_complete"/>
				</div>
		</form>
		<div class="hidden" id="data_logon">

		</div>
		<div class="hidden" id="data_logon_relation">

		</div>
		<input type="hidden" id="permission" />
		<input type="hidden" id="template_field" />
	</xsl:template>
</xsl:stylesheet>
