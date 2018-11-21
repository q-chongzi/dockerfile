<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="row" style="width:100%;margin:auto;text-align: center;">
            <form class="" role="form" id="" style="margin:auto;">
                <div class="item">

                    <div class="div_txt">

                        <div class="list">
                            <span class="span_tit">连接标识：</span>
                            <div class="text">
                                <div class="div_input">
                                    <input maxlength="64" type="text" id="validate_identifier" disabled="disabled" class="validate[required,maxSize[64]]">
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="parameter.cludove/connection_id"/>
                                        </xsl:attribute>
                                        <xsl:if test="parameter.cludove/s_identifier != ''">
                                            <xsl:attribute name="readonly">readonly</xsl:attribute>
                                        </xsl:if>
                                    </input>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit">库表名称：</span>
                            <div class="text">
                                <div class="div_input">
                                    <input maxlength="64" type="text" id="validate_resource_name" disabled="disabled" class="validate[required,maxSize[64]]">
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="parameter.cludove/resource_name"/>
                                        </xsl:attribute>
                                        <xsl:if test="parameter.cludove/s_resource_name != ''">
                                            <xsl:attribute name="readonly">readonly</xsl:attribute>
                                        </xsl:if>
                                    </input>
                                </div>
                            </div>
                        </div>

                        <div class="list">
                            <span class="span_tit">是否分页：</span>
                            <div class="text">
                                <input style="margin-left:-92%" checked="checked" class="input_radio" value="true" type="radio" name="is_paginate" id="db_is_paginate_true" onclick="$('#db_is_paginate').val('true')">

                                </input>
                                <xsl:text> 是 </xsl:text>
                                <input class="input_radio" value="false" type="radio" name="is_paginate" id="db_is_paginate_false" onclick="$('#db_is_paginate').val('false')">

                                </input>
                                <xsl:text> 否 </xsl:text>
                                <input id="db_is_paginate" type="hidden" value="true">

                                </input>
                            </div>
                        </div>

                        <div class="list">

                            <div class="text" style="margin:auto;text-align: center;margin-bottom: 20px">
                                <div class="div_nav">
                                    <a style="margin-left:20%;width:10%;height:30px;line-height: 30px" href="javascript:void(0)"  onclick="ExportExcelFile('base', 'zh-cn', 'excel_file_output')" title="导出excel">
                                        <xsl:text>导出excel</xsl:text>
                                    </a>
                                </div>
                                <div class="div_nav">
                                    <a style="width:10%;height:30px;line-height: 30px" href="javascript:void(0)" onclick="$('#xml_file_import_container').hide();if ($('#excel_file_import_container').is(':hidden')) $('#excel_file_import_container').show(); else $('#excel_file_import_container').hide();" title="导入excel">
                                        <xsl:text>导入excel</xsl:text>
                                    </a>
                                </div>
                                <div class="div_nav">
                                    <a style="width:10%;height:30px;line-height: 30px" href="javascript:void(0)" title="导出xml" target="_blank">
                                        <xsl:attribute name="onclick">onDataPreview('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/connection_id"/>')</xsl:attribute>
                                        <xsl:text>导出xml</xsl:text>
                                    </a>
                                </div>
                                <div class="div_nav">
                                    <a style="width:10%;height:30px;line-height: 30px" href="javascript:void(0)" onclick="$('#excel_file_import_container').hide();if ($('#xml_file_import_container').is(':hidden')) $('#xml_file_import_container').show(); else $('#xml_file_import_container').hide();" title="导入xml">
                                        <xsl:text>导入xml</xsl:text>
                                    </a>
                                </div>
                            </div>

                            <div class="div_txt">
                                <xsl:attribute name="id">excel_file_import_container</xsl:attribute>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                                <div class="list" style="margin-left:32%">
                                    <div class="text">
                                        <div class="div_input">
                                            <input type="file" id="import_file_input" name="import_file_input">
                                                <xsl:attribute name="onchange">ImportExcel('base', 'zh-cn', 'import_file_input', 'excel文件')</xsl:attribute>
                                            </input>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="div_txt">
                                <xsl:attribute name="id">xml_file_import_container</xsl:attribute>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                                <div class="list" style="margin-left:56%">
                                    <div class="text">
                                        <div class="div_input">
                                            <input type="file" id="xml_import_input" name="xml_import_input">
                                                <xsl:attribute name="onchange">ImportXml('base', 'zh-cn', 'xml_import_input', 'xml文件')</xsl:attribute>
                                            </input>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr/>
                        </div>

                        <br/>


                       <br/>



                    </div>
                </div>
            </form>
        </div>

    </xsl:template>
</xsl:stylesheet>
