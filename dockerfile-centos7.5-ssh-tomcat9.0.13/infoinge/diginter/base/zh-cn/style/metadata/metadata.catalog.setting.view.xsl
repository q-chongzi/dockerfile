<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_catalog_metadata_setting">
            <p class="list">
                <span class="span_tit">字段名称：</span>
                <input maxlength="64" type="text" id="catalog_metadata_metadata_name" class="input-1 validate[required,maxSize[64],custom[upperOrNumber]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest/name"/>
                    </xsl:attribute>
                </input>
            </p>
            <p class="list">
                <span class="span_tit">字段备注：</span>
                <input maxlength="128" type="text" id="catalog_metadata_remark" class="input-1 validate[maxSize[128]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest/remark"/>
                    </xsl:attribute>
                </input>
            </p>
            <p class="list">
                <span class="span_tit">字段类型：</span>
                <input maxlength="24" type="text" id="catalog_metadata_type" disabled="disabled" class="input-1 validate[required,maxSize[24]]">
                    <xsl:attribute name="value">
                        <xsl:text>字符串</xsl:text>
                    </xsl:attribute>
                </input>
            </p>
            <input id="metadata_length_validate" style="width:180px;height:0px;border: 1px solid #ffffff;color:#ffffff" value="1" class="validate[required,custom[zpositives],min[1]]">
            </input>
            <div class="list" style="margin-top:5px;margin-bottom:15px;color:#808080">
                <span class="span_tit">字段长度：</span>
                <div style="display:inline-block" class="data_position_spinner">
                    <div class="catalog_metadata_metadata_length_spinner">
                        <input style="width:350px;height:20px;" maxlength="14" type="text" id="catalog_metadata_metadata_length" onblur="$('#metadata_length_validate').val(this.value)" class="input-1 validate[required,custom[zpositives],min[1]]">
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.data_metadata/record.crest/length != ''">
                                        <xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest/length"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>1</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                        </input>
                    </div>
                </div>
            </div>
            <p class="list">
                <span class="span_tit">主键字段：</span>
                <input maxlength="64" type="text" id="catalog_metadata_primary_name" class="input-1 validate[required,maxSize[64]],custom[upperOrNumber]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest/primary_name"/>
                    </xsl:attribute>
                </input>
            </p>
            <div class="list">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'metadata.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
                <span class="span_tit"/>
                <p class="configure-fr-side-bottom">
                    <input id="metadata_submit" type="button" href="javascript:void(0)" value="提交" class="submit_btn sub" onclick="processCatalogMetadataSetting()"/>
                    <input id="metadata_cancel" type="reset" href="javascript:void(0)" class="res" value="清除" onclick="resetData(this);"/>
                    <input onclick="$('#metadata_setting_right').hide()" type="button" value="取消" class="but"/>
                    <input type="reset" style="display:none" class="reset_data"/>
                </p>
            </div>

            <!--隐藏按钮-->
            <input type="hidden" name="code" id="code_catalog_metadata">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest/code"/></xsl:attribute>
            </input>
            <input type="hidden" name="connection_code" id="connection_code_data-metadata">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest/connection_code"/></xsl:attribute>
            </input>
        </form>
    </xsl:template>
</xsl:stylesheet>
