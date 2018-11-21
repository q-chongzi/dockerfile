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
                            <xsl:when test="count(cludove.crest.spruce.data/record.crest) > 0">
                                <span class="set_data_name">目录数据</span>
                                <span class="span_edit span_data_edit" title="新增目录数据">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:attribute name="onclick">$(".set_data_name").html("目录数据-新增"); $(".span_data_edit").hide(); $('#code_data').val(''); $('#connection_code_data').val(''); $('#data_name').focus();  $('input:radio[name="data_select"]').attr('checked',false);$("#exchange_resource_name").val('')</xsl:attribute>
                                </span>
                            </xsl:when>
                            <xsl:otherwise>
                                <span class="set_data_name">目录数据-新增</span>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <div class="div_txt">
                        <div class="list">
                            <span class="span_tit">数据名字：</span>
                            <div class="text">
                                <div class="div_input">
                                    <input type="text" id="data_name" placeholder="数据名字被用于权限分组，同组权限名字一致" class="validate[required,maxSize[128]]">
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
                                        </xsl:attribute>
                                    </input>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit">数据类型：</span>
                            <div class="text">
                                <input class="input_radio" value="true" type="radio" name="type" id="data_type_db" checked="">
                                    <xsl:attribute name="onclick">$("#data_connection_id_title").text("资源定义："); $("#data_resource_name_title").text("数据库表："); $("#data_type").val("DB"); onResourceDecomposingSelect("data_connection_id", "DB", "请选择数据库表", "identifier", "onDataTypeDbCheck('data_connection_id', 'connection_id_by_db')");</xsl:attribute>
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Hinge' or cludove.crest.spruce.data/record.crest/type = 'WS' or cludove.crest.spruce.data/record.crest/type = 'Class' or cludove.crest.spruce.data/record.crest/type = 'Metadata'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
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
                                <input id="data_type" type="hidden">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/type != ''">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/type"/></xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="value">DB</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_connection_id_container</xsl:attribute>
                            <span class="span_tit">
                                <xsl:attribute name="id">data_connection_id_title</xsl:attribute>
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.data/record.crest/type = 'WS' or cludove.crest.spruce.data/record.crest/type = 'Class'">
                                        <xsl:text>处理类名：</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>资源定义：</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="data_connection_id" class="validate[required]">
                                        <xsl:attribute name="onchange">onDataConnectionIdChange()</xsl:attribute>
                                        <option value="">请选择资源定义</option>
                                        <xsl:choose>
                                            <xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Class' or cludove.crest.spruce.data/record.crest/type = 'WS'">
                                                <xsl:for-each select="cludove.crest.spruce.processor/record.crest">
                                                    <option>
                                                        <xsl:if test="class = /content/cludove.crest.spruce.data/record.crest/connection_id">
                                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                                        </xsl:if>
                                                        <xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
                                                        <xsl:value-of select="name"/>
                                                    </option>
                                                </xsl:for-each>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:for-each select="cludove.crest.spruce.resource_decomposing/record.crest">
                                                    <option>
                                                        <xsl:if test="identifier = /content/cludove.crest.spruce.data/record.crest/connection_id">
                                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                                        </xsl:if>
                                                        <xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
                                                        <xsl:value-of select="name"/>
                                                    </option>
                                                </xsl:for-each>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_resource_buddle_container</xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Hinge'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display: none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit">
                                <xsl:text>应用标识：</xsl:text>
                            </span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="data_resource_buddle">
                                        <xsl:attribute name="onchange">onDataResourceBuddleChange()</xsl:attribute>
                                        <option value="">请选择应用标识</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_resource_name_container</xsl:attribute>
                            <span class="span_tit">
                                <xsl:attribute name="id">data_resource_name_title</xsl:attribute>
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.data/record.crest/type = 'WS' or cludove.crest.spruce.data/record.crest/type = 'Class'">
                                        <xsl:text>类方法名：</xsl:text>
                                    </xsl:when>
                                    <xsl:when test="cludove.crest.spruce.data/record.crest/type = 'Hinge'">
                                        <xsl:text>功能目录：</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text>数据库表：</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="data_resource_name">
                                        <xsl:attribute name="onchange">onDataResourceNameChange()</xsl:attribute>
                                        <option value="">请选择数据库表</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_operation_container</xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="count(cludove.crest.spruce.data/record.crest) = 0 or cludove.crest.spruce.data/record.crest/type = 'DB'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display: none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit">操作名字：</span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="data_operation">
                                        <xsl:attribute name="onchange">onDataOperationChange()</xsl:attribute>
                                        <option value="search">
                                            <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'search'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>查询</xsl:text>
                                        </option>
                                        <option value="build">
                                            <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'build'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>保存</xsl:text>
                                        </option>
                                        <option value="modify">
                                            <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'modify'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>修改</xsl:text>
                                        </option>
                                        <option value="remove">
                                            <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'remove'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>停用</xsl:text>
                                        </option>
                                        <option value="migrate">
                                            <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'migrate'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>迁移</xsl:text>
                                        </option>
                                        <option value="synchronize">
                                            <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'synchronize'">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:text>同步</xsl:text>
                                        </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_is_paginate_container</xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="count(cludove.crest.spruce.data/record.crest) = 0 or cludove.crest.spruce.data/record.crest/type = 'DB'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display: none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit">是否分页：</span>
                            <div class="text">
                                <input class="input_radio" value="true" type="radio" name="is_paginate" id="data_is_paginate_true" onclick="$('#data_is_paginate').val('true')">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_paginate = 'true'">
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </input>
                                <xsl:text> 是 </xsl:text>
                                <input class="input_radio" value="false" type="radio" name="is_paginate" id="data_is_paginate_false" onclick="$('#data_is_paginate').val('false')">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_paginate = 'true'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </input>
                                <xsl:text> 否 </xsl:text>
                                <input id="data_is_paginate" type="hidden" value="true">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_paginate != ''">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/is_paginate"/></xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="value">false</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_is_permit_container</xsl:attribute>
                            <span class="span_tit">权限判断：</span>
                            <div class="text">
                                <input class="input_radio" value="true" type="radio" name="is_permit" id="data_is_permit_true" onclick="$('#data_is_permit').val('true')">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_permit = 'false'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </input>
                                <xsl:text> 是 </xsl:text>
                                <input class="input_radio" value="false" type="radio" name="is_permit" id="data_is_permit_false" onclick="$('#data_is_permit').val('false')">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_permit = 'false'">
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:when>
                                    </xsl:choose>
                                </input>
                                <xsl:text> 否 </xsl:text>
                                <input id="data_is_permit" type="hidden" value="true">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_permit != ''">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/is_permit"/></xsl:attribute>
                                        </xsl:when>
                                    </xsl:choose>
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit">处理顺序：</span>
                            <div class="data_position_spinner">
                                <input type="text" id="data_position">
                                    <xsl:attribute name="value">
                                        <xsl:choose>
                                            <xsl:when test="cludove.crest.spruce.data/record.crest/position != ''">
                                                <xsl:value-of select="cludove.crest.spruce.data/record.crest/position"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:text>0</xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_row_number_container</xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="count(cludove.crest.spruce.data/record.crest) = 0 or cludove.crest.spruce.data/record.crest/type = 'DB'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display: none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit">数据行数：</span>
                            <div class="data_row_number_spinner">
                                <input type="text" id="data_row_number" class="validate[integer,maxSize[3]]">
                                    <xsl:attribute name="value">
                                        <xsl:choose>
                                            <xsl:when test="cludove.crest.spruce.data/record.crest/row_number != ''">
                                                <xsl:value-of select="cludove.crest.spruce.data/record.crest/row_number"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:text>0</xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:attribute name="id">data_uniques_container</xsl:attribute>
                            <xsl:choose>
                                <xsl:when test="count(cludove.crest.spruce.data/record.crest) = 0 or cludove.crest.spruce.data/record.crest/type = 'DB'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display: none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit">唯一描述：</span>
                            <div class="text">
                                <div class="div_input">
                                    <input type="text" id="data_uniques" placeholder="多数情况下是指主键字段，保持大写，可为空" class="validate[maxSize[128]]">
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="cludove.crest.spruce.data/record.crest/uniques"/>
                                        </xsl:attribute>
                                    </input>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit">循环取值：</span>
                            <div class="text">
                                <input class="input_radio" value="true" type="radio" name="is_for_each" id="data_is_for_each_true" onclick="$('#data_is_for_each').val('true')">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_for_each = 'true'">
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </input>
                                <xsl:text> 是 </xsl:text>
                                <input class="input_radio" value="false" type="radio" name="is_for_each" id="data_is_for_each_false" onclick="$('#data_is_for_each').val('false')">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_for_each = 'true'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="checked">checked</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </input>
                                <xsl:text> 否 </xsl:text>
                                <input id="data_is_for_each" type="hidden" value="true">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/is_for_each != ''">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/is_for_each"/></xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="value">false</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </input>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit">选取条件：</span>
                            <div class="text">
                                <div class="div_textarea">
                                    <textarea id="data_select_expression" placeholder="xsl:for-cach输出目录数据，循环取值为是时不能为空" title="与循环取值配合使用，循环取值为是时生效，用于循环输出数据取值、执行条件，用在数据参数、查询条件、数据排序、数据分组上仅会取第一条输出" class="validate[maxSize[1024]]">
                                        <xsl:choose>
                                            <xsl:when test="cludove.crest.spruce.data/record.crest/select_expression != ''">
                                                <xsl:value-of select="cludove.crest.spruce.data/record.crest/select_expression"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:text disable-output-escaping="no"> </xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </textarea>
                                </div>
                            </div>
                        </div>
                        <div>
                            <xsl:attribute name="id">data_exchange_container</xsl:attribute>
                            <xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest) = 0">
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:if>
                            <div class="list">
                                <xsl:attribute name="id">data_migr_field_container</xsl:attribute>
                                <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'synchronize'">
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:if>
                                <div>
                                    <span class="span_tit">迁移字段：</span>
                                    <div class="text">
                                        <div class="div_select">
                                            <select id="data_migr_field">
                                                <option value="">请选择迁移字段</option>
                                                <xsl:for-each select="metadata/record.crest">
                                                    <option>
                                                        <xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/migr_field">
                                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                                        </xsl:if>
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="name"/>
                                                        </xsl:attribute>
                                                        <xsl:value-of select="name"/>
                                                    </option>
                                                </xsl:for-each>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="list">
                                <xsl:attribute name="id">data_sync_field_container</xsl:attribute>
                                <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'migrate'">
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:if>
                                <div>
                                    <span class="span_tit">同步字段：</span>
                                    <div class="text">
                                        <div class="div_select">
                                            <select id="data_sync_field">
                                                <option value="">请选择同步字段</option>
                                                <xsl:for-each select="metadata/record.crest">
                                                    <option>
                                                        <xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/sync_field">
                                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                                        </xsl:if>
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="name"/>
                                                        </xsl:attribute>
                                                        <xsl:value-of select="name"/>
                                                    </option>
                                                </xsl:for-each>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="list">
                                <xsl:attribute name="id">data_sync_time_container</xsl:attribute>
                                <xsl:if test="cludove.crest.spruce.data/record.crest/operation = 'migrate'">
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:if>
                                <div>
                                    <span class="span_tit">同步时间：</span>
                                    <div class="text">
                                        <div class="div_select">
                                            <select id="data_sync_time_field">
                                                <option value="">请选择同步时间</option>
                                                <xsl:for-each select="metadata/record.crest">
                                                    <option>
                                                        <xsl:if test="name = /content/cludove.crest.spruce.data_exchange/record.crest/sync_time_field">
                                                            <xsl:attribute name="selected">selected</xsl:attribute>
                                                        </xsl:if>
                                                        <xsl:attribute name="value">
                                                            <xsl:value-of select="name"/>
                                                        </xsl:attribute>
                                                        <xsl:value-of select="name"/>
                                                    </option>
                                                </xsl:for-each>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <xsl:choose>
                                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <div class="text">
                                <span class="span_tit"></span>
                                <div class="div_btn">
                                    <a href="javascript:void(0)" style="width:20%" id="buttonExchangeDataSetting" onclick="processExchangeDataSetting()">提交</a>
                                    <a href="javascript:void(0)" style="width:20%" onclick="resetData(this)">重置</a>
                                    <a href="javascript:void(0)" style="width:20%" onclick="processExchangeDataRemove()">删除</a>
                                    <input type="reset" style="display:none" id="reset_data"/>

                                    <!--隐藏按钮-->
                                    <input type="hidden" name="code" id="code_data">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/code"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" name="connection_code" id="connection_code_data">
                                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_code"/></xsl:attribute>
                                    </input>
                                    <input type="hidden" id="connection_id_by_db">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'DB'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="resource_name_by_db">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'DB'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="operation_by_db">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'DB'">
                                            <xsl:choose>
                                                <xsl:when test="cludove.crest.spruce.data/record.crest/operation != ''">
                                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/operation"/></xsl:attribute>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:attribute name="value">search</xsl:attribute>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="connection_id_by_metadata">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'Metadata'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="resource_name_by_metadata">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'Metadata'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="connection_id_by_hinge">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'Hinge'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="resource_buddle_by_hinge">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'Hinge'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_buddle"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="resource_name_by_hinge">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'Hinge'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="connection_id_by_ws">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'WS'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="resource_name_by_ws">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'WS'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="connection_id_by_class">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'Class'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="resource_name_by_class">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'Class'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/></xsl:attribute>
                                        </xsl:if>
                                    </input>
                                    <input type="hidden" id="exchange_resource_name">
                                        <xsl:if test="cludove.crest.spruce.data/record.crest/type = 'DB'">
                                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/></xsl:attribute>
                                        </xsl:if>
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
