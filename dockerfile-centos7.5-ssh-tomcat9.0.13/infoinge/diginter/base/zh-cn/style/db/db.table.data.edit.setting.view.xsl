<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="configure-fr-side" style="width:100%;margin:auto;position:static">
            <form class="" role="form" id="" style="margin:auto;">
                <p>
                    <span>连接标识：</span>
                    <input maxlength="64" type="text" id="validate_identifier" class="input-1">
                        <xsl:attribute name="value">
                            <xsl:value-of select="parameter.cludove/connection_id"/>
                        </xsl:attribute>
                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                    </input>
                </p>
                <p>
                    <span>库表名称：</span>
                    <input maxlength="64" type="text" id="validate_resource_name" class="input-1">
                        <xsl:attribute name="value">
                            <xsl:value-of select="parameter.cludove/resource_name"/>
                        </xsl:attribute>
                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                    </input>
                </p>

                <div class="configure-fr-tit1">
                    <ul>
                        <li style="margin-left:500px">
                            <a href="javascript:void(0)"  onclick="ExportExcelFile('base', 'zh-cn', 'excel_file_output')" title="导出excel">
                                <xsl:text>导出excel</xsl:text>
                            </a>
                        </li>
                        <li style="margin-left:30px">
                            <a href="javascript:void(0)" onclick="$('#xml_file_import_container').hide();if ($('#excel_file_import_container').is(':hidden')) $('#excel_file_import_container').show(); else $('#excel_file_import_container').hide();" title="导入excel">
                                <xsl:text>导入excel</xsl:text>
                            </a>
                        </li>
                        <li style="margin-left:30px">
                            <a href="javascript:void(0)" title="导出xml" target="_blank">
                                <xsl:attribute name="onclick">onDataPreview('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/connection_id"/>')</xsl:attribute>
                                <xsl:text>导出xml</xsl:text>
                            </a>
                        </li>
                        <li style="margin-left:30px">
                            <a href="javascript:void(0)" onclick="$('#excel_file_import_container').hide();if ($('#xml_file_import_container').is(':hidden')) $('#xml_file_import_container').show(); else $('#xml_file_import_container').hide();" title="导入xml">
                                <xsl:text>导入xml</xsl:text>
                            </a>
                        </li>
                    </ul>
                </div>
                <p>
                    <xsl:attribute name="id">excel_file_import_container</xsl:attribute>
                    <xsl:attribute name="style">display:none</xsl:attribute>
                    <input type="file" style="margin-left:630px" id="import_file_input" name="import_file_input">
                        <xsl:attribute name="onchange">ImportExcel('base', 'zh-cn', 'import_file_input', 'excel文件')</xsl:attribute>
                    </input>
                </p>

                <p>
                    <xsl:attribute name="id">xml_file_import_container</xsl:attribute>
                    <xsl:attribute name="style">display:none</xsl:attribute>
                    <input type="file" style="margin-left:880px" id="xml_import_input" name="xml_import_input">
                        <xsl:attribute name="onchange">ImportXml('base', 'zh-cn', 'xml_import_input', 'xml文件')</xsl:attribute>
                    </input>
                </p>
            </form>
        </div>

    </xsl:template>
</xsl:stylesheet>
