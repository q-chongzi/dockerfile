<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_resource_decomposing_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) > 0">
							<span class="set_resource_decomposing_name">资源定义</span>
							<span class="span_edit span_resource_decomposing_edit" title="新增资源定义">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.decomposing.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_resource_decomposing_name").html("资源定义-新增"); $(".span_resource_decomposing_edit").hide(); $('#code_resource_decomposing').val(''); $('#connection_code_resource_decomposing').val(''); $('#resource_decomposing_name').focus();  $('input:radio[name="resource_decomposing_select"]').attr('checked',false);$('#decomposing_div_btn').show();if('<xsl:value-of select="parameter.cludove/type"/>' == 'Hinge'){if ('<xsl:value-of select="count(cludove.crest.spruce.resource_decomposing[3]/record.crest)"/>' > '0'){$('#is_dsb_container').hide()}else{$('#is_dsb_container').show()};$("#resource_decomposing_is_dsb_false").attr("checked","true");$("#resource_decomposing_is_dsb").val('false');}if($('#code_resource_decomposing').val()==''){$("#resource_decomposing_name").attr("disabled",false);$("#resource_decomposing_identifier").attr("disabled",false);$("#resource_decomposing_host").attr("disabled",false);$("#resource_decomposing_port").attr("disabled",false);$("#resource_decomposing_account").attr("disabled",false);$("#resource_decomposing_password").attr("disabled",false);$("#resource_decomposing_template").attr("disabled",false);$("#resource_decomposing_pattern").attr("disabled",false);$("#resource_decomposing_instance").attr("disabled",false);$("#resource_decomposing_max_number").attr("disabled",false);$("#resource_decomposing_timeout").attr("disabled",false);$("#resource_decomposing_is_dsb_true").attr("disabled",false);$("#resource_decomposing_is_dsb_false").attr("disabled",false);$("#resource_decomposing_driver").attr("disabled",false);}</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_resource_decomposing_name">资源定义-新增</span>
						</xsl:otherwise>
					</xsl:choose>
					<span class="span_reload span_resource_decomposing_reload" title="重新加载驱动处理">
						<xsl:if test="parameter.cludove/type = 'Hinge'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<xsl:if test="parameter.cludove/type = 'HTTP'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<xsl:if test="parameter.cludove/type = 'FTP'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<xsl:if test="parameter.cludove/type = 'HDFS'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<xsl:if test="parameter.cludove/type = 'HBASE'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<xsl:if test="parameter.cludove/type = 'WS'">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="onclick">onProcessorSelect('resource_decomposing_driver', '<xsl:value-of select="parameter.cludove/type"/>', '', '')</xsl:attribute>
					</span>
				</div>
			    <div class="title">
					<div class="div_tips div_txt">
						<p>资源定义包括数据库和讯枢节点的访问模板参数定义，定义的参数将用于配置分布式数据库、讯枢集群节点</p>
					</div>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">资源名字：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_name" class="validate[required,maxSize[128]]" placeholder="为数据库或讯枢节点起一个名字，便于理解数据内容"><!--此处与其他input的id命名不同，小心哦-->
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/name"/>
									</xsl:attribute>
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">资源标识：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_identifier" class="validate[required,maxSize[64],custom[validateIdentifiers]]" placeholder="为数据库或讯枢节点定义一个位置标识" title="资源标识用于指示讯枢需要操作的是哪个数据库或者哪个讯枢节点">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/identifier"/>
									</xsl:attribute>
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">资源类型：</span>
						<div class="text">
							<div class="div_input">
								<xsl:choose>
									<xsl:when test="parameter.cludove/type = 'Hinge'">
										<xsl:text disable-output-escaping="yes">Infoinge</xsl:text>
									</xsl:when>
									<xsl:when test="parameter.cludove/type = 'DB'">
										<xsl:text disable-output-escaping="yes">DB</xsl:text>
									</xsl:when>
									<xsl:when test="parameter.cludove/type = 'HTTP'">
										<xsl:text disable-output-escaping="yes">HTTP</xsl:text>
									</xsl:when>
									<xsl:when test="parameter.cludove/type = 'FTP'">
										<xsl:text disable-output-escaping="yes">FTP</xsl:text>
									</xsl:when>
									<xsl:when test="parameter.cludove/type = 'HDFS'">
										<xsl:text disable-output-escaping="yes">HDFS</xsl:text>
									</xsl:when>
									<xsl:when test="parameter.cludove/type = 'HBASE'">
										<xsl:text disable-output-escaping="yes">HBASE</xsl:text>
									</xsl:when>
									<xsl:when test="parameter.cludove/type = 'WS'">
										<xsl:text disable-output-escaping="yes">WS</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text disable-output-escaping="yes">未知资源</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">驱动处理：</span>
								<div class="text">
									<div class="div_select">
										<select id="resource_decomposing_driver" class="validate[required]"><!--这个命名也不一样，提交数据库时注意哦-->
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
													<xsl:attribute name="disabled">disabled</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
											<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
												<xsl:sort select="class" order="ascending"/>
												<option>
													<xsl:if test="class = /content/cludove.crest.spruce.resource_decomposing[1]/record.crest/driver">
														<xsl:attribute name="selected">selected</xsl:attribute>
													</xsl:if>
													<xsl:attribute name="value">
														<xsl:value-of select="class"/>
													</xsl:attribute>
													<xsl:value-of select="name"/>
												</option>
											</xsl:for-each>
											<!--选择出为DB类型的所有class-->
										</select>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<span class="span_tit">服务地址：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_host" class="validate[required,maxSize[128]]" placeholder="数据库或讯枢的服务器IP">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/host"/>
									</xsl:attribute>
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">服务端口：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="8" type="text" id="resource_decomposing_port" class="validate[required,maxSize[8]]" placeholder="数据库或讯枢的服务器端口">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/port"/>
									</xsl:attribute>
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_decomposing_account"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">访问账号：</span>
								<div class="text">
									<div class="div_input">
										<input type="text" id="resource_decomposing_account" class="validate[maxSize[128]]" placeholder="数据库或讯枢的服务访问帐号">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/account"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
													<xsl:attribute name="disabled">disabled</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_decomposing_password"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">访问密码：</span>
								<div class="text">
									<div class="div_input">
										<input  id="resource_decomposing_password" class="validate[maxSize[128]]" placeholder="数据库或讯枢的服务访问密码">
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/password != ''">
													<xsl:attribute name="type">password</xsl:attribute>
												</xsl:when>
												<xsl:otherwise>
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="onfocus">this.type='password'</xsl:attribute>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/password"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
													<xsl:attribute name="disabled">disabled</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<span class="span_tit">连接模板：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_template" class="validate[required,maxSize[256]]" placeholder="数据库连接模板或讯枢的服务链接地址">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/template"/>
									</xsl:attribute>
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_decomposing_pattern"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">方案标识:</span>
								<div class="text">
									<div class="div_input">
										<input maxlength="64" type="text" id="resource_decomposing_pattern" placeholder="数据库的schema名字" class="validate[maxSize[64]]">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/pattern"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
													<xsl:attribute name="disabled">disabled</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">实例标识：</span>
								<div class="text">
									<div class="div_input">
										<input type="text" id="resource_decomposing_instance" class="validate[required,maxSize[64],custom[onlowercases]]" placeholder="数据库的catalog名字">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/instance"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
													<xsl:attribute name="disabled">disabled</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_decomposing_max_number" value="0"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id=""/>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">最大连接:</span>
								<div class="text">
									<div class="div_input">
										<input type="text" id="resource_decomposing_max_number" class="validate[required,min[20],maxSize[8],custom[zpositives]]" placeholder="数据库连接池大小设置">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/max_number"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
													<xsl:attribute name="disabled">disabled</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_decomposing_timeout" value="0"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="" value="0"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="" value="0"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="" value="0"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="" value="0"/>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="" value="0"/>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">超时设置：</span>
								<div class="text">
									<div class="div_input">
										<input type="text" id="resource_decomposing_timeout" class="validate[required,maxSize[8],min[20000]]" placeholder="数据库连接池超时设置">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/timeout"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
													<xsl:attribute name="disabled">disabled</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>

					<!--====总线=====-->
					<div class="list" id="is_dsb_container">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'DB'">
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:when>
							<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) = 0 and count(cludove.crest.spruce.resource_decomposing[3]/record.crest) > 0">
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:when>
							<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/is_dsb != 'true'">
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:when>
							<xsl:otherwise/>
						</xsl:choose>
						<span class="span_tit">是否总线：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_dsb" id="resource_decomposing_is_dsb_true" onclick="$('#resource_decomposing_is_dsb').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/is_dsb = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
										<xsl:attribute name="disabled">disabled</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
								<xsl:if test="count(cludove.crest.spruce.resource_decomposing[2]/record.crest) > 0">
									<xsl:attribute name="disabled">disabled</xsl:attribute>
								</xsl:if>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_dsb" id="resource_decomposing_is_dsb_false" onclick="$('#resource_decomposing_is_dsb').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/is_dsb = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
										<xsl:attribute name="disabled">disabled</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="resource_decomposing_is_dsb" type="hidden">
								<xsl:choose>
									<xsl:when test="parameter.cludove/type = 'DB'">
										<xsl:attribute name="value"></xsl:attribute>
									</xsl:when>
									<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/is_dsb != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/is_dsb"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<!--==============-->

					<div class="list">
						<span class="span_tit">维护电话：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_telephone" class="validate[maxSize[256]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'telephone']/content"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">维护邮箱：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_email" class="validate[maxSize[256]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'email']/content"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="display:none">
						<span class="span_tit">缓存大小:</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_buffer_pool_size">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/buffer_pool_size != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/buffer_pool_size"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text disable-output-escaping="yes">0</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="display:none">
						<span class="span_tit">年库标识:</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_year_id">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/buffer_pool_size != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/year_id"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text disable-output-escaping="yes">0</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="display:none">
						<span class="span_tit">月库标识:</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_month_id">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/buffer_pool_size != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/month_id"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text disable-output-escaping="yes">0</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="display:none">
						<span class="span_tit">日库标识:</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="resource_decomposing_day_id">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/buffer_pool_size != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/day_id"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text disable-output-escaping="yes">0</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.decomposing.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<xsl:variable name="template">
								<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/template"/>
							</xsl:variable>
							<div class="div_btn" id="decomposing_div_btn">
								<!--<xsl:if test="/content/parameter.cludove/http_host = $template">-->
									<!--<xsl:attribute name="style">display:none</xsl:attribute>-->
								<!--</xsl:if>-->
									<a href="javascript:void(0)" class="submit_btn" onclick="validateDecomposingSetting()">提交</a>
									<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
									<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
									<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_resource_decomposing">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_resource_decomposing">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/connection_code"/></xsl:attribute>
								</input>
								<input type="hidden" name="is_locked" id="resource_decomposing_is_locked">
									<xsl:attribute name="value">false</xsl:attribute>
								</input>
								<input type="hidden" name="dbclass" id="dbclass">
									<xsl:choose>
										<xsl:when test="parameter.cludove/type = 'DB'">
											<xsl:attribute name="value">DB</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="value">未知</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</input>


							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
