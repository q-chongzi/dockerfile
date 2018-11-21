<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <div class="configure-fr-tit1">
            <ul>
                <li>
                    <a href="javascript:void(0)" title="预览依赖关系" target="_blank">
                        <xsl:attribute name="onclick">onDbTableEdit('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/identifier"/>')</xsl:attribute>
                        <xsl:text>依赖关系</xsl:text>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" title="预览数据管理" target="_blank">
                        <xsl:attribute name="onclick">onAdministration('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/identifier"/>')</xsl:attribute>
                        <xsl:text>数据管理</xsl:text>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick="$('#xml_file_import_container').hide();if ($('#excel_file_import_container').is(':hidden')) $('#excel_file_import_container').show(); else $('#excel_file_import_container').hide();" title="导入excel">
                        <xsl:text>导入excel</xsl:text>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" title="导出excel" target="_blank">
                        <xsl:attribute name="onclick">ExportExcelFile('base', 'zh-cn', 'excel_file_output')</xsl:attribute>
                        <xsl:text>导出excel</xsl:text>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick="$('#excel_file_import_container').hide();if ($('#xml_file_import_container').is(':hidden')) $('#xml_file_import_container').show(); else $('#xml_file_import_container').hide();" title="导入xml">
                        <xsl:text>导入xml</xsl:text>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)" title="导出xml" target="_blank">
                        <xsl:attribute name="onclick">onDataPreview('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/connection_id"/>')</xsl:attribute>
                        <xsl:text>导出xml</xsl:text>
                    </a>
                </li>
            </ul>
        </div>
        <form class="form-horizontal" role="form" id="validate_resource_label_setting">
            <p>
                <xsl:attribute name="id">excel_file_import_container</xsl:attribute>
                <xsl:attribute name="style">display:none</xsl:attribute>
                <input type="file" id="import_file_input" name="import_file_input">
                    <xsl:attribute name="onchange">ImportExcel('base', 'zh-cn', 'import_file_input', 'excel文件')</xsl:attribute>
                </input>
            </p>
            <p>
                <xsl:attribute name="id">xml_file_import_container</xsl:attribute>
                <xsl:attribute name="style">display:none</xsl:attribute>
                <input type="file" id="xml_import_input" name="xml_import_input">
                    <xsl:attribute name="onchange">ImportXml('base', 'zh-cn', 'xml_import_input', 'xml文件')</xsl:attribute>
                </input>
            </p>

            <p>
                <span>连接标识：</span>
                <input maxlength="64" type="text" id="validate_identifier" class="input-1 validate[required,maxSize[64]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/identifier"/>
                    </xsl:attribute>
                    <xsl:if test="parameter.cludove/identifier != ''">
                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                    </xsl:if>
                </input>
            </p>
            <p>
                <span>库表名称：</span>
                <input maxlength="64" type="hidden" id="validate_resource_name" class="input-1 validate[required,maxSize[64]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/resource_name"/>
                    </xsl:attribute>
                    <xsl:if test="parameter.cludove/resource_name != ''">
                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                    </xsl:if>
                </input>
                <input maxlength="64" type="text" id="validate_resource_name_view" class="input-1 validate[required,maxSize[64]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="translate(parameter.cludove/resource_name,$smallcase,$uppercase)"/>
                    </xsl:attribute>
                    <xsl:if test="parameter.cludove/resource_name != ''">
                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                    </xsl:if>
                </input>
            </p>
            <p>
                <span>库表标注：</span>
                <input maxlength="32" type="text" id="resource_label_resource_label" class="input-1 validate[maxSize[32]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.resource_label/record.crest/resource_label"/>
                    </xsl:attribute>
                </input>
            </p>
            <div class="configure-fr-side-bottom">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'db.column.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
                <input type="button" value="提交" class="sub" onclick="resourceLabelSetting()"></input>
                <input type="reset" value="清除" class="res"></input>
                <input type="button" value="取消" class="but" onclick="$('#resource_db_setting_right').hide()"></input>
                <!--隐藏按钮-->
                <input type="hidden" name="code" id="code_resource_label">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_label/record.crest/code"/></xsl:attribute>
                </input>
                <input type="hidden" name="connection_code" id="connection_code_resource_label">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_label/record.crest/connection_code"/></xsl:attribute>
                </input>
                <input id="resource_label_resource_name" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="translate(parameter.cludove/resource_name,$smallcase,$uppercase)"/>
                    </xsl:attribute>
                </input>
                <input id="resource_label_identifier" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/identifier"/>
                    </xsl:attribute>
                </input>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
