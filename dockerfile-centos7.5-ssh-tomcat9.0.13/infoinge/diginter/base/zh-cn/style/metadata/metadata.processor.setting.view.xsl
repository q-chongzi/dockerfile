<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_processor_metadata_setting">
            <p class="list">
                <span class="span_tit">字段名称：</span>
                <input maxlength="128" disabled="disabled" type="text" id="processor_metadata_metadata_name" class="input-1 validate[required,custom[validateKeyword],maxSize[64]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.data_metadata[1]/record.crest/name"/>
                    </xsl:attribute>
                    <xsl:attribute name="oninput">
                        if($('#code_processor_metadata').val()==$('#code_processor_metadata_used').val()){
                        $('#processor_metadata_primary_name').val($(this).val());}
                    </xsl:attribute>
                </input>
            </p>
            <p class="list">
                <span class="span_tit">字段备注：</span>
                <input maxlength="128" disabled="disabled"  type="text" id="processor_metadata_remark" class="input-1 validate[maxSize[128]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.data_metadata[1]/record.crest/remark"/>
                    </xsl:attribute>
                </input>
            </p>
            <p class="list">
                <span class="span_tit">字段类型：</span>
                <input maxlength="24" disabled="disabled"  type="text" id="processor_metadata_type_view" class="input-1 validate[required,maxSize[24]]">
                    <xsl:attribute name="disabled">disabled</xsl:attribute>
                    <xsl:attribute name="value">
                        <xsl:text>字符串</xsl:text>
                    </xsl:attribute>
                </input>
                <input maxlength="24" type="hidden" id="processor_metadata_type" class="input-1 validate[required,maxSize[24]]">
                    <xsl:attribute name="value">
                        <xsl:text>String</xsl:text>
                    </xsl:attribute>
                </input>
            </p>
            <input id="metadata_length_validate" disabled="disabled"  style="width:180px;height:0px;border: 1px solid #ffffff;color:#ffffff" class="validate[required,custom[validateInterval],min[1]]">
                <xsl:attribute name="value">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.data_metadata[1]/record.crest/length != ''">
                            <xsl:value-of select="cludove.crest.spruce.data_metadata[1]/record.crest/length"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>1</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </input>
            <p class="list" style="margin-top:5px">
                <span class="span_tit">字段长度：</span>
                <input disabled="disabled"  maxlength="11" type="text" id="processor_metadata_metadata_length" onblur="$('#metadata_length_validate').val(this.value)" class="input-1">
                    <xsl:attribute name="value">
                        <xsl:choose>
                            <xsl:when test="cludove.crest.spruce.data_metadata[1]/record.crest/length != ''">
                                <xsl:value-of select="cludove.crest.spruce.data_metadata[1]/record.crest/length"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>1</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </input>
            </p>
            <p class="list">
                <span class="span_tit">主键字段：</span>
                <input maxlength="128" type="text" disabled="disabled"  id="processor_metadata_primary_name" class="input-1 validate[required,custom[validateKeyword],maxSize[64]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.data_metadata[1]/record.crest/primary_name"/>
                    </xsl:attribute>
                </input>
            </p>
            <div class="list">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'parameter.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
                <span class="span_tit"/>
                <p class="configure-fr-side-bottom">
                    <!--<input type="button" href="javascript:void(0)" value="提交" class="submit_btn sub" onclick="processProcessMetadataSetting()"/>
                    <input type="reset" href="javascript:void(0)" class="res" value="清除" onclick="resetData(this);"/>-->
                    <input onclick="$('#metadata_processor_setting_right').hide()" type="button" value="取消" class="but"/>
                    <!--<input type="reset" style="display:none" class="reset_data"/>-->
                </p>
            </div>

            <!--隐藏按钮-->
            <input type="hidden" name="code" id="code_processor_metadata">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_metadata[1]/record.crest/code"/></xsl:attribute>
            </input>
            <input type="hidden" name="connection_code" id="connection_code_data_metadata">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_metadata[1]/record.crest/connection_code"/></xsl:attribute>
            </input>
            <input type="hidden" id="code_processor_metadata_used">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_metadata[2]/record.crest/code"/></xsl:attribute>
            </input>
            <input type="hidden" id="processor_metadata_primary_name_used">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_metadata[2]/record.crest/primary_name"/></xsl:attribute>
            </input>
        </form>
    </xsl:template>
</xsl:stylesheet>
