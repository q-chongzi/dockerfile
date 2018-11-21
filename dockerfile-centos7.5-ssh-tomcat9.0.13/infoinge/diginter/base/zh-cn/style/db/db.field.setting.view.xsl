<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="configure-fr-tit1">
            <ul>
                <li>
                    <a href="javascript:void(0)" title="预览依赖关系" target="_blank">
                        <xsl:attribute name="onclick">onDbTableEdit('<xsl:value-of select="parameter.cludove/resource_name"/>','<xsl:value-of select="parameter.cludove/identifier"/>')</xsl:attribute>
                        <xsl:text>依赖关系</xsl:text>
                    </a>
                </li>
            </ul>
        </div>
        <form class="form-horizontal" role="form" id="validate_field_label_setting">
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
                <input maxlength="64" type="text" id="validate_resource_name" class="input-1 validate[required,maxSize[64]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/resource_name"/>
                    </xsl:attribute>
                    <xsl:if test="parameter.cludove/resource_name != ''">
                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                    </xsl:if>
                </input>
            </p>
            <p>
                <span>字段名字：</span>
                <input maxlength="64" type="text" id="field_label_field_name" class="input-1 validate[required,maxSize[64]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/field_name"/>
                    </xsl:attribute>
                    <xsl:if test="parameter.cludove/field_name != ''">
                        <xsl:attribute name="readonly">readonly</xsl:attribute>
                    </xsl:if>
                </input>
            </p>
            <p>
                <span>字段标注：</span>
                <input maxlength="32" type="text" id="field_label_field_label" class="input-1 validate[maxSize[32]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.field_label/record.crest/field_label"/>
                    </xsl:attribute>
                </input>
            </p>
            <div class="configure-fr-side-bottom">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'db.field.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
                <input type="button" value="提交" class="sub" onclick="processFieldLabelSetting()"></input>
                <input type="reset" value="清除" class="res"></input>
                <input type="button" value="取消" class="but" onclick="$('#resource_db_setting_right').hide()"></input>
                <!--隐藏按钮-->
                <input type="hidden" name="code" id="code_field_label">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_label/record.crest/code"/></xsl:attribute>
                </input>
                <input type="hidden" name="connection_code" id="connection_code_field_label">
                    <xsl:attribute name="value"><xsl:value-of select="parameter.cludove/connection_code"/></xsl:attribute>
                </input>
                <input id="field_label_resource_name" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/resource_name"/>
                    </xsl:attribute>
                </input>
                <input id="field_label_identifier" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/identifier"/>
                    </xsl:attribute>
                </input>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
