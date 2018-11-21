<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="right_side1 flt row ht2" style="position:absolute;right:0;top:0;width:350px">
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
                            <xsl:when test="count(cludove.crest.spruce.v_resource_relevance/record.crest) > 0">
                                <span class="set_data_name">库表关联</span>
                                <span class="span_edit span_data_edit" title="新增库表关联">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.table.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:attribute name="onclick">$(".set_data_name").html("库表关联-新增"); $(".span_data_edit").hide();$("#db_table_remove").hide(); $('#connection_code').val('');$('#r_identifier').val('');$('#r_resource_name').val(''); $('#data_name').focus();  $('input:radio[name="data_select"]').attr('checked',false);</xsl:attribute>
                                </span>
                            </xsl:when>
                            <xsl:otherwise>
                                <span class="set_data_name">库表关联-新增</span>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <div class="div_txt">
                        <div class="list" style="display:none">
                            <span class="span_tit">数据类型：</span>
                            <div class="text">
                                <input class="input_radio" value="DB" type="radio" name="type" id="data_type_db" checked="">
                                </input>
                                <xsl:text> 数据库 </xsl:text>
                                <!--<input class="input_radio" value="false" type="radio" name="type" id="data_type_class">-->
                                <!--<xsl:attribute name="onclick">$("#data_connection_id_title").text("处理类名："); $("#data_resource_name_title").text("类方法名："); $("#data_type").val("Class"); onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>-->
                                <!--<xsl:choose>-->
                                <!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Class'">-->
                                <!--<xsl:attribute name="checked">checked</xsl:attribute>-->
                                <!--</xsl:when>-->
                                <!--<xsl:otherwise/>-->
                                <!--</xsl:choose>-->
                                <!--</input>-->
                                <!--<xsl:text> 功能数据 </xsl:text>-->
                                <!--<input class="input_radio" value="false" type="radio" name="type" id="data_type_ws">-->
                                <!--<xsl:attribute name="onclick">$("#data_connection_id_title").text("处理类名："); $("#data_resource_name_title").text("类方法名："); $("#data_type").val("WS"); onProcessorSelect("data_connection_id", "WS", "请选择外部数据类", "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");</xsl:attribute>-->
                                <!--<xsl:choose>-->
                                <!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'WS'">-->
                                <!--<xsl:attribute name="checked">checked</xsl:attribute>-->
                                <!--</xsl:when>-->
                                <!--<xsl:otherwise/>-->
                                <!--</xsl:choose>-->
                                <!--</input>-->
                                <!--<xsl:text> 外部数据 </xsl:text>-->
                                <!--<br/>-->
                                <!--<input class="input_radio" value="Metadata" type="radio" name="type" id="data_type_metadata">-->
                                <!--<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("数据库表："); $("#data_type").val("Metadata"); onResourceDecomposingSelect("data_connection_id", "DB", "请选择数据库表", "identifier", "onDataTypeMetadataCheck('data_connection_id', 'connection_id_by_metadata')");</xsl:attribute>-->
                                <!--<xsl:choose>-->
                                <!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Metadata'">-->
                                <!--<xsl:attribute name="checked">checked</xsl:attribute>-->
                                <!--</xsl:when>-->
                                <!--<xsl:otherwise/>-->
                                <!--</xsl:choose>-->
                                <!--</input>-->
                                <!--<xsl:text> 数据库元数据 </xsl:text>-->
                                <!--<input class="input_radio" value="false" type="radio" name="type" id="data_type_hinge">-->
                                <!--<xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("功能目录："); $("#data_type").val("Hinge"); onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");</xsl:attribute>-->
                                <!--<xsl:choose>-->
                                <!--<xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Hinge'">-->
                                <!--<xsl:attribute name="checked">checked</xsl:attribute>-->
                                <!--</xsl:when>-->
                                <!--<xsl:otherwise/>-->
                                <!--</xsl:choose>-->
                                <!--</input>-->
                                <!--<xsl:text> 讯枢RESTFul </xsl:text>-->
                                <input id="data_type" type="hidden" value="DB">
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_connection_id_container</xsl:attribute>
                            <span class="span_tit">
                                <xsl:attribute name="id">data_connection_id_title</xsl:attribute>
                                <xsl:text>资源定义：</xsl:text>
                            </span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="data_connection_id" class="validate[required]">
                                        <xsl:attribute name="onchange">onDataConnectionIdChange()</xsl:attribute>
                                        <option value="">请选择资源定义</option>
                                        <xsl:for-each select="cludove.crest.spruce.resource_decomposing/record.crest[type = 'DB']">
                                            <option>
                                                <xsl:if test="identifier = /content/cludove.crest.spruce.v_resource_relevance/record.crest/r_identifier">
                                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                                </xsl:if>
                                                <xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
                                                <xsl:value-of select="name"/>
                                            </option>
                                        </xsl:for-each>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_resource_name_container</xsl:attribute>
                            <span class="span_tit">
                                <xsl:text>数据库表：</xsl:text>
                            </span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="data_resource_name" class="validate[required]">
                                        <xsl:attribute name="onchange">onDataResourceNameChange()</xsl:attribute>
                                        <option value="">请选择数据库表</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:choose>
                                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.table.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <div class="text">
                                <span class="span_tit"></span>
                                <div class="div_btn">
                                    <a href="javascript:void(0)" style="width:20%" onclick="processDbTableSetting()">提交</a>
                                    <a href="javascript:void(0)" style="width:20%" onclick="resetData(this)">重置</a>
                                    <xsl:if test="count(cludove.crest.spruce.v_resource_relevance/record.crest) > 0">
                                        <a href="javascript:void(0)" id="db_table_remove" style="width:20%" onclick="processDbTableRemove()">删除</a>
                                    </xsl:if>
                                    <input type="reset" style="display:none" class="reset_data"/>

                                    <!--隐藏按钮-->
                                    <input type="hidden" name="code" id="code_db">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.v_resource_relevance/record.crest/code"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" name="connection_code" id="connection_code">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.v_resource_relevance/record.crest/connection_code"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" id="connection_id_by_db">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.v_resource_relevance/record.crest/r_identifier"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" id="resource_name_by_db">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.v_resource_relevance/record.crest/r_resource_name"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" id="r_identifier">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.v_resource_relevance/record.crest/r_identifier"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" id="r_resource_name">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.v_resource_relevance/record.crest/r_resource_name"/></xsl:attribute>
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
