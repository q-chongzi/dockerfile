<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="selected_value">
			<xsl:value-of select="parameter.cludove/selected_value"/>
		</xsl:variable>
		<xsl:variable name="catalog_id">
			<xsl:value-of select="parameter.cludove/catalog_id"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="parameter.cludove/type = 'XML'">
				<xsl:choose>
					<xsl:when test="parameter.cludove/selectidentifier != ''">
						<select class="form_select">
							<xsl:attribute name="name"><xsl:value-of select="parameter.cludove/selectname"/></xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/selectidentifier"/></xsl:attribute>
							<xsl:if test="parameter.cludove/select_blank != ''">
								<option value="">
									<xsl:value-of select="parameter.cludove/select_blank"/>
								</option>
							</xsl:if>
							<xsl:for-each select="metadata/record.crest">
								<option>
									<xsl:if test="name = /content/parameter.cludove/selected_value">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="value"><xsl:value-of select="remark"/></xsl:attribute>
									<xsl:if test="display != ''">
										<xsl:value-of select="display"/>
										<xsl:text> | </xsl:text>
									</xsl:if>
									<xsl:value-of select="remark"/><xsl:text>.xml</xsl:text>
								</option>
							</xsl:for-each>
						</select>
					</xsl:when>
					<xsl:otherwise>
						<xsl:if test="parameter.cludove/select_blank != ''">
							<option value="">
								<xsl:value-of select="parameter.cludove/select_blank"/>
							</option>
						</xsl:if>
						<xsl:for-each select="metadata/record.crest">
							<option>
								<xsl:if test="name = /content/parameter.cludove/selected_value">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:attribute name="value"><xsl:value-of select="remark"/></xsl:attribute>
								<xsl:if test="display != ''">
									<xsl:value-of select="display"/>
									<xsl:text> | </xsl:text>
								</xsl:if>
								<xsl:value-of select="remark"/><xsl:text>.xml</xsl:text>
							</option>
						</xsl:for-each>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="parameter.cludove/selectidentifier != ''">
						<select class="form_select">
							<xsl:attribute name="name"><xsl:value-of select="parameter.cludove/selectname"/></xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/selectidentifier"/></xsl:attribute>
							<xsl:if test="parameter.cludove/select_blank != ''">
								<option value="">
									<xsl:value-of select="parameter.cludove/select_blank"/>
								</option>
							</xsl:if>
							<xsl:for-each select="metadata/record.crest">
								<option>
									<xsl:if test="name = /content/parameter.cludove/selected_value">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
									<xsl:if test="display != ''">
										<xsl:value-of select="display"/>
										<xsl:text> | </xsl:text>
									</xsl:if>
									<xsl:value-of select="name"/>
								</option>
							</xsl:for-each>
						</select>
					</xsl:when>
					<xsl:otherwise>
						<xsl:if test="parameter.cludove/select_blank != ''">
							<option value="">
								<xsl:value-of select="parameter.cludove/select_blank"/>
							</option>
						</xsl:if>
						<xsl:choose>
							<xsl:when test="count(parameter.cludove/catalog_id)>0 and parameter.cludove/connection_id = 'infoinge.cludove'">
								<xsl:for-each select="metadata/record.crest[name!=$catalog_id]">
									<option>
										<xsl:if test="name = /content/parameter.cludove/selected_value">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
										<xsl:if test="display != ''">
											<xsl:value-of select="display"/>
											<xsl:text> | </xsl:text>
										</xsl:if>
										<xsl:value-of select="name"/>
									</option>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<xsl:choose>
									<xsl:when test="parameter.cludove/type = 'Hinge' and parameter.cludove/connection_id = 'infoinge.cludove'">
										<xsl:for-each select="metadata/record.crest[name = 'exchange']">
											<option>
												<xsl:if test="name = /content/parameter.cludove/selected_value">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
												<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
												<xsl:if test="display != ''">
													<xsl:value-of select="display"/>
													<xsl:text> | </xsl:text>
												</xsl:if>
												<xsl:value-of select="name"/>
											</option>
										</xsl:for-each>
									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select="metadata/record.crest">
											<option>
												<xsl:if test="name = /content/parameter.cludove/selected_value">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
												<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
												<xsl:if test="display != ''">
													<xsl:value-of select="display"/>
													<xsl:text> | </xsl:text>
												</xsl:if>
												<xsl:value-of select="name"/>
											</option>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
