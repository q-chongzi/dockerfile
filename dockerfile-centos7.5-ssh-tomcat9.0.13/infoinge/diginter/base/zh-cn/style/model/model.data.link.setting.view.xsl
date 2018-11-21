<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <div class="design-side-tit">
            <p>提示1：需删除数据映射关系时， 点击键盘←回退按钮完成操作</p>
            <p>提示2：请尽量选择类型相同的字段之间建立映射关系，映射时按下鼠标滑轮可上下移动</p>
        </div>
        <div class="design-side-tit" id="prompt_content" style="display:none;color:#000000">
            <span class="span_tit">错误提示：</span>
            <div class="text">
                <div style="font-weight:bold;text-decoration:none" id="prompt_content_show"></div>
            </div>
        </div>
        <!--<div style="position:absolute;right:0;top:24%;width:350px" class="right_side1 flt row ht2">-->
            <!--<form class="form-horizontal" role="form" id="validate_data_link_setting">-->
                <div class="item">
                    <div class="div_txt">
                        <xsl:attribute name="id">style_file_data_input_container</xsl:attribute>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                        <input type="file" id="style_file_data_input" name="style_file">
                            <xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_data_input', '样式单文件')</xsl:attribute>
                        </input>
                    </div>
                    <br/><br/>
                    <div class="title">
                        <span class="set_data_name">数据映射 - 设置</span>
                    </div>
                    <br/><br/>
                    <xsl:variable name="count">
                        <xsl:value-of select="count(cludove.crest.spruce.data_mapping[3]/record.crest)"/>
                    </xsl:variable>
                    <input type="hidden" id="position_count">
                        <xsl:attribute name="value">
                            <xsl:value-of select="$count"/>
                        </xsl:attribute>
                    </input>
                    <xsl:for-each select="cludove.crest.spruce.data_mapping[3]/record.crest">
                        <xsl:sort data-type="number" select="position"/>
                        <div class="div_list">
                            <xsl:attribute name="data-code">
                                <xsl:value-of select="code"/>
                            </xsl:attribute>
                            <xsl:attribute name="data-position">
                                <xsl:value-of select="position"/>
                            </xsl:attribute>
                            <xsl:attribute name="position">
                                <xsl:value-of select="position()"/>
                            </xsl:attribute>
                            <xsl:variable name="s_data_code">
                                <xsl:value-of select="s_data_code"/>
                            </xsl:variable>
                            <xsl:variable name="s_identifier">
                                <xsl:value-of select="s_identifier"/>
                            </xsl:variable>
                            <xsl:variable name="s_resource_name">
                                <xsl:value-of select="translate(s_resource_name,$uppercase,$smallcase)"/>
                            </xsl:variable>
                            <xsl:choose>
                                <xsl:when test="$count = 1">
                                </xsl:when>
                                <xsl:when test="position() = 1">
                                    <a href="javascript:void(0)" title="调整该字段的数据的处理顺序" position-type="up" style="display:none" class="position-up" onclick="onChangePosition(this)">
                                        <img src="diginter/base/zh-cn/img/icon-up.png"/>
                                    </a>
                                    <a href="javascript:void(0)" title="调整该字段的数据的处理顺序" position-type="down" class="position-down" onclick="onChangePosition(this)">
                                        <img src="diginter/base/zh-cn/img/icon-down.png"/>
                                    </a>
                                </xsl:when>
                                <xsl:when test="position() = $count">
                                    <a href="javascript:void(0)" title="调整该字段的数据的处理顺序" position-type="up" class="position-up" onclick="onChangePosition(this)">
                                        <img src="diginter/base/zh-cn/img/icon-up.png"/>
                                    </a>
                                    <a href="javascript:void(0)" title="调整该字段的数据的处理顺序" position-type="down" style="display:none" class="position-down" onclick="onChangePosition(this)">
                                        <img src="diginter/base/zh-cn/img/icon-down.png"/>
                                    </a>
                                </xsl:when>
                                <xsl:otherwise>
                                    <a href="javascript:void(0)" title="调整该字段的数据的处理顺序" position-type="up" class="position-up" onclick="onChangePosition(this)">
                                        <img src="diginter/base/zh-cn/img/icon-up.png"/>
                                    </a>
                                    <a href="javascript:void(0)" title="调整该字段的数据的处理顺序" position-type="down" class="position-down" onclick="onChangePosition(this)">
                                        <img src="diginter/base/zh-cn/img/icon-down.png"/>
                                    </a>
                                </xsl:otherwise>
                            </xsl:choose>
                            <p style="padding-top:10px;padding-left:10px">交换资源
                                <xsl:choose>
                                    <xsl:when test="$s_data_code = 'catalog.response'">
                                        <xsl:text>[</xsl:text>
                                        <xsl:value-of select="buddle_id"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select="catalog_id"/>
                                        <xsl:text>]</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest[identifier=$s_identifier]) = 0"/>
                                    <xsl:otherwise>
                                        <xsl:text>[</xsl:text>
                                        <xsl:value-of select="/content/cludove.crest.spruce.resource_connection/record.crest[identifier=$s_identifier]/identifier"/>
                                        <xsl:text> - </xsl:text>
                                        <xsl:value-of select="/content/cludove.crest.spruce.resource_connection/record.crest[identifier=$s_identifier]/name"/>
                                        <xsl:text>]</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </p>
                            <div style="padding-left:30px">
                                <div class="list">
                                    <div  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;'" onmouseover="this.style='word-break:break-all;'" class="link-input" style="overflow: hidden; text-overflow: ellipsis;">
                                        <xsl:choose>
                                            <xsl:when test="s_resource_name != ''">
                                                <xsl:value-of select="s_resource_name"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="s_identifier"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:text>.</xsl:text>
                                        <xsl:value-of select="s_data_code"/>
                                        <xsl:text>[</xsl:text>
                                        <xsl:value-of select="/content/cludove.crest.spruce.resource_label/record.crest[identifier = $s_identifier and resource_name = $s_resource_name]/resource_label"/>
                                        <xsl:text>]</xsl:text>
                                    </div>
                                    <span style="width:25%;color:#808080">交换数据：</span>
                                </div>
                                <div class="list" style="position:relative">
                                    <div  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;'" onmouseover="this.style='word-break:break-all;'" class="link-input" style="overflow: hidden; text-overflow: ellipsis;">
                                        <xsl:value-of select="s_field"/>
                                        <xsl:text>[</xsl:text>
                                        <xsl:value-of select="/content/cludove.crest.spruce.field_label/record.crest[identifier = $s_identifier and resource_name = $s_resource_name]/field_label"/>
                                        <xsl:text>]</xsl:text>
                                    </div>
                                    <!--<a href="javascript:void(0)" style="position:absolute;right:10px" onclick="fieldVerifyDisplay()">-->
                                        <!--<xsl:attribute name="onclick">fieldVerifyDisplay('<xsl:value-of select="s_data_code"/>','<xsl:value-of select="s_field"/>','<xsl:value-of select="s_resource_name"/>')</xsl:attribute>-->
                                        <!--<img src="diginter/base/zh-cn/img/icon-validate.png"/></a>-->
                                    <span style="width:25%;color:#808080">交换字段：</span>
                                </div>
                            </div>
                            <div style="display:none" class="configure-fr">
                                <xsl:attribute name="data_code"><xsl:value-of select="s_data_code"/></xsl:attribute>
                                <xsl:attribute name="table_name"><xsl:value-of select="s_resource_name"/></xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="s_data_code"/>_<xsl:value-of select="s_field"/></xsl:attribute>
                                <div style="width:438px;">
                                    <div>
                                        <xsl:attribute name="id"><xsl:value-of select="s_data_code"/>_<xsl:value-of select="s_field" />_verify_search</xsl:attribute>
                                    </div>
                                    <div class="configure-fr-side" style="position: static;display:none; border: 3px solid rgb(92, 185, 248);border-top:none;width:100%;height:180px;">
                                        <xsl:attribute name="id"><xsl:value-of select="s_data_code"/>_<xsl:value-of select="s_field" />_verify_setting</xsl:attribute>
                                    </div>
                                </div>
                            </div>
                            <p class="left-padding">
                                <span>前置符号：</span>
                                <input class="input-1 input-width" maxlength="256" placeholder="请输入前置符号">
                                    <xsl:attribute name="id"><xsl:value-of select="code"/>_data_mapping_prefix_symbol</xsl:attribute>
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="prefix_symbol"/>
                                    </xsl:attribute>
                                </input>
                            </p>

                            <p class="left-padding">
                                <span>后置符号：</span>
                                <input class="input-1 input-width" maxlength="256" placeholder="请输入后置符号">
                                    <xsl:attribute name="id"><xsl:value-of select="code"/>_data_mapping_suffix_symbol</xsl:attribute>
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="suffix_symbol"/>
                                    </xsl:attribute>
                                </input>
                            </p>

                            <p class="left-padding">
                                <xsl:if test="position() = 1">
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:if>
                                <span>运算符号：</span>
                                <select class="input-width" style="padding-left:10px">
                                    <xsl:attribute name="id"><xsl:value-of select="code"/>_data_mapping_operation</xsl:attribute>
                                    <option value="string_add">
                                        <xsl:if test="operation = 'string_add'">
                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                        </xsl:if>
                                        <xsl:text>字符串拼接</xsl:text>
                                    </option>
                                    <option value="string_sub">
                                        <xsl:if test="operation = 'string_sub'">
                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                        </xsl:if>
                                        <xsl:text>字符串截取</xsl:text>
                                    </option>
                                    <option value="number_add">
                                        <xsl:if test="operation = 'number_add'">
                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                        </xsl:if>
                                        <xsl:text>数字加法</xsl:text>
                                    </option>
                                    <option value="number_sub">
                                        <xsl:if test="operation = 'number_sub'">
                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                        </xsl:if>
                                        <xsl:text>数字减法</xsl:text>
                                    </option>
                                    <option value="number_mul">
                                        <xsl:if test="operation = 'number_mul'">
                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                        </xsl:if>
                                        <xsl:text>数字乘法</xsl:text>
                                    </option>
                                    <option value="number_div">
                                        <xsl:if test="operation = 'number_div'">
                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                        </xsl:if>
                                        <xsl:text>数字除法</xsl:text>
                                    </option>
                                </select>
                            </p>
                            <div class="configure-fr-side-bottom">
                                <input type="button" style="margin:10px 10px" href="javascript:void(0)" value="提交" class="submit_btn sub">
                                    <xsl:attribute name="onclick">processLinkDataSetting('<xsl:value-of select="code"/>')</xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </xsl:for-each>
                    <div style="border:1px solid #eee;margin-bottom:10px;position: relative;">
                        <xsl:variable name="r_data_code">
                            <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_data_code"/>
                        </xsl:variable>
                        <xsl:variable name="r_identifier">
                            <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_identifier"/>
                        </xsl:variable>
                        <xsl:variable name="r_resource_name">
                            <xsl:value-of select="translate(cludove.crest.spruce.data_mapping[1]/record.crest/r_resource_name,$uppercase,$smallcase)"/>
                        </xsl:variable>
                        <p style="padding-top:10px;padding-left:10px">融合资源
                            <xsl:choose>
                                <xsl:when test="$r_data_code = 'catalog.response'">
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/buddle_id"/>
                                    <xsl:text> - </xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/catalog_id"/>
                                    <xsl:text>]</xsl:text>
                                </xsl:when>
                                <xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest[identifier=$r_identifier]) = 0"/>
                                <xsl:otherwise>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier=$r_identifier]/identifier"/>
                                    <xsl:text> - </xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier=$r_identifier]/name"/>
                                    <xsl:text>]</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </p>
                        <div style="padding-left:30px">
                            <div class="list">
                                <div  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;'" onmouseover="this.style='word-break:break-all;'" class="link-input" style="overflow: hidden; text-overflow: ellipsis;">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data_mapping[1]/record.crest/r_resource_name != ''">
                                            <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_resource_name"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_identifier"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:text>.</xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_data_code"/>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.resource_label/record.crest[identifier = $r_identifier and resource_name = $r_resource_name]/resource_label"/>
                                    <xsl:text>]</xsl:text>
                                </div>
                                <span style="width:25%;color:#808080">融合数据：</span>
                            </div>
                            <div class="list" style="position:relative">
                                <div  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;'" onmouseover="this.style='word-break:break-all;'" class="link-input" style="overflow: hidden; text-overflow: ellipsis;">
                                    <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_field"/>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.field_label/record.crest[identifier = $r_identifier and resource_name = $r_resource_name]/field_label"/>
                                    <xsl:text>]</xsl:text>
                                </div>
                                <xsl:choose>
                                    <xsl:when test="/content/parameter.cludove/is_validate = 'true'">
                                        <a href="javascript:void(0)" title="添加验证规则和清洗规则" style="position:absolute;right:10px">
                                            <xsl:attribute name="onclick">fieldVerifyDisplay('<xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_data_code"/>','<xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_field"/>','<xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_resource_name"/>')</xsl:attribute>
                                            <img src="diginter/base/zh-cn/img/icon-validate.png"/></a>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                                <span style="width:25%;color:#808080">融合字段：</span>
                            </div>
                        </div>
                        <div style="display:none" class="configure-fr">
                            <xsl:attribute name="data_code"><xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_data_code"/></xsl:attribute>
                            <xsl:attribute name="table_name"><xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_resource_name"/></xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_data_code"/>_<xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_field"/></xsl:attribute>
                            <div style="width:438px;">
                                <div>
                                    <xsl:attribute name="id"><xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_data_code"/>_<xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_field"/>_verify_search</xsl:attribute>
                                </div>
                                <div class="configure-fr-side" style="position: static;display:none; border: 3px solid rgb(92, 185, 248);border-top:none;width:100%;height:180px;">
                                    <xsl:attribute name="id"><xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_data_code"/>_<xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_field" />_verify_setting</xsl:attribute>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!--<p class="design-rad">-->
                        <!--<span class="span_tit" style="width:25%">是否主数据：</span>-->
                        <!--<input class="input_radio" value="true" type="radio" name="is_main" id="data_is_paginate_true" onclick="$('#data_is_main').val('true');$('#data_mapping_test_expression_container').css('display','none')">-->
                            <!--<xsl:choose>-->
                                <!--<xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) > 0">-->
                                    <!--<xsl:attribute name="checked">checked</xsl:attribute>-->
                                <!--</xsl:when>-->
                                <!--<xsl:otherwise/>-->
                            <!--</xsl:choose>-->
                            <!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
                        <!--</input>-->
                        <!--<label for="data_is_paginate_true"> 是 </label>-->
                        <!--<input class="input_radio" value="false" type="radio" name="is_main" id="data_is_paginate_false" onclick="$('#data_is_main').val('false');$('#data_mapping_test_expression_container').css('display','block')">-->
                            <!--<xsl:choose>-->
                                <!--<xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) > 0"/>-->
                                <!--<xsl:otherwise>-->
                                    <!--<xsl:attribute name="checked">checked</xsl:attribute>-->
                                <!--</xsl:otherwise>-->
                            <!--</xsl:choose>-->
                                <!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
                        <!--</input>-->
                        <!--<label for="data_is_paginate_false"> 否 </label>-->
                        <!--<input id="data_is_main" type="hidden" value="true">-->
                            <!--<xsl:choose>-->
                                <!--<xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) > 0">-->
                                    <!--<xsl:attribute name="value">true</xsl:attribute>-->
                                <!--</xsl:when>-->
                                <!--<xsl:otherwise>-->
                                    <!--<xsl:attribute name="value">false</xsl:attribute>-->
                                <!--</xsl:otherwise>-->
                            <!--</xsl:choose>-->
                        <!--</input>-->
                    <!--</p>-->
                    <!--<p class="list">-->
                        <!--<xsl:attribute name="id">data_mapping_test_expression_container</xsl:attribute>-->
                        <!--<xsl:choose>-->
                            <!--<xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) = 0"/>-->
                            <!--<xsl:otherwise>-->
                                <!--<xsl:attribute name="style">display: none</xsl:attribute>-->
                            <!--</xsl:otherwise>-->
                        <!--</xsl:choose>-->
                        <!--<span class="span_tit">字段条件：</span>-->
                        <!--<textarea id="data_mapping_test_expression" class="validate[maxSize[1024]]">-->
                            <!--<xsl:choose>-->
                                <!--<xsl:when test="count(cludove.crest.spruce.data_mapping[2]/record.crest) = 0">-->
                                    <!--<xsl:value-of select="/content/cludove.crest.spruce.data_mapping[1]/record.crest/test_expression"/>-->
                                <!--</xsl:when>-->
                                <!--<xsl:otherwise/>-->
                            <!--</xsl:choose>-->
                        <!--</textarea>-->
                    <!--</p>-->


                    <div class="list">
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'model.data.link.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="span_tit"/>
                        <p class="configure-fr-side-bottom">
                            <!--<input type="button" href="javascript:void(0)" value="提交" class="submit_btn sub" onclick="processLinkDataSetting()"/>-->
                            <!--<input type="reset" href="javascript:void(0)" class="res" value="清除" onclick="resetData(this);"/>-->
                            <input type="button" href="javascript:void(0)" class="but" value="返回" onclick="model.showModelDataSetting('','');"/>
                            <input type="reset" style="display:none" class="reset_data"/>
                        </p>
                        <!--隐藏按钮-->
                        <xsl:variable name="r_identifier">
                            <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/r_identifier"/>
                        </xsl:variable>
                        <input type="hidden" name="code" id="code_data_mapping">
                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/code"/></xsl:attribute>
                        </input>
                        <input type="hidden" name="connection_code" id="connection_code_data_mapping">
                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/connection_code"/></xsl:attribute>
                        </input>
                        <input type="hidden" name="column_field_label_identifier" id="column_field_label_identifier">
                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[identifier=$r_identifier]/identifier"/></xsl:attribute>
                        </input>

                    </div>
                </div>
            <!--</form>-->
        <!--</div>-->
    </xsl:template>
</xsl:stylesheet>
