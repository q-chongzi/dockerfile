<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_resource_label_setting">
            <div class="item">
                <div class="div_txt">
                    <div class="list">
                        <div class="text">
                            <div class="div_nav">
                                <a href="javascript:void(0)" title="预览依赖关系" target="_blank">
                                    <xsl:attribute name="onclick">onDbTableEdit('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/identifier"/>')</xsl:attribute>
                                    <xsl:text>依赖关系</xsl:text>                                    
                                </a>
								<a title="上传excel文件完成在线部署" href="javascript:void(0)" onclick="if ($('#excel_file_input_container').is(':hidden')) $('#excel_file_input_container').show(); else $('#excel_file_input_container').hide();">上传excel文件</a>										
                                <a title="上传云抽检数据文件完成在线部署" href="javascript:void(0)" onclick="if ($('#data_check_file_input_container').is(':hidden')) $('#data_check_file_input_container').show(); else $('#data_check_file_input_container').hide();">上传云抽检文件</a><br/>                             
                            </div>
                            <div class="div_nav">
                                <a title="上传xml文件完成在线部署" href="javascript:void(0)" onclick="if ($('#xml_file_input_container').is(':hidden')) $('#xml_file_input_container').show(); else $('#xml_file_input_container').hide();">上传xml文件</a>
                            </div>
                            <div class="div_nav">
                                <a href="javascript:void(0)" title="预览数据管理" target="_blank">
                                    <xsl:attribute name="onclick">onAdministration('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/identifier"/>')</xsl:attribute>
                                    <xsl:text>数据管理</xsl:text>
                                </a>
                            </div>
                            <div class="div_nav">
                                <a title="导出excel" href="javascript:void(0)"  onclick="ExportExcelFile('base', 'zh-cn', 'excel_file_output')">
                                    <xsl:text>导出excel</xsl:text>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="div_txt">
					<xsl:attribute name="id">excel_file_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="excel_file_input" name="excel_file">
									<xsl:attribute name="onchange">uploadExcelFile('base', 'zh-cn', 'excel_file_input', 'excel文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">data_check_file_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="data_check_file_input" name="data_check_file">
									<xsl:attribute name="onchange">uploadDataCheckFile('base', 'zh-cn', 'data_check_file_input', '云抽检数据文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">xml_file_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="xml_file_input" name="xml_file">
									<xsl:attribute name="onchange">uploadXmlFile('base', 'zh-cn', 'xml_file_input', 'xml文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
                <div class="title">
                    <span class="set_catalog_name">资源标注</span>
                </div>
                <div class="div_txt">
                    <div class="list">
                        <span class="span_tit">连接标识：</span>
                        <div class="text">
                            <div class="div_input">
                                <input maxlength="64" type="text" id="validate_identifier" class="validate[required,maxSize[64]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/identifier"/>
                                    </xsl:attribute>
                                    <xsl:if test="parameter.cludove/identifier != ''">
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
                                <input maxlength="64" type="text" id="validate_resource_name" class="validate[required,maxSize[64]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/resource_name"/>
                                    </xsl:attribute>
                                    <xsl:if test="parameter.cludove/resource_name != ''">
                                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                                    </xsl:if>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">库表标注：</span>
                        <div class="text">
                            <div class="div_textarea">
                                <textarea id="resource_label_resource_label"  class="validate[maxSize[128]]">
                                    <xsl:value-of select="cludove.crest.spruce.resource_label/record.crest/resource_label"/>
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.column.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="span_tit"/>
                        <div class="text">
                            <div class="div_btn">
                                <a href="javascript:void(0)" onclick="resourceLabelSetting()">提交</a>
                                <a href="javascript:void(0)" onclick="resetData(this)">重置</a>
                                <input type="reset" style="display:none" class="reset_data"/>

                                <!--隐藏按钮-->
                                <input type="hidden" name="code" id="code_resource_label">
                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_label/record.crest/code"/></xsl:attribute>
                                </input>
                                <input type="hidden" name="connection_code" id="connection_code_resource_label">
                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_label/record.crest/connection_code"/></xsl:attribute>
                                </input>
                                <input id="resource_label_resource_name" type="hidden">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/resource_name"/>
                                    </xsl:attribute>
                                </input>
                                <input id="resource_label_identifier" type="hidden">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/identifier"/>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
