<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_metadata_response_setting">
            <xsl:variable name="metadata_name">
                <xsl:value-of select="parameter.cludove/metadata_name"/>
            </xsl:variable>
            <p>
                <span>数据名称：</span>
                <select id="metadata_name" class="validate[required]"  style="padding-right: 18px">
                    <xsl:attribute name="onchange">onDataMetadataChange(this)</xsl:attribute>
                    <option value="">请选择元数据</option>
                    <xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest">
                        <option>
                            <xsl:attribute name="value">
                                <xsl:value-of select="name"/>
                            </xsl:attribute>
                            <xsl:value-of select="name"/>
                        </option>
                    </xsl:for-each>
                </select>
            </p>
            <div id="metadata_container">
                <xsl:text> </xsl:text>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
