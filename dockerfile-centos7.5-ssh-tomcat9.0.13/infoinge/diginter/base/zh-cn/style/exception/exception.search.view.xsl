<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
		encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:variable name="verify_code">
			<xsl:value-of select="cludove.crest.spruce.data_exception/record.crest/verify_code" />
		</xsl:variable>
		<div class="configure-fr-side exception_page info_page" style="top:10px; height:432px;">
			<xsl:attribute name="title">
                <xsl:value-of
				select="cludove.crest.spruce.verify_regulation/record.crest/resource_name" />
                <xsl:text> [</xsl:text>
                <xsl:value-of
				select="cludove.crest.spruce.resource_connection/record.crest[1]/instance" />
                <xsl:text>] 的</xsl:text>
                <xsl:value-of
				select="cludove.crest.spruce.data_exception/record.crest/exception_field" />
                <xsl:text>, </xsl:text>
                <xsl:value-of
				select="cludove.crest.spruce.data_exception/record.crest/exception_content" />
                <xsl:text>不符合</xsl:text>
                <xsl:value-of
				select="cludove.crest.spruce.verify_regulation/record.crest[code = $verify_code]/regulation_name" />
            </xsl:attribute>
			<a class="close-reveal-modal" onclick="$(this).parents('#exception_page').hide()">&#215;</a>
			<form class="configure-form" role="form">
				<h2 style="height:40px; line-height:40px; font-size:16px; color:#808080">
					数据异常详情
				</h2>
				<hr style="background-color:#D6D6D6;" />
				<p>
					数据库名：
					<span>
						<xsl:attribute name="title">
                            <xsl:value-of
							select="cludove.crest.spruce.resource_connection/record.crest[1]/instance" />
                            <xsl:text>&#160;[</xsl:text>
                            <xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/connection_id" />
                            <xsl:text>]</xsl:text>
                        </xsl:attribute>
						<xsl:value-of
							select="cludove.crest.spruce.resource_connection/record.crest[1]/instance" />
						<xsl:text>&#160;[</xsl:text>
						<xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/connection_id" />
						<xsl:text>]</xsl:text>
					</span>
				</p>
				<p>
					库表名字：
					<span>
						<xsl:attribute name="title">
                            <xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/resource_name" />
                            <xsl:text>&#160;[</xsl:text>
                            <xsl:value-of
							select="cludove.crest.spruce.resource_label/record.crest/resource_label" />
                            <xsl:text>]</xsl:text>
                        </xsl:attribute>
						<xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/resource_name" />
						<xsl:text>&#160;[</xsl:text>
						<xsl:value-of
							select="cludove.crest.spruce.resource_label/record.crest/resource_label" />
						<xsl:text>]</xsl:text>
					</span>
				</p>
				<p>
					库表主键：
					<span>
						<xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/primary_field" />
					</span>
				</p>
				<p>
					主键数值：
					<span>
						<xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/primary_value" />
					</span>
				</p>
				<p class="highlight">
					异常字段：
					<span>
						<xsl:attribute name="title">
                            <xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/exception_field" />
                            <xsl:text>&#160;[</xsl:text>
                            <xsl:value-of
							select="cludove.crest.spruce.field_label/record.crest/field_label" />
                            <xsl:text>]</xsl:text>
                        </xsl:attribute>
						<xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/exception_field" />
						<xsl:text>&#160;[</xsl:text>
						<xsl:value-of
							select="cludove.crest.spruce.field_label/record.crest/field_label" />
						<xsl:text>]</xsl:text>
					</span>
				</p>
				<p class="highlight">
					验证规则：
					<span>
						<xsl:value-of
							select="cludove.crest.spruce.verify_regulation/record.crest[code = $verify_code]/regulation_name" />
					</span>
				</p>
				<p class="highlight" style="margin-top:26px;">
					异常内容：
					<textarea style="border:1px solid #eee; color:#a6a600;">
						<xsl:value-of
							select="cludove.crest.spruce.data_exception/record.crest/exception_content" />
					</textarea>
				</p>
			</form>
		</div>
	</xsl:template>
</xsl:stylesheet>
