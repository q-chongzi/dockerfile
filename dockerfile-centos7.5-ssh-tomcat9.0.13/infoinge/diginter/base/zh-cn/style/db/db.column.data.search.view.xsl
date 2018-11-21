<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:variable name="location_id">
			<xsl:value-of select="parameter.cludove/connection_id"/>
			<xsl:text>.</xsl:text>
			<xsl:value-of select="parameter.cludove/resource_name"/>
		</xsl:variable>
		<xsl:for-each select="*">
			<xsl:apply-templates select=".">
				<xsl:with-param name="location_id">
					<xsl:value-of select="$location_id"/>
				</xsl:with-param>
			</xsl:apply-templates>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="*">
		<xsl:param name="location_id"/>
		<xsl:if test="@id=$location_id">
			<!--<div id="dffs" style="position:absolute;top:530px;left:320px;width:76%; height:95%; overflow:auto;overflow-y:auto;max-height:300px;">-->
				<table id="data_edit_label" style="width:100%;margin:auto;line-height:2em; text-align:center; color:#666;overflow-x: scroll;table-layout:fixed;">
					<tr>
						<xsl:for-each select="title/field">
							<th class="thth" style="border: 1px solid #EDEDED;text-align: center;width: 150px;">
								<xsl:value-of select="tag"/>
							</th>
						</xsl:for-each>
					</tr>
					<xsl:for-each select="record.crest">
						<tr class="trtr">
							<xsl:for-each select="node()">
								<td style="border: 1px solid #EDEDED;height:33px;line-height:33px;overflow: hidden;text-overflow:ellipsis;position:static;white-space:nowrap" onmouseover="this.style='word-break:break-all;border: 1px solid #EDEDED;'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap;border: 1px solid #EDEDED;'">
									<xsl:attribute name="title"><xsl:value-of select="." /></xsl:attribute>
									<xsl:attribute name="position">
										<xsl:value-of select="position()"/>
									</xsl:attribute>
									<xsl:value-of select="."/>
								</td>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
				</table>
			<!--</div>-->
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
