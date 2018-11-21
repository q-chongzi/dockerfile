<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_catalog_parameter_setting">
            <p class="list">
                <span style="margin-left:4px" class="span_tit">参数名称：</span>
                <input style="width:300px" maxlength="128" type="text" id="catalog_parameter_paramter_name" class="input-1 validate[required,maxSize[128],custom[validateKeyword]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/parameter_name"/>
                    </xsl:attribute>
                </input>
            </p>
            <input id="parameter_length_validate" style="width:180px;height:0px;border: 1px solid #ffffff;color:#ffffff" class="validate[required,custom[validateInterval],max[99999999999999]]">
                <xsl:attribute name="value">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/parameter_length != ''">
                            <xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/parameter_length"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>1</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </input>
            <p class="list" style="margin-top:5px">
                <div style="position: relative;margin-left:4px">
                    <span class="span_tit" style="color:#808080">参数长度：</span>
                    <div style="position: absolute;top:-8px;left:60px" class="data_position_spinner">
                        <div class="catalog_parameter_parameter_length_spinner">
                            <input style="width:100px;height:20px" maxlength="14" type="text" id="catalog_parameter_parameter_length" onblur="$('#parameter_length_validate').val(this.value)" class="input-1">
                                <xsl:attribute name="value">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/parameter_length != ''">
                                            <xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/parameter_length"/>
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
            </p>
            <p style="margin-top:22px" class="design-rad">
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <span class="span_tit">是否参数：</span>
                <input class="input_radio" value="true" type="radio" name="is_parameter" id="catalog_parameter_is_parameter_true" onclick="$('#catalog_parameter_is_parameter').val('true')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter = 'true'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <label for="catalog_parameter_is_parameter_true"> 是 </label>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <input class="input_radio" value="false" type="radio" name="is_parameter" id="catalog_parameter_is_parameter_false" onclick="$('#catalog_parameter_is_parameter').val('false')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter = 'true'"/>
                        <xsl:otherwise>
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                </input>
                <label for="catalog_parameter_is_parameter_false"> 否 </label>
                <input id="catalog_parameter_is_parameter" type="hidden" value="false">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter != ''">
                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter"/></xsl:attribute>
                        </xsl:when>
                    </xsl:choose>
                </input>
            </p>
            <p style="margin-top:18px" class="design-rad">
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <span class="span_tit">是否必须：</span>
                <input class="input_radio" value="true" type="radio" name="is_must" id="catalog_parameter_is_must_true" onclick="$('#catalog_parameter_is_must').val('true')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_must = 'true'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                    <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <label for="catalog_parameter_is_must_true"> 是 </label>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
                <input class="input_radio" value="false" type="radio" name="is_must" id="catalog_parameter_is_must_false" onclick="$('#catalog_parameter_is_must').val('false')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_must = 'true'"/>
                        <xsl:otherwise>
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                </input>
                <label for="catalog_parameter_is_must_false"> 否 </label>
                <input id="catalog_parameter_is_must" type="hidden" value="false">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_must != ''">
                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/is_must"/></xsl:attribute>
                        </xsl:when>
                    </xsl:choose>
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
                    <input type="button" href="javascript:void(0)" value="提交" class="submit_btn sub" onclick="processCatalogParameterSetting()"/>
                    <input type="reset" href="javascript:void(0)" class="res" value="清除" onclick="resetData(this);"/>
                    <input onclick="$('#parameter_setting_right').hide()" type="button" value="取消" class="but"/>
                    <input type="reset" style="display:none" class="reset_data"/>
                </p>
            </div>

            <!--隐藏按钮-->
            <input type="hidden" name="code" id="code_catalog_parameter">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/code"/></xsl:attribute>
            </input>
            <input type="hidden" name="connection_code" id="connection_code_catalog_parameter">
                <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/connection_code"/></xsl:attribute>
            </input>
        </form>
    </xsl:template>
</xsl:stylesheet>
