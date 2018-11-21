<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_data_setting">
            <p>
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.v_resource_relevance/record.crest) > 0">
                        <span class="set_data_name">库表关联</span>
                        <a href="javascript:void(0);" style="margin-left:20px;width:25px;height:25px;top:10px;display:inline-block" class="service1 span_edit span_data_edit" title="新增库表关联">
                            <xsl:choose>
                                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'db.table.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:attribute name="onclick">$(".set_data_name").html("库表关联-新增"); $(".span_data_edit").hide(); $("#db_table_remove").hide();$('#connection_code').val('');$('#r_identifier').val('');$('#r_resource_name').val(''); $('#data_name').focus();  $('input:radio[name="data_select"]').attr('checked',false);</xsl:attribute>
                        </a>
                    </xsl:when>
                    <xsl:otherwise>
                        <span class="set_job_catalog_name">库表关联-新增</span>
                    </xsl:otherwise>
                </xsl:choose>
            </p>
            <input id="data_type" type="hidden" value="DB">
            </input>
            <p>
                <xsl:attribute name="id">data_connection_id_container</xsl:attribute>
                <span>
                    <xsl:attribute name="id">data_connection_id_title</xsl:attribute>
                    <xsl:text>资源定义：</xsl:text>
                </span>
                <select id="data_connection_id" style="width:300px" class="validate[required]">
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
            </p>
            <p>
                <xsl:attribute name="id">data_resource_name_container</xsl:attribute>
                <span>
                    <xsl:text>数据库表：</xsl:text>
                </span>
                <select id="data_resource_name" style="width:300px" class="validate[required]">
                    <xsl:attribute name="onchange">onDataResourceNameChange()</xsl:attribute>
                    <option value="">请选择数据库表</option>
                </select>
            </p>
            <div class="configure-fr-side-bottom">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'db.table.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>

                <input class="sub" value="提交" type="button">
                    <xsl:attribute name="onclick">processDbTableSetting()</xsl:attribute>
                </input>
                <input class="res" value="清除" type="reset"/>
                <xsl:if test="count(cludove.crest.spruce.v_resource_relevance/record.crest) > 0">
                    <input class="but" value="删除" id="db_table_remove" type="button" onclick="processDbTableRemove()"/>
                </xsl:if>

                <!--隐藏按钮-->
                <input type="hidden" name="code" id="code_db">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_relevance/record.crest/code"/></xsl:attribute>
                </input>
                <input type="hidden" name="connection_code" id="connection_code">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.resource_relevance/record.crest/connection_code"/></xsl:attribute>
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
        </form>
    </xsl:template>
</xsl:stylesheet>
