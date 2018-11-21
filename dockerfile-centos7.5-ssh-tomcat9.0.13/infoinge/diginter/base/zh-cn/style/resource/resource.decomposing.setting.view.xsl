<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="html"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal configure-form" role="form" id="validate_resource_decomposing_setting">
			<p>
				<span>资源名字：</span>
				<input type="text" id="resource_decomposing_name" class="input-1 validate[required,maxSize[128]]" placeholder="为数据库或讯枢节点起一个名字，便于理解数据内容"><!--此处与其他input的id命名不同，小心哦-->
					<xsl:attribute name="value">
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) > 0">
								<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/name"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="cludove.crest.spruce.resource_connection[1]/record.crest/name"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
							<xsl:choose>
								<xsl:when test="/content/parameter.cludove/hinge_type != 'Colony'">
									<xsl:attribute name="disabled">disabled</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
			</p>
			<p>
				<span>资源标识：</span>
				<input type="text" id="resource_decomposing_identifier" class="input-1 validate[required,maxSize[64],custom[validateIdentifiers]]" placeholder="为数据库或讯枢节点定义一个位置标识" title="资源标识用于指示讯枢需要操作的是哪个数据库或者哪个讯枢节点">
					<xsl:attribute name="value">
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) > 0">
								<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/identifier"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="cludove.crest.spruce.resource_connection[1]/record.crest/identifier"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
							<xsl:attribute name="disabled">disabled</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
			</p>
			<p>
				<span>资源类型：</span>
				<input type="text" disabled="disabled"  id="resource_decomposing_type" class="input-1 not-clear">
					<xsl:attribute name="value">
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
					</xsl:attribute>
				</input>
			</p>
			<p>
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
						<span>驱动处理：</span>
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
				<span>服务地址：</span>
				<input type="text" id="resource_decomposing_host" class="input-1 validate[required,maxSize[128]]" placeholder="数据库或讯枢的服务器IP">
					<xsl:attribute name="value">
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) > 0">
								<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/host"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="cludove.crest.spruce.resource_connection[1]/record.crest/host"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
							<xsl:attribute name="disabled">disabled</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
			</p>
			<p>
				<span>服务端口：</span>
				<input type="text" id="resource_decomposing_port" class="input-1 validate[required,maxSize[8]]" placeholder="数据库或讯枢的服务器IP">
					<xsl:attribute name="value">
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) > 0">
								<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/port"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="cludove.crest.spruce.resource_connection[1]/record.crest/port"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
							<xsl:attribute name="disabled">disabled</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
			</p>
			<p>
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
						<span>访问账号：</span>
						<xsl:variable name="identifier">
							<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
						</xsl:variable>
						<input type="text" id="resource_decomposing_account" class="input-1 validate[maxSize[128]]" placeholder="数据库或讯枢的服务访问帐号">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/account"/>
							</xsl:attribute>
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !='' and cludove.crest.spruce.resource_decomposing[1]/record.crest/identifier = $identifier">
									<xsl:attribute name="disabled">disabled</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</input>
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
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
						<span>访问密码：</span>
						<xsl:variable name="identifier">
							<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
						</xsl:variable>
						<input id="resource_decomposing_password" class="input-1 validate[maxSize[128]]" placeholder="数据库或讯枢的服务访问密码">
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
								<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !='' and cludove.crest.spruce.resource_decomposing[1]/record.crest/identifier = $identifier" >
									<xsl:attribute name="disabled">disabled</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</input>
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
				<span>连接模板：</span>
				<input type="text" id="resource_decomposing_template" class="input-1 validate[required,maxSize[256]]" placeholder="数据库连接模板或讯枢的服务链接地址">
					<xsl:attribute name="value">
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) > 0">
								<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/template"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="cludove.crest.spruce.resource_connection[1]/record.crest/template"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.resource_decomposing[1]/record.crest/code !=''">
							<xsl:attribute name="disabled">disabled</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
			</p>
			<p>
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
						<span>方案标识：</span>
						<input maxlength="64" type="text" id="resource_decomposing_pattern" placeholder="数据库的schema名字" class="input-1 validate[required,maxSize[64]]">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
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
						<span>实例标识：</span>
						<input type="text" id="resource_decomposing_instance" class="input-1 validate[required,maxSize[64]]" placeholder="数据库的catalog名字">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
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
						<span>最大连接：</span>
						<input type="text" id="resource_decomposing_max_number" class="input-1 validate[required,min[20],maxSize[8],custom[zpositives]]" placeholder="数据库连接池大小设置">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p>
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
						<input type="text" id="resource_decomposing_timeout" class="input-1 validate[required,maxSize[8],min[20000]]" placeholder="数据库连接池超时设置">
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
					</xsl:otherwise>
				</xsl:choose>
			</p>
				<xsl:choose>
					<xsl:when test="parameter.cludove/type = 'DB'">
						<input id="resource_decomposing_is_dsb" type="hidden" value="">
						</input>
					</xsl:when>
					<xsl:otherwise>
						<input id="resource_decomposing_is_dsb" type="hidden">
							<xsl:choose>
								<xsl:when test="/content/parameter.cludove/is_dsb = 'true'">
									<xsl:attribute name="value">true</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="value">false</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</input>
					</xsl:otherwise>
				</xsl:choose>
			<p>
				<span>维护电话：</span>
				<input type="text" id="resource_decomposing_telephone" class="input-1 validate[maxSize[16],custom[phone]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'telephone']/content"/>
					</xsl:attribute>
				</input>
			</p>
			<p>
				<span class="span_tit">维护邮箱：</span>
				<input type="text" id="resource_decomposing_email" class="input-1 validate[maxSize[20],custom[email]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'email']/content"/>
					</xsl:attribute>
				</input>
			</p>
			<p style="display:none">
				<span>缓存大小：</span>
				<input type="text" class="input-1" id="resource_decomposing_buffer_pool_size">
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
			</p>
			<p style="display:none">
				<span>年库标识：</span>
				<input type="text" class="input-1" id="resource_decomposing_year_id">
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
			</p>
			<p style="display:none">
				<span>月库标识：</span>
				<input type="text" class="input-1" id="resource_decomposing_month_id">
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
			</p>
			<p style="display:none">
				<span class="span_tit">日库标识：</span>
				<input type="text" class="input-1" id="resource_decomposing_day_id">
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
			</p>
			<div class="configure-fr-side-bottom" id="decomposing_div_btn">
				<xsl:choose>
					<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.decomposing.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<!--<a href="javascript:void(0)" class="sub" onclick="validateDecomposingSetting()">提交</a>-->
				<xsl:choose>
					<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest[identifier = 'diginter.business']) > 0"/>
					<xsl:otherwise>
						<input type="button" value="提交"  class="sub" onclick="validateDecomposingSetting()"></input>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.resource_decomposing[1]/record.crest) > 0">
								<input type="reset" value="清除" class="res"></input>
							</xsl:when>
							<xsl:otherwise>
								<input type="button" value="清除" class="res" onclick="$('#validate_resource_decomposing_setting input:not(.not-clear)[type=text]').val('')"></input>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:otherwise>
				</xsl:choose>

				<input type="button" value="取消" class="but" onclick="$('#resource_setting_right').hide()"></input>
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
				<input type="hidden" id="v_identifier">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/identifier"/>
					</xsl:attribute>
				</input>
				<input type="hidden" id="v_template">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.resource_decomposing[1]/record.crest/template"/>
					</xsl:attribute>
				</input>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
