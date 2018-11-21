<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_catalog_parameter_setting">
            <div class="item">
                <div class="title">
                    <xsl:choose>
                        <xsl:when test="count(cludove.crest.spruce.catalog_parameter/record.crest) > 0">
                            <span class="set_catalog_parameter_name">功能参数</span>
                            <span class="span_edit span_catalog_parameter_edit" title="新增功能参数">
                                <xsl:choose>
                                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'parameter.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                    <xsl:otherwise>
                                        <xsl:attribute name="style">display:none</xsl:attribute>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:attribute name="onclick">$(".set_catalog_parameter_name").html("功能参数-新增"); $(".span_catalog_parameter_edit").hide();  $('#code_catalog_parameter').val(''); $('#connection_code_catalog_parameter').val(''); $('#class_catalog_parameter').focus(); $('input:radio[name="catalog_parameter_select"]').attr('checked',false);</xsl:attribute>
                            </span>
                        </xsl:when>
                        <xsl:otherwise>
                            <span class="set_catalog_parameter_name">功能参数-新增</span>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
                <div class="div_txt">
                    <div class="list">
                        <span class="span_tit">参数名称：</span>
                        <div class="text">
                            <div class="div_input">
                                <input maxlength="128" type="text" id="catalog_parameter_paramter_name" class="validate[required,custom[validateKeyword],maxSize[128]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/parameter_name"/>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">参数长度：</span>
                        <div class="catalog_parameter_parameter_length_spinner">
                            <input maxlength="9" type="text" id="catalog_parameter_parameter_length"  class="validate[required,custom[validateInterval],max[999999999]]">
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
                    <div class="list">
                        <span class="span_tit">是否参数：</span>
                        <div class="text">
                            <input class="input_radio" value="true" type="radio" name="is_parameter" id="catalog_parameter_is_parameter_true" onclick="$('#catalog_parameter_is_parameter').val('true')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter = 'true'">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                            </input>
                            <xsl:text> 是 </xsl:text>
                            <input class="input_radio" value="false" type="radio" name="is_parameter" id="catalog_parameter_is_parameter_false" onclick="$('#catalog_parameter_is_parameter').val('false')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter = 'true'"/>
                                    <xsl:otherwise>
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </input>
                            <xsl:text> 否 </xsl:text>
                            <input id="catalog_parameter_is_parameter" type="hidden" value="false">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter != ''">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/is_parameter"/></xsl:attribute>
                                    </xsl:when>
                                </xsl:choose>
                            </input>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">是否必须：</span>
                        <div class="text">
                            <input class="input_radio" value="true" type="radio" name="is_must" id="catalog_parameter_is_must_true" onclick="$('#catalog_parameter_is_must').val('true')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_must = 'true'">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:when>
                                <xsl:otherwise/>
                                </xsl:choose>
                            </input>
                            <xsl:text> 是 </xsl:text>
                            <input class="input_radio" value="false" type="radio" name="is_must" id="catalog_parameter_is_must_false" onclick="$('#catalog_parameter_is_must').val('false')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_must = 'true'"/>
                                    <xsl:otherwise>
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </input>
                            <xsl:text> 否 </xsl:text>
                            <input id="catalog_parameter_is_must" type="hidden" value="false">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.catalog_parameter/record.crest/is_must != ''">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/is_must"/></xsl:attribute>
                                    </xsl:when>
                                </xsl:choose>
                            </input>
                        </div>
                    </div>
                    <div class="list">
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'parameter.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="span_tit"/>
                        <div class="text">
                            <div class="div_btn">
                                <a href="javascript:void(0)" onclick="processCatalogParameterSetting();">提交</a>
                                <a href="javascript:void(0)" onclick="resetData(this)">重置</a>
                                <input type="reset" style="display:none" class="reset_data"/>
                            </div>
                        </div>
                    </div>

                    <!--隐藏按钮-->
                    <input type="hidden" name="code" id="code_catalog_parameter">
                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/code"/></xsl:attribute>
                    </input>
                    <input type="hidden" name="connection_code" id="connection_code_catalog_parameter">
                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_parameter/record.crest/connection_code"/></xsl:attribute>
                    </input>
                </div>
            </div>

        </form>
    </xsl:template>
</xsl:stylesheet>
