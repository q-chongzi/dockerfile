<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_resource_connection_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest) > 0 and count(/content/parameter.cludove/host) = 0">
							<span class="set_resource_connection_name">资源连接</span>
							<span class="span_edit span_resource_connection_edit" title="新增资源连接">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.connection.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">if ('<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/is_dsb"/>' == 'true'){ alert('已添加总线连接')} else { $(".set_resource_connection_name").html("资源连接-新增"); $(".span_resource_connection_edit").hide(); $('#code_resource_connection').val(''); $('#connection_code_resource_connection').val(''); $('#resource_connection_name').focus();  $('input:radio[name="resource_connection_select"]').attr('checked',false);$('#connection_div_btn').show()}</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_resource_connection_name">资源连接-新增</span>
						</xsl:otherwise>
					</xsl:choose>
					<span class="span_reload span_resource_connection_reload" title="重新加载驱动处理">
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
					    <xsl:attribute name="onclick">onProcessorSelect('resource_connection_driver', '<xsl:value-of select="parameter.cludove/type"/>', '', '')</xsl:attribute>
					</span>
				</div>
				<div class="title">
					<div class="div_tips div_txt">
						<p>资源连接包括数据库和讯枢节点的访问参数定义</p>
					</div>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">连接名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="resource_connection_name" class="validate[required,maxSize[128]]" placeholder="为数据库或讯枢节点起一个名字，便于理解数据内容">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/name != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/name"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">连接标识：</span>
						<div class="text">
							<div class="div_input">
								<input class="validate[custom[validateIdentifier]]" maxlength="64" type="text" id="resource_connection_identifier" placeholder="为数据库或讯枢节点定义一个位置标识" title="资源标识用于指示讯枢需要操作的是哪个数据库或者哪个讯枢节点">
									<xsl:attribute name="disabled">disabled</xsl:attribute>
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/identifier != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/identifier"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">连接类型：</span>
						<div class="text">
							<div class="div_input">
								<xsl:choose>
									<xsl:when test="parameter.cludove/type = 'Hinge'">
										<xsl:text disable-output-escaping="yes">Infoinge</xsl:text>
									</xsl:when>
									<xsl:when test="parameter.cludove/type = 'DB'">
										<xsl:text disable-output-escaping="yes">DB</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text disable-output-escaping="yes">未知连接</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</div>
					</div>
					<xsl:if test="parameter.cludove/type = 'Hinge' and countcludove.crest.spruce.resource_connection/record.crest/reg_status != ''">
						<div class="list">
							<span class="span_tit">注册状态：</span>
							<div class="text">
								<div class="div_input">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'regist'">
											<xsl:text disable-output-escaping="yes">注册</xsl:text>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'work'">
											<xsl:text disable-output-escaping="yes">工作</xsl:text>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'refuse'">
											<xsl:text disable-output-escaping="yes">拒绝</xsl:text>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text disable-output-escaping="yes">未注册</xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
						</div>
					</xsl:if>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_connection_driver"/>
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
										<select id="resource_connection_driver" class="validate[required]"><!--这个命名也不一样，提交数据库时注意哦-->
											<xsl:if test="count(/content/parameter.cludove/host) > 0">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:if>
											<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
												<xsl:sort select="class" order="ascending"/>
												<option>
													<xsl:choose>
														<xsl:when test="count(/content/cludove.crest.spruce.resource_connection/record.crest) >0 ">
															<xsl:if test="class = /content/cludove.crest.spruce.resource_connection/record.crest/driver">
																<xsl:attribute name="selected">selected</xsl:attribute>
															</xsl:if>
														</xsl:when>
														<xsl:otherwise>
															<xsl:if test="class = /content/cludove.crest.spruce.resource_decomposing/record.crest/driver">
																<xsl:attribute name="selected">selected</xsl:attribute>
															</xsl:if>
														</xsl:otherwise>
													</xsl:choose>
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
					<input id="run_method" type="hidden">
						<xsl:choose>
							<xsl:when test="count(/content/parameter.cludove/host) > 0">
								<xsl:attribute name="value">negative</xsl:attribute>
							</xsl:when>
							<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/run_id != ''">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/run_id"/></xsl:attribute>
							</xsl:when>
							<xsl:when test="/content/parameter.cludove/type = 'DB'">
								<xsl:attribute name="value">positive</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="value"></xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</input>
					<div class="list">
						<span class="span_tit">服务地址：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="resource_connection_host" class="validate[required,maxSize[128]]" placeholder="数据库或讯枢的服务器IP">
									<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/host != '' and count(/content/parameter.cludove/host) = 0">
										<xsl:attribute name="disabled">disabled</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="count(/content/parameter.cludove/host) > 0"/>
											<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/host != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/host"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">服务端口：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="8" type="text" id="resource_connection_port" class="validate[required,maxSize[8]]" placeholder="数据库或讯枢的服务器端口">
									<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/port != '' and count(/content/parameter.cludove/host) = 0">
										<xsl:attribute name="disabled">disabled</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/port != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/port"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/port"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Colony'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_connection_account"/>
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
										<input maxlength="50" class="validate[custom[onchinaese]]" type="text" id="resource_connection_account" placeholder="数据库或讯枢的服务访问帐号">
											<xsl:attribute name="value">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/account != ''">
														<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/account"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/account"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:attribute>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Colony'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_connection_password"/>
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
										<input maxlength="50"  class="validate[custom[onchinaese]]" id="resource_connection_password" placeholder="数据库或讯枢的服务访问密码">
											<xsl:choose>
												<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/password != ''">
													<xsl:attribute name="type">password</xsl:attribute>
												</xsl:when>
												<xsl:when test="cludove.crest.spruce.resource_decomposing/record.crest/password != ''">
													<xsl:attribute name="type">password</xsl:attribute>
												</xsl:when>
												<xsl:otherwise>
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="onfocus">this.type='password'</xsl:attribute>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:attribute name="value">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/password != ''">
														<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/password"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/password"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:attribute>
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
								<input maxlength="50" type="text" id="resource_connection_template" class="validate[required,maxSize[256]]" placeholder="数据库连接模板或讯枢的服务链接地址">
									<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/type = 'Hinge' or count(/content/parameter.cludove/host) > 0">
										<xsl:attribute name="disabled">disabled</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/template != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/template"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">display:none</xsl:attribute>
								<input type="hidden" id="resource_connection_pattern"/>
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
										<input maxlength="50" type="text" id="resource_connection_pattern" class="validate[required,maxSize[64]]" placeholder="数据库的schema名字">
											<xsl:if test="count(/content/parameter.cludove/host) > 0">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/pattern != ''">
														<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/pattern"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/pattern"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:attribute>
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
								<input type="hidden" id="resource_connection_instance"/>
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
										<input maxlength="50" type="text" id="resource_connection_instance" class="validate[required,maxSize[64],custom[onlowercases]]" placeholder="数据库的catalog名字">
											<xsl:if test="count(/content/parameter.cludove/host) > 0">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/instance != ''">
														<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/instance"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/instance"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:attribute>
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
								<input type="hidden" id="resource_connection_max_number" value="0"/>
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
								<span class="span_tit">最大连接:</span>
								<div class="text">
									<div class="div_input">
										<input maxlength="50" type="text" id="resource_connection_max_number" class="validate[required,min[20],maxSize[8],custom[zpositives]]" placeholder="数据库连接池大小设置">
											<xsl:if test="count(/content/parameter.cludove/host) > 0">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/max_number != ''">
														<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/max_number"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/max_number"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:attribute>
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
								<input type="hidden" id="resource_connection_timeout" value="0"/>
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
										<input maxlength="50" type="text" id="resource_connection_timeout" class="validate[required,maxSize[8],min[20000]]" placeholder="数据库连接池超时设置">
											<xsl:if test="count(/content/parameter.cludove/host) > 0">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/timeout != ''">
														<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/timeout"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/timeout"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:attribute>
										</input>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list" style="display:none">
						<span class="span_tit">缓存大小:</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="50" type="text" id="resource_connection_buffer_pool_size">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/buffer_pool_size != ''">
												<xsl:choose>
													<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/buffer_pool_size != ''">
														<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/buffer_pool_size"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/buffer_pool_size"/>
													</xsl:otherwise>
												</xsl:choose>
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
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.connection.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<xsl:variable name="template">
								<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>
							</xsl:variable>
							<div class="div_btn" id="connection_div_btn">
								<xsl:choose>
									<xsl:when test="count(/content/parameter.cludove/host) > 0"/>
									<xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest) > 0">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:when>
									<xsl:when test="/content/parameter.cludove/http_host = $template">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:when>
									<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status != ''">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:when>
									<xsl:when test="cludove.crest.spruce.resource_decomposing/record.crest/is_dsb = 'true' and parameter.cludove/isDsbSetting.cludove = 'true'">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
								<a href="javascript:void(0)" class="submit_btn" onclick="validateConnectiontemplate()">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_resource_connection">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="count(/content/parameter.cludove/host) > 0"/>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/code"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_resource_connection">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="count(/content/parameter.cludove/host) > 0"/>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/connection_code"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
								<input type="hidden" name="is_locked" id="resource_connection_is_locked">
									<xsl:attribute name="value">false</xsl:attribute>
								</input>

								<input type="hidden" id="resource_connection_backup_host">
									<xsl:attribute name="value"><xsl:value-of select="/content/parameter.cludove/host"/></xsl:attribute>
								</input>
								<!--资源连接总线-->
								<input type="hidden" name="is_dsb" id="resource_connection_is_dsb">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.resource_connection/record.crest/is_dsb != ''">
												<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/is_dsb"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/is_dsb"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>


								<input type="hidden" name="dbconnect" id="dbconnect">
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
