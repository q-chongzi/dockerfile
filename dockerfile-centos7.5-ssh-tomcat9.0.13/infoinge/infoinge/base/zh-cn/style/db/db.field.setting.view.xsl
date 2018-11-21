<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_field_label_setting">
            <div class="item">
                <div class="div_txt">
                    <div class="list">
                        <div class="text">
                            <div class="div_nav">
                                <a href="javascript:void(0)" title="预览依赖关系" target="_blank">
                                    <xsl:attribute name="onclick">onDbTableEdit('<xsl:value-of select="parameter.cludove/s_resource_name"/>','<xsl:value-of select="parameter.cludove/s_identifier"/>')</xsl:attribute>
                                    <xsl:text>依赖关系</xsl:text>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="title">
                    <span class="set_catalog_name">字段标注</span>
                </div>
                <div class="div_txt">
                    <div class="list">
                        <span class="span_tit">连接标识：</span>
                        <div class="text">
                            <div class="div_input">
                                <input maxlength="64" type="text" id="validate_identifier" class="validate[required,maxSize[64]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/s_identifier"/>
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
                        <span class="span_tit">字段名字：</span>
                        <div class="text">
                            <div class="div_input">
                                <input maxlength="64" type="text" id="field_label_field_name" class="validate[required,maxSize[64]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/field_name"/>
                                    </xsl:attribute>
                                    <xsl:if test="parameter.cludove/field_name != ''">
                                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                                    </xsl:if>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">字段标注：</span>
                        <div class="text">
                            <div class="div_textarea">
                                <textarea id="field_label_field_label"  class="validate[maxSize[128]]">
                                    <xsl:value-of select="cludove.crest.spruce.field_label/record.crest/field_label"/>
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.field.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="span_tit"/>
                        <div class="text">
                            <div class="div_btn">
                                <a href="javascript:void(0)" onclick="processFieldLabelSetting()">提交</a>
                                <a href="javascript:void(0)" onclick="resetData(this)">重置</a>
                                <input type="reset" style="display:none" class="reset_data"/>

                                <!--隐藏按钮-->
                                <input type="hidden" name="code" id="code_field_label">
                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_label/record.crest/code"/></xsl:attribute>
                                </input>
                                <input type="hidden" name="connection_code" id="connection_code_field_label">
                                    <xsl:attribute name="value"><xsl:value-of select="parameter.cludove/connection_code"/></xsl:attribute>
                                </input>
                                <input id="field_label_resource_name" type="hidden">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/s_resource_name"/>
                                    </xsl:attribute>
                                </input>
                                <input id="field_label_identifier" type="hidden">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="parameter.cludove/s_identifier"/>
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
