<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div style="position:absolute;right:0;top:24%;width:350px" class="right_side1 flt row ht2">
            <form class="form-horizontal" role="form" id="validate_data_setting">
                <div class="item">
                    <div class="div_txt">
                        <xsl:attribute name="id">style_file_data_input_container</xsl:attribute>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                        <div class="list">
                            <div class="text">
                                <div class="div_input">
                                    <input type="file" id="style_file_data_input" name="style_file">
                                        <xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_data_input', '样式单文件')</xsl:attribute>
                                    </input>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="title">
                        <xsl:choose>
                            <xsl:when test="count(cludove.crest.spruce.data/record.crest) > 0">
                                <span class="set_data_name">数据映射</span>
                                <span class="span_edit span_data_edit" title="新增数据映射">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'model.data.link.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:attribute name="onclick">$(".set_data_name").html("数据映射-新增"); $(".span_data_edit").hide(); $('#code_data').val(''); $('#connection_code_data').val(''); $('#data_name').focus();  $('input:radio[name="data_select"]').attr('checked',false);$('#data_is_main').css('display','none')</xsl:attribute>
                                </span>
                            </xsl:when>
                            <xsl:otherwise>
                                <span class="set_data_name">数据映射-新增</span>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>

                    <div class="div_txt">

                        <div class="list">
                            <span class="span_tit" style="width:25%">左侧库表名：</span>
                            <div class="text">
                                <div class="div_input">
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/s_resource_name"/>
                                    <xsl:text>.</xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/s_data_code"/>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit" style="width:25%">左侧字段名：</span>
                            <div class="text">
                                <div class="div_input">
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/s_field"/>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit" style="width:25%">右侧库表名：</span>
                            <div class="text">
                                <div class="div_input">
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/r_resource_name"/>
                                    <xsl:text>.</xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/r_data_code"/>
                                </div>
                            </div>
                        </div>

                        <div class="list">
                            <span class="span_tit" style="width:25%">右侧字段名：</span>
                            <div class="text">
                                <div class="div_input">
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/r_field"/>
                                </div>
                            </div>
                        </div>


                        <div class="list">
                            <span class="span_tit" style="width:25%">是否主数据：</span>
                            <div class="text">
                                <input class="input_radio" value="true" type="radio" name="is_main" id="data_is_paginate_true" onclick="$('#data_is_main').val('true');$('#data_mapping_test_expression_container').css('display','none')">
                                    <xsl:choose>
                                        <xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) > 0">
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </input>
                                <xsl:text> 是 </xsl:text>
                                <input class="input_radio" value="false" type="radio" name="is_main" id="data_is_paginate_false" onclick="$('#data_is_main').val('false');$('#data_mapping_test_expression_container').css('display','block')">
                                    <xsl:choose>
                                        <xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) > 0"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:if test="count(cludove.crest.spruce.catalog/record.crest) > 0">
                                        <xsl:attribute name="disabled">disabled</xsl:attribute>
                                    </xsl:if>
                                </input>
                                <xsl:text> 否 </xsl:text>
                                <input id="data_is_main" type="hidden" value="true">
                                    <xsl:choose>
                                        <xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) > 0">
                                            <xsl:attribute name="value">true</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="value">false</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:if test="count(cludove.crest.spruce.catalog/record.crest) > 0">
                                        <xsl:attribute name="disabled">disabled</xsl:attribute>
                                    </xsl:if>
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_mapping_test_expression_container</xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) = 0"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display: none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit">字段条件：</span>
                            <div class="text">
                                <div class="div_textarea">
                                    <textarea id="data_mapping_test_expression" class="validate[maxSize[1024]]">
                                        <xsl:choose>
                                            <xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) = 0">
                                                <xsl:value-of select="/content/cludove.crest.spruce.data_mapping[1]/record.crest/test_expression"/>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </textarea>
                                </div>
                            </div>
                        </div>

                        <div class="list">
                            <xsl:choose>
                                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'model.data.link.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit"/>
                            <div class="text">
                                <div class="div_btn">
                                    <a href="javascript:void(0)" onclick="processLinkDataSetting()">提交</a>
                                    <a href="javascript:void(0)" onclick="resetData(this)">重置</a>
                                    <!--<a href="javascript:void(0)" style="width:30%" onclick="processModelDataRemove()">删除</a>-->
                                    <input type="reset" style="display:none" class="reset_data"/>

                                    <!--隐藏按钮-->

                                    <input type="hidden" name="code" id="code_data_mapping">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/code"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" name="connection_code" id="connection_code_data_mapping">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/connection_code"/></xsl:attribute>
                                    </input>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
