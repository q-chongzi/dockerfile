<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']) > 0">
				<form style="width:320px" class="form-horizontal configure-form" role="form">
					<p>
						<span>连接名字：</span>
						<input maxlength="128" type="text" class="information_input" placeholder="为数据库或讯枢节点起一个名字，便于理解数据内容">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/name != ''">
										<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/name"/>
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
						<input class="information_input" maxlength="64" type="text" placeholder="为数据库或讯枢节点定义一个位置标识" title="资源标识用于指示讯枢需要操作的是哪个数据库或者哪个讯枢节点">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/identifier != ''">
										<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/identifier"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/identifier"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						</input>
					</p>
					<xsl:if test="parameter.cludove/type = 'Hinge' and cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/reg_status != ''">
						<p>
							<span>注册状态：</span>
							<input type="text" class="information_input">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/reg_status = 'regist'">
											<xsl:text disable-output-escaping="yes">注册</xsl:text>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/reg_status = 'work'">
											<xsl:text disable-output-escaping="yes">工作</xsl:text>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/reg_status = 'refuse'">
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
						<span>服务地址：</span>
						<input maxlength="128" type="text" class="information_input" placeholder="数据库或讯枢的服务器IP">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/host != ''">
										<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/host"/>
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
						<input maxlength="8" type="text" class="information_input" placeholder="数据库或讯枢的服务器端口">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/port != ''">
										<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/port"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/port"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						</input>
					</p>
					<p>
						<span>连接模板：</span>
						<input maxlength="50" type="text" class="information_input" placeholder="数据库连接模板或讯枢的服务链接地址">
							<xsl:attribute name="value">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/template != ''">
										<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/template"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/template"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:attribute>
						</input>
					</p>
					<xsl:if test="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/type != 'DB'">
						<p>
							<span>位置信息：</span>
							<input maxlength="128" type="text" class="information_input" placeholder="经纬度用,逗号分隔">
								<!--<xsl:if test="cludove.crest.spruce.resource_connection/record.crest/identifier != $identifier">-->
								<!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
								<!--</xsl:if>-->
								<xsl:attribute name="value">
									<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier !='diginter.business']/gps_location"/>
								</xsl:attribute>
							</input>
						</p>
					</xsl:if>
					<p>
						<span>维护电话：</span>
						<input type="text" class="information_input">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'telephone']/content"/>
							</xsl:attribute>
						</input>
					</p>
					<p>
						<span class="span_tit">维护邮箱：</span>
						<input type="text" class="information_input">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'email']/content"/>
							</xsl:attribute>
						</input>
					</p>

				</form>
			</xsl:when>
			<xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest[identifier ='diginter.business']) > 0"/>
			<xsl:otherwise>
				<div class="not_node_view"><xsl:text>没有添加该节点</xsl:text></div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
