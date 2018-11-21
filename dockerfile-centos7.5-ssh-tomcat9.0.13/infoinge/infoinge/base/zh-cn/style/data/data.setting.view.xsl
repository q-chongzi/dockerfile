<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_data_setting">
			<xsl:variable name="position">
				<xsl:for-each select="cludove.crest.spruce.data[3]/record.crest">
					<xsl:sort data-type="number" order="descending" select="position"/>
					<xsl:if test="position() = 1">
						<xsl:value-of select="position"/>
					</xsl:if>
				</xsl:for-each>
			</xsl:variable>
			<div class="item"  style="position: relative">
				<div class="div_txt">
					<div class="list">
						<div class="text">
							<div class="div_nav">
								<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration' or cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
									<a style="display:none" href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">
										<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
										<xsl:text>预览功能</xsl:text>
									</a>
								</xsl:if>
								<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_data_input_container').is(':hidden')) $('#style_file_data_input_container').show(); else $('#style_file_data_input_container').hide();">上传样式单</a>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">style_file_data_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_data_input" name="style_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_data_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) > 0">
							<span class="set_data_name">目录数据</span>
							<span class="span_edit span_data_edit" title="新增目录数据">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">
									$('input:radio[name="data_type_select"]').attr('disabled',false);$(".set_data_name").html("目录数据-新增"); $(".span_data_edit").hide(); $('#code_data').val(''); $('#connection_code_data').val(''); $('#data_name').focus();  $('input:radio[name="data_select"]').attr('checked',false);if('<xsl:value-of select="$position"/>'=='100'){$('#data_position').val('100')}else{$('#data_position').val('<xsl:value-of select="$position + 1"/>')};$('#data_operation_migrate_container').css('display','none');$('#data_operation_container').css('display','block');initDataOperation();$('#operation_by_db').val(''); $("#data_position").removeAttr('disabled','disabled');if($("#data_catalog_type").val().length == 0){$('input:radio[name="data_type_select"]').removeAttr('disabled')}; if ( $("#data_catalog_type").val() == 'synchronization' ||   $("#data_catalog_type").val() == 'migration') {$('#data_position').spinner({max: 100,min: 1,step: 1});$('#data_exchange_container').css('display','none')};
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
											onResourceStructureXML($('#data_connection_id').val(),'data_resource_name', 'XML', '请选择数据文件','changeDataResourceNameBy()', '','');
										</xsl:when>
										<xsl:otherwise>
											$("#data_connection_id").attr("disabled",false);
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_data_name">目录数据-新增</span>
						</xsl:otherwise>
					</xsl:choose>
					<span class="span_reload span_data_reload" title="重新加载资源定义">
						<!--<xsl:choose>-->
							<!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Class'">-->
								<!--&lt;!&ndash;<xsl:attribute name="onclick">onProcessorSelect("connection_id_by_class", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>&ndash;&gt;-->
								<!--<xsl:attribute name="onclick">onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择功能数据类", "identifier", "onDataTypeDbCheck1('data_connection_id', 'connection_id_by_class')")</xsl:attribute>-->
							<!--</xsl:when>-->
							<!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'WS'">-->
								<!--&lt;!&ndash;<xsl:attribute name="onclick">onProcessorSelect("connection_id_by_ws", "WS", "请选择外部数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>&ndash;&gt;-->
								<!--<xsl:attribute name="onclick">onResourceDecomposingSelect("data_connection_id", "Ws", "请选择外部数据类", "identifier", "onDataTypeDbCheck1('data_connection_id', 'connection_id_by_class')")</xsl:attribute>-->
							<!--</xsl:when>-->
							<!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Metadata'">-->
								<!--&lt;!&ndash;<xsl:attribute name="onclick">onResourceDecomposingSelect("data_connection_id", "DB", "请选择数据库表", "identifier", "onDataTypeMetadataCheck('data_connection_id', 'connection_id_by_metadata')");</xsl:attribute>&ndash;&gt;-->
								<!--<xsl:attribute name="onclick">onResourceDecomposingSelect("data_connection_id", "Metadata", "请选择数据库表", "identifier", "onDataTypeDbCheck1('data_connection_id', 'connection_id_by_metadata')")</xsl:attribute>-->
							<!--</xsl:when>-->
							<!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Hinge'">-->
								<!--&lt;!&ndash;<xsl:attribute name="onclick">onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");</xsl:attribute>&ndash;&gt;-->
								<!--<xsl:attribute name="onclick">onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeDbCheck1('data_connection_id', 'connection_id_by_hinge')")</xsl:attribute>-->
							<!--</xsl:when>-->
							<!--<xsl:otherwise>-->
								<!--<xsl:attribute name="onclick">onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", "identifier", "onDataTypeDbCheck1('data_connection_id', 'connection_id_by_db')")</xsl:attribute>-->
								<xsl:attribute name="onclick">onOverloadResource()</xsl:attribute>
						<!--</xsl:otherwise>-->
						<!--</xsl:choose>-->
					</span>
				</div>

				<div class="div_txt">
					<div class="list">
						<span class="span_tit">数据名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="data_name" placeholder="数据名字被用于权限分组，同组权限名字一致" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">数据类型：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="data_type_select" id="data_type_db" checked="">
								<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义：");$("#data_connection_id").attr("disabled",false); $("#data_resource_name_title").text("数据库表："); $("#data_type").val("DB"); onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", "identifier", "onDataTypeDbCheck('data_connection_id', 'connection_id_by_db')");$('#data_connection_id').attr('class','validate[required]');</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge' or cludove.crest.spruce.data[1]/record.crest/type = 'WS' or cludove.crest.spruce.data[1]/record.crest/type = 'Class' or cludove.crest.spruce.data[1]/record.crest/type = 'Metadata'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text> 数据库 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_class">
								<xsl:attribute name="onclick">$("#data_connection_id_title").text("处理类名："); $("#data_connection_id").attr("disabled",false); $("#data_resource_name_title").text("类方法名："); $("#data_type").val("Class"); onResourceConnectionDataSelect("class_connection_id", "Class",'<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id" />', "请选择资源定义");onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");$('#data_connection_id').attr('class','validate[required]');</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 功能数据 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_ws">
								<xsl:attribute name="onclick">$("#data_connection_id_title").text("处理类名："); $("#data_connection_id").attr("disabled",false); $("#data_resource_name_title").text("类方法名："); $("#data_type").val("WS"); onResourceConnectionDataSelect("class_connection_id", "WS",'<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id" />', "请选择资源定义");onProcessorSelect("data_connection_id", "WS", "请选择外部数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");$('#data_connection_id').attr('class','validate[required]');</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'WS'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 外部数据 </xsl:text>

							<br/>
							<input class="input_radio" value="Metadata" type="radio" name="data_type_select" id="data_type_metadata">
								<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_connection_id").attr("disabled",false); $("#data_resource_name_title").text("数据库表："); $("#data_type").val("Metadata"); onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", "identifier", "onDataTypeMetadataCheck('data_connection_id', 'connection_id_by_metadata')");$('#data_connection_id').removeClass('validate[required]');</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Metadata'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 数据元数据 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_hinge">
								<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_connection_id").attr("disabled",false); $("#data_resource_name_title").text("功能目录："); $("#data_type").val("Hinge"); onDataResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");$('#data_connection_id').attr('class','validate[required]');</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 讯枢 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="data_type_select" id="data_type_xml">
								<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_type").val("XML"); $("#data_connection_id").children("option").eq(0).val("cludove.crest.spruce").text("系统运行 - cludove.crest.spruce"); $("#data_connection_id").val("cludove.crest.spruce").attr("disabled","disabled");$("#data_resource_name_title").text("数据文件");$("#data_resource_name").children("option").eq(0).text("请选择数据文件");onResourceStructureXML($('#data_connection_id').val(),'data_resource_name', 'XML', '请选择数据文件','changeDataResourceNameBy()', '','');$("#data_row_number_container").show();$("#data_uniques_container").show();$("#data_is_for_each_container").show();$("#data_select_expression_container").show();onDataTypeXMLCheck();</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> XML </xsl:text>

							<!--<input class="input_radio" value="false" type="radio" name="type" id="data_type_HTTP">-->
								<!--<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("功能目录："); $("#data_type").val("HTTP"); onResourceDecomposingSelect("data_connection_id", "HTTP", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_HTTP')");</xsl:attribute>-->
								<!--<xsl:choose>-->
									<!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'HTTP'">-->
										<!--<xsl:attribute name="checked">checked</xsl:attribute>-->
									<!--</xsl:when>-->
									<!--<xsl:otherwise/>-->
								<!--</xsl:choose>-->
							<!--</input>-->
							<!--<xsl:text> HTTP </xsl:text>-->


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



						</div>
					</div>

					<!--====================分类========================================-->
					<div class="list" id="data_classify_container">
						<xsl:attribute name="style">display: none</xsl:attribute>
						<span class="span_tit">分类：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="data_classify" id="data_classify_none">
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
							<xsl:text> 不分类 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="data_classify" id="data_classify_input">
								<xsl:attribute name="onclick">$("#data_classify").val("input");onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/classify = 'input'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 输入 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="data_classify" id="data_classify_output">
								<xsl:attribute name="onclick">$("#data_classify").val("output");onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/classify = 'output'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 输出 </xsl:text>
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
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_classification</xsl:attribute>
						<xsl:attribute name="style">display: none</xsl:attribute>

						<span class="span_tit">
							<xsl:text>资源定义：</xsl:text>
						</span>
						<div class="text">
							<div class="div_select">
								<select id="class_connection_id" style="padding-right: 18px">
								</select>
							</div>
						</div>
					</div>


					<!--============================-->


					<div class="list">
						<xsl:attribute name="id">data_connection_id_container</xsl:attribute>
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


						<div class="text">
							<div class="div_select">
								<select id="data_connection_id" class="validate[required]"  style="padding-right: 18px">
									<xsl:attribute name="onchange">onDataConnectionIdChange()</xsl:attribute>
									<!--<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type">-->
										<!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
									<!--</xsl:if>-->
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
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
											<option>
												<xsl:attribute name="selected">selected</xsl:attribute>
												<xsl:attribute name="value">
													<xsl:text>cludove.crest.spruce</xsl:text>
												</xsl:attribute>
												<xsl:text>系统运行 - </xsl:text>
												<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/>
											</option>
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
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_resource_buddle_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">
							<xsl:text>应用标识：</xsl:text>
						</span>
						<div class="text">
							<div class="div_select">
								<select id="data_resource_buddle" class="validate[required]" style="padding-right: 18px">
									<xsl:attribute name="onchange">onDataResourceBuddleChange()</xsl:attribute>
									<option value="">请选择应用标识</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_resource_name_container</xsl:attribute>
						<span class="span_tit">
							<xsl:attribute name="id">data_resource_name_title</xsl:attribute>
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'WS' or cludove.crest.spruce.data[1]/record.crest/type = 'Class'">
									<xsl:text>类方法名：</xsl:text>
								</xsl:when>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'Hinge'">
									<xsl:text>功能目录：</xsl:text>
								</xsl:when>
								<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
									<xsl:text>数据文件：</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>数据库表：</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</span>
						<div class="text">
							<div class="div_select">
								<select id="data_resource_name" class="validate[required]" style="padding-right: 18px">
									<xsl:attribute name="onchange">onDataResourceNameChange()</xsl:attribute>
									<xsl:choose>
										<xsl:when test="count(cludove.crest.spruce.data/record.crest/type) > 0">
											<option>
												<xsl:attribute name="selected">selected</xsl:attribute>
												<xsl:attribute name="value">
													<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
														<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/>.xml
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/>
													</xsl:otherwise>
												</xsl:choose>
											</option>
										</xsl:when>
										<xsl:otherwise>
											<option value="">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
														请选择数据文件
													</xsl:when>
													<xsl:otherwise>
														请选择数据库表
													</xsl:otherwise>
												</xsl:choose>
											</option>
										</xsl:otherwise>
									</xsl:choose>
								</select>
							</div>
						</div>
					</div>

					<div class="list">
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
						<span class="span_tit">操作名字：</span>
						<div class="text">
							<div class="div_select">
								<select id="data_operation_migr" style="padding-right: 18px">
                                	<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
										<xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
                                        <option value="migrate">
                                            <xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'migrate'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>迁移</xsl:text>
                                        </option>
                                        <option value="mysql_migrate">
                                            <xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_migrate'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>mysql迁移</xsl:text>
                                        </option>
                                        <option value="oracle_migr">
                                            <xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_migr'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>oracle迁移</xsl:text>
                                        </option>
                                        <option value="sql_migr">
                                            <xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'sql_migr'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>sqlserver迁移</xsl:text>
                                        </option>
                                	</xsl:if>
								<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
									<xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
									<option value="synchronize">
										<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'synchronize'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text>同步</xsl:text>
									</option>
									<option value="mysql_sync">
										<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_sync'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text>mysql同步</xsl:text>
									</option>
									<option value="oracle_sync">
										<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_sync'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text>oracle同步</xsl:text>
									</option>
									<option value="sql_sync">
										<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'sql_sync'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text>sqlserver同步</xsl:text>
									</option>
							</xsl:if>
								</select>
							</div>
						</div>
					</div>


					<div class="list">
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
						<span class="span_tit">操作名字：</span>
						<div class="text">
							<xsl:choose>
								<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0 ">
									<div class="div_select">
										<select id="data_operation" style="padding-right: 18px">
											<xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
											<option value="build">
												<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'build'">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
												<xsl:text>保存</xsl:text>
											</option>
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
												<xsl:text>迁移</xsl:text>
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
												<xsl:text>同步</xsl:text>
											</option>
										</select>
									</div>
								</xsl:when>
								<xsl:otherwise>
									<div class="div_select">
										<select id="data_operation" style="padding-right: 18px">
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
												<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB' or cludove.crest.spruce.data[1]/record.crest/type = 'Metadata' or count(cludove.crest.spruce.data[1]/record.crest) = 0">
													<xsl:attribute name="style">display: none</xsl:attribute>
												</xsl:if>
												<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'upload'">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
												<xsl:text>上传</xsl:text>
											</option>
											<option value="download">
												<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB' or cludove.crest.spruce.data[1]/record.crest/type = 'Metadata' or count(cludove.crest.spruce.data[1]/record.crest) = 0">
													<xsl:attribute name="style">display: none</xsl:attribute>
												</xsl:if>
												<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'download'">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
												<xsl:text>下载</xsl:text>
											</option>
										</select>
									</div>
								</xsl:otherwise>
							</xsl:choose>
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_is_paginate_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">是否分页：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_paginate" id="data_is_paginate_true" onclick="$('#data_is_paginate').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_paginate = 'false'" />
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_paginate" id="data_is_paginate_false" onclick="$('#data_is_paginate').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_paginate = 'false'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 否 </xsl:text>
							<input id="data_is_paginate" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_paginate != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/is_paginate"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_is_permit_container</xsl:attribute>
						<span class="span_tit">权限判断：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_permit" id="data_is_permit_true" onclick="$('#data_is_permit').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_permit = 'false'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_permit" id="data_is_permit_false" onclick="$('#data_is_permit').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_permit = 'false'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
								</xsl:choose>
							</input>
							<xsl:text> 否 </xsl:text>
							<input id="data_is_permit" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_permit != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/is_permit"/></xsl:attribute>
									</xsl:when>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">处理顺序：</span>
						<div class="data_position_spinner">
							<input type="text" id="data_position" class="validate[required,custom[zpositive],max[100]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/position"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:choose>
												<xsl:when test="count(cludove.crest.spruce.data[3]/record.crest) > 0">
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
					<div class="list">
						<xsl:attribute name="id">data_row_number_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">数据行数：</span>
						<div class="data_row_number_spinner">
							<input maxlength="3" type="text" id="data_row_number" class="validate[required,custom[zpositive],max[100]]">
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
					<div class="list">
						<xsl:attribute name="id">data_uniques_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">唯一描述：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="data_uniques" placeholder="多数情况下是指主键字段，保持大写，可为空" class="validate[custom[capital],maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/uniques"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_is_for_each_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">循环取值：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_for_each" id="data_is_for_each_true" onclick="$('#data_is_for_each').val('true'); $('#data_select_expression').attr('class','validate[required,maxSize[1024]]');">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_for_each = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_for_each" id="data_is_for_each_false" onclick="$('#data_is_for_each').val('false');$('#data_select_expression').attr('class','validate[maxSize[1024]]');">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_for_each = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text> 否 </xsl:text>
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
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="id">data_select_expression_container</xsl:attribute>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.data[1]/record.crest) = 0 or cludove.crest.spruce.data[1]/record.crest/type = 'DB'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display: none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit">选取条件：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="data_select_expression" placeholder="xsl:for-each输出目录数据，循环取值为是时不能为空" title="与循环取值配合使用，循环取值为是时生效，用于循环输出数据取值、执行条件，用在数据参数、查询条件、数据排序、数据分组上仅会取第一条输出">
									<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/select_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<xsl:if test="count(cludove.crest.spruce.resource_connection[1]/record.crest) > 0 and cludove.crest.spruce.data[1]/record.crest[buddle_id !='infoinge' and buddle_id !='lock' and buddle_id !='diginter'] and count(cludove.crest.spruce.catalog/record.crest) = 0">
						<div class="list">
							<span class="span_tit">同步总线：</span>
							<div class="text">
								<input class="input_radio" value="true" type="radio" name="is_synced_dsb" disabled="disabled">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_synced_dsb = 'true'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
								<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
								<input class="input_radio" value="false" type="radio" name="is_synced_dsb" disabled="disabled">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data[1]/record.crest/is_synced_dsb = 'true'"/>
										<xsl:otherwise>
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</input>
								<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							</div>
						</div>
						<div class="list">
							<span class="span_tit">同步原因：</span>
							<div class="text">
								<div class="div_input" style="height:25px">
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
								</div>
							</div>
						</div>
					</xsl:if>
					<div>
						<xsl:attribute name="id">data_exchange_container</xsl:attribute>
						<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest) = 0">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<div class="list">
							<xsl:attribute name="id">data_migr_field_container</xsl:attribute>
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'synchronize'  or cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_sync' or cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_sync' or cludove.crest.spruce.data[1]/record.crest/operation = 'sql_sync'">
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:if>
							<div>
								<span class="span_tit">迁移字段：</span>
								<div class="text">
									<div class="div_select">
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
									</div>
								</div>
							</div>
						</div>
						<div class="list">
							<xsl:attribute name="id">data_sync_field_container</xsl:attribute>
							<xsl:if test="cludove.crest.spruce.data[1]/record.crest/operation = 'migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_migr' or cludove.crest.spruce.data[1]/record.crest/operation = 'sql_migr'">
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:if>
							<div>
								<span class="span_tit">同步字段：</span>
								<div class="text">
									<div class="div_select">
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
									</div>
								</div>
							</div>
						</div>
						<div class="list">
							<xsl:attribute name="id">data_sync_time_container</xsl:attribute>
							<xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'mysql_migrate' or cludove.crest.spruce.data[1]/record.crest/operation = 'oracle_migr' or cludove.crest.spruce.data[1]/record.crest/operation = 'sql_migr'">
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:if>
							<div>
								<span class="span_tit">同步时间：</span>
								<div class="text">
									<div class="div_select">
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
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="data_div_btn" class="list">
						<!--<xsl:attribute name="id">data_div_btn</xsl:attribute>-->
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<xsl:choose>
									<xsl:when test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">
										<a href="javascript:void(0)" class="submit_btn" onclick="processDataSetting()">提交</a>
										<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
										<a href="javascript:void(0)" onclick="resetData(this);initDataSetting()">重置</a>
										<input type="reset" style="display:none" class="reset_data"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>正在迁移或同步，暂时不能进行修改</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
								<!--隐藏按钮-->

								<input type="hidden" name="data_catalog_type" id="data_catalog_type">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/type"/></xsl:attribute>
								</input>
								<input type="hidden" name="data_data_type" id="data_data_type">
									<xsl:choose>
										<xsl:when test="parameter.cludove/code = ''" />
										<xsl:otherwise>
											<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest[1]/type"/></xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</input>
								<input type="hidden" name="data_count" id="data_count">
									<xsl:attribute name="value"><xsl:value-of select="count(cludove.crest.spruce.data[2]/record.crest)"/></xsl:attribute>
								</input>

								<!--保存 右侧data数量-->
								<input type="hidden" name="data_count_right" id="data_count_right">
									<xsl:attribute name="value"><xsl:value-of select="count(cludove.crest.spruce.data[2]/record.crest[operation = 'build'])"/></xsl:attribute>
								</input>

								<input type="hidden" name="data_type_init" id="data_type_init">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/type"/></xsl:attribute>
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
								<input type="hidden" id="resource_name_by_xml">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
									</xsl:if>
								</input>

								<!--=====新增存储初始资源定义名=========-->
								<input type="hidden" id="remove_connection_id_by_db">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/connection_id"/></xsl:attribute>
									</xsl:if>
								</input>
								<!--=====新增存储初始库表名=========-->
								<input type="hidden" id="remove_resource_name_by_db">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
									</xsl:if>
								</input><!--=====新增存储初始库表名=========-->
								<input type="hidden" id="remove_resource_name_by_xml">
									<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'XML'">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/resource_name"/></xsl:attribute>
									</xsl:if>
								</input>

								<input type="hidden" id="operation_by_db">
									<!--<xsl:if test="cludove.crest.spruce.data[1]/record.crest/type = 'DB'">-->
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation != ''">
												<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/operation"/></xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="value">search</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									<!--</xsl:if>-->
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
								<input type="hidden" id="catalog_id">
									<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/catalog_id"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
