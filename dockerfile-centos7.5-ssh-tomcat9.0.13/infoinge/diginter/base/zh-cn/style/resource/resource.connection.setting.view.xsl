<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="identifier">
			<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
		</xsl:variable>
		<form class="form-horizontal configure-form" role="form" id="validate_resource_connection_setting">
			<p>
				<span>连接名字：</span>
				<input maxlength="128" type="text" id="resource_connection_name" class="input-1 validate[required,maxSize[128]]" placeholder="为数据库或讯枢节点起一个名字，便于理解数据内容">
					<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/is_local = 'true'">
						<xsl:attribute name="disabled">disabled</xsl:attribute>
					</xsl:if>
					<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/identifier != $identifier">
						<xsl:attribute name="disabled">disabled</xsl:attribute>
					</xsl:if>
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
			</p>
			<p>
				<span>连接标识：</span>
				<input class="input-1 validate[custom[validateIdentifier]]" maxlength="64" type="text" id="resource_connection_identifier" placeholder="为数据库或讯枢节点定义一个位置标识" title="资源标识用于指示讯枢需要操作的是哪个数据库或者哪个讯枢节点">
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
			</p>
			<p>
				<span>连接类型：</span>
				<input type="text" class="input-1" id="resource_connection_type">
					<xsl:attribute name="disabled">disabled</xsl:attribute>
					<xsl:attribute name="value">
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
					</xsl:attribute>
				</input>
			</p>
			<xsl:if test="parameter.cludove/type = 'Hinge' and countcludove.crest.spruce.resource_connection/record.crest/reg_status != ''">
				<p>
					<span>注册状态：</span>
					<input type="text" class="input-1">
						<xsl:attribute name="disabled">disabled</xsl:attribute>
						<xsl:attribute name="value">
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
						</xsl:attribute>
					</input>
				</p>
			</xsl:if>
			<p>
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
						<span>驱动处理：</span>
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
					</xsl:otherwise>
				</xsl:choose>
			</p>

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
			<p>
				<span>服务地址：</span>
				<input maxlength="128" type="text" id="resource_connection_host" class="input-1 validate[required,maxSize[128]]" placeholder="数据库或讯枢的服务器IP">
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
			</p>
			<p>
				<span>服务端口：</span>
				<input maxlength="8" type="text" id="resource_connection_port" class="input-1 validate[required,maxSize[8]]" placeholder="数据库或讯枢的服务器端口">
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
			</p>
			<p>
				<xsl:choose>
					<xsl:when test="parameter.cludove/hinge_type = 'Colony'">
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
						<span>访问账号：</span>
						<input maxlength="50" class="input-1 validate[custom[onchinaese]]" type="text" id="resource_connection_account" placeholder="数据库或讯枢的服务访问帐号">
							<!--<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/is_local = 'true' and cludove.crest.spruce.resource_connection/record.crest/type = 'Hinge'">-->
								<!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
							<!--</xsl:if>-->
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
				<xsl:choose>
					<xsl:when test="parameter.cludove/hinge_type = 'Colony'">
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
						<span>访问密码：</span>
						<input maxlength="50" class="input-1 validate[custom[onchinaese]]" id="resource_connection_password" placeholder="数据库或讯枢的服务访问密码">
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
							<!--<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/is_local = 'true' and cludove.crest.spruce.resource_connection/record.crest/type = 'Hinge'">-->
								<!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
							<!--</xsl:if>-->
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
				<span>连接模板：</span>
				<input maxlength="50" type="text" id="resource_connection_template" class="input-1 validate[required,maxSize[256]]" placeholder="数据库连接模板或讯枢的服务链接地址">
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
			</p>
			<p>
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
						<span>方案标识：</span>
						<input maxlength="50" type="text" id="resource_connection_pattern" class="input-1 validate[required,maxSize[64]]"  placeholder="数据库的schema名字">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p style="position:relative">
				<xsl:choose>
					<xsl:when test="parameter.cludove/type = 'Hinge'">
						<span>位置信息：</span>
						<a href="javascript:void(0)" style="position:absolute;right:10px" onclick="showMapEdit();BaiduMap.cityLocation()"><img src="img/icon-gps.png"/></a>
						<input maxlength="128" type="text" id="resource_connection_gps_location" class="input-1 validate[maxSize[128],custom[coordinatePosition]]" placeholder="经纬度用,逗号分隔">
							<!--<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/identifier != $identifier">-->
								<!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
							<!--</xsl:if>-->
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/gps_location"/>
							</xsl:attribute>
						</input>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
						<span>位置信息：</span>
						<input type="hidden" id="resource_connection_gps_location" value=""/>
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
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
						<span>实例标识：</span>
						<input maxlength="50" type="text" id="resource_connection_instance" class="input-1 validate[required,maxSize[64]]" placeholder="数据库的catalog名字">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
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
						<span>最大连接：</span>
						<input maxlength="50" type="text" id="resource_connection_max_number" class="input-1 validate[required,min[20],maxSize[8],custom[zpositives]]" placeholder="数据库连接池大小设置">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
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
						<span>超时设置：</span>
						<input maxlength="50" type="text" id="resource_connection_timeout" class="input-1 validate[required,maxSize[8],min[20000]]" placeholder="数据库连接池超时设置">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p style="display:none">
				<span>缓存大小:</span>
				<input maxlength="50" type="text" class="input-1" id="resource_connection_buffer_pool_size">
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
			</p>
			<div class="configure-fr-side-bottom" id="connection_div_btn">
				<!--<xsl:variable name="template">-->
					<!--<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>-->
				<!--</xsl:variable>-->
				<!--<xsl:if test="/content/parameter.cludove/http_host = $template and /content/parameter.cludove/type = 'Hinge'">-->
					<!--<xsl:attribute name="style">display:none</xsl:attribute>-->
				<!--</xsl:if>-->
				<!--<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/reg_status != '' and /content/parameter.cludove/type = 'Hinge'">-->
					<!--<xsl:attribute name="style">display:none</xsl:attribute>-->
				<!--</xsl:if>-->
				<xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest) > 0 and count(/content/parameter.cludove/host) = 0 and /content/parameter.cludove/type = 'DB'">
					<xsl:attribute name="style">display:none</xsl:attribute>
				</xsl:if>
				<xsl:choose>
					<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.connection.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest[identifier = 'diginter.business']) > 0">
					<xsl:attribute name="style">display:none</xsl:attribute>
				</xsl:if>
				<input type="button" value="提交" class="sub" onclick="validateConnectiontemplate()"></input>
				<input type="reset" value="清除" class="res"></input>
				<input type="button" value="取消" class="but" onclick="$('#resource_setting_right').hide()"></input>
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

				<input type="hidden" id="decomposing_code">
					<xsl:attribute name="value">
						<xsl:value-of select="/content/parameter.cludove/decomposing_code"/>
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

				<input type="hidden" id="v_identifier">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
					</xsl:attribute>
				</input>
				<input type="hidden" id="v_template">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>
					</xsl:attribute>
				</input>
				<input type="hidden" id="v_instance">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/instance"/>
					</xsl:attribute>
				</input>
			</div>
			<div class="configure-fr-side-bottom" id="connection_div_btn_hide" style="display:none">
				<input type="button" value="取消" class="but" onclick="$('#resource_setting_right').hide()"></input>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
