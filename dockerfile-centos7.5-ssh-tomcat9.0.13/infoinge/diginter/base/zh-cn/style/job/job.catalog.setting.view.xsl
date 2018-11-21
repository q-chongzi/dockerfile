<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_job_catalog_setting">
            <xsl:variable name="position">
                <xsl:for-each select="cludove.crest.spruce.job_catalog[2]/record.crest">
                    <xsl:sort data-type="number" order="descending" select="position"/>
                    <xsl:if test="position() = 1">
                        <xsl:value-of select="position"/>
                    </xsl:if>
                </xsl:for-each>
            </xsl:variable>
            <p>
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.job_catalog[1]/record.crest) > 0">
                        <span class="set_catalog_name">作业功能</span>
                        <a href="javascript:void(0);" style="margin-left:20px;width:25px;height:25px;display:inline-block" class="service1 span_job_catalog_edit" title="新增作业功能">
                            <xsl:choose>
                                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'job.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:attribute name="onclick">$(".set_catalog_name").html("作业功能-新增"); $(".span_job_catalog_edit").hide(); $('#code_job_catalog').val(''); $('#connection_code_job_catalog').val('');if('<xsl:value-of select="$position"/>'=='100'){$('#job_catalog_position').val('100')}else{$('#job_catalog_position').val('<xsl:value-of select="$position + 1"/>')};</xsl:attribute>
                        </a>
                    </xsl:when>
                    <xsl:otherwise>
                        <span class="set_job_catalog_name">作业功能-新增</span>
                    </xsl:otherwise>
                </xsl:choose>
            </p>
            <p>
                <xsl:attribute name="id">job_catalog_buddle_id_container</xsl:attribute>
                <span>应用名字：</span>
                <select id="job_catalog_buddle_id" class="validate[required]" style="width:300px">
                    <xsl:attribute name="onchange">onJobCatalogBuddleChange()</xsl:attribute>
                    <option value="">请选择应用名字</option>
                    <xsl:for-each select="/content/cludove.crest.spruce.buddle/record.crest[identifier != 'infoinge' and identifier != 'diginter']">
                        <option>
                            <xsl:if test="identifier = /content/cludove.crest.spruce.job_catalog[1]/record.crest/buddle_id">
                                <xsl:attribute name="selected">selected</xsl:attribute>
                            </xsl:if>
                            <xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
                            <xsl:value-of select="name"/>
                        </option>
                    </xsl:for-each>
                </select>
            </p>
            <p>
                <xsl:attribute name="id">job_catalog_catalog_id_container</xsl:attribute>
                <span>
                    <xsl:text>功能名字：</xsl:text>
                </span>
                <select id="job_catalog_catalog_id" class="validate[required]" style="width:300px">
                    <!--<xsl:attribute name="onchange">onDataResourceNameChange()</xsl:attribute>-->
                    <option value="">请选择功能目录名字</option>
                </select>
            </p>
            <p>
                <div style="position:relative">
                    <span style="color:#808080">处理顺序：</span>
                    <div style="position:absolute;top:-6px;left:60px" class="job_catalog_spinner">
                        <input type="text" disabled="disabled"  style="width:100px;height:20px" id="job_catalog_position"  class="validate[required,custom[zpositive],max[100]]">
                            <xsl:attribute name="value">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.job_catalog[1]/record.crest/position != ''">
                                        <xsl:value-of select="cludove.crest.spruce.job_catalog[1]/record.crest/position"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:choose>
                                            <xsl:when test="count(cludove.crest.spruce.job_catalog[2]/record.crest) > 0">
                                                <xsl:choose>
                                                    <xsl:when test="$position = 100">
                                                        <xsl:text>100</xsl:text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:value-of select="$position + 1"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:text>0</xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                        </input>
                    </div>
                </div>
            </p>
            <div class="configure-fr-side-bottom">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'job.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>

                <input class="sub" value="提交" type="button">
                    <xsl:attribute name="onclick">processJobCatalogSetting()</xsl:attribute>
                </input>
                <input class="res" value="清除" type="reset"/>
                <input class="but" value="删除" type="button" onclick="removeJobCatalogSetting()"/>

                <!--隐藏按钮-->
                <input type="hidden" name="code" id="code_job_catalog">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.job_catalog[1]/record.crest/code"/></xsl:attribute>
                </input>
                <input type="hidden" name="connection_code" id="connection_code_job_catalog">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.job_catalog[1]/record.crest/connection_code"/></xsl:attribute>
                </input>
                <input type="hidden" name="job_catalog_buddle_id_job" id="job_catalog_buddle_id_job">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.job_catalog[1]/record.crest/buddle_id"/></xsl:attribute>
                </input>
                <input type="hidden" name="job_catalog_catalog_id_job" id="job_catalog_catalog_id_job">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.job_catalog[1]/record.crest/catalog_id"/></xsl:attribute>
                </input>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
