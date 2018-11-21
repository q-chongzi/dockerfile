<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:template match="content">
		<div class="clearfix details">
			<div class="details-tit clearfix">
				<div class="details-tit-fl fl">
					<span class="name">
						<xsl:value-of select="/content/parameter.cludove/api_account" />
					</span>
					<span class="oper1">接口手册</span>
				</div>
				<div class="details-tit-fr fr hidden">
					<select name="" >
						<option value="">English</option>
						<option value="">Chinese</option>
					</select>
				</div>
			</div>
			<div class="details-con clearfix" style="padding: 0 20px 0 195px;">
				<div class="configure-fl fl configure-fl-2 api_fl">
					<div class="configure-fl-about" id="api_buddle">
						<xsl:attribute name="resource_name">
							<xsl:value-of select="/content/parameter.cludove/resource_name"/>
						</xsl:attribute>
						<xsl:attribute name="permission">
							<xsl:value-of select="/content/parameter.cludove/has_permission"/>
						</xsl:attribute>
						<xsl:attribute name="resource_identifier">
							<xsl:value-of select="/content/parameter.cludove/resource_identifier"/>
						</xsl:attribute>
						<xsl:attribute name="telephone">
							<xsl:value-of select="/content/parameter.cludove/telephone"/>
						</xsl:attribute>
						<xsl:attribute name="email">
							<xsl:value-of select="/content/parameter.cludove/email"/>
						</xsl:attribute>
					</div>
					<div class="configure-fl-link" id="api_catalog">
					</div>
				</div>
				<div class="configure-fl2 fr api_fr" id="api_description">
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>