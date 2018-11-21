<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="right_side1 flt row ht2" style="position:absolute;right:0;top:0;width:350px">
            <xsl:variable name="position">
                <xsl:for-each select="cludove.crest.spruce.job_catalog[2]/record.crest/position">
                    <xsl:sort data-type="number" order="descending" select="position"/>
                    <xsl:if test="position() = 1">
                        <xsl:value-of select="position"/>
                    </xsl:if>
                </xsl:for-each>
            </xsl:variable>
            <form class="form-horizontal" role="form" id="validate_job_catalog_setting">
                <div class="item">
                    <div class="title">
                        <xsl:choose>
                            <xsl:when test="count(cludove.crest.spruce.job_catalog[1]/record.crest) > 0">
                                <span class="set_catalog_name">作业功能</span>
                                <span class="span_edit span_job_catalog_edit" title="新增作业功能">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'job.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                        <xsl:otherwise>
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:attribute name="onclick">$(".set_catalog_name").html("作业功能-新增"); $(".span_job_catalog_edit").hide(); $('#code_job_catalog').val(''); $('#connection_code_job_catalog').val('');if('<xsl:value-of select="$position"/>'=='100'){$('#job_catalog_position').val('100')}else{$('#job_catalog_position').val('<xsl:value-of select="$position + 1"/>')};</xsl:attribute>
                                </span>
                            </xsl:when>
                            <xsl:otherwise>
                                <span class="set_job_catalog_name">作业功能-新增</span>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <div class="div_txt">
                        <div class="list">
                            <xsl:attribute name="id">job_catalog_buddle_id_container</xsl:attribute>
                            <span class="span_tit">应用名字：</span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="job_catalog_buddle_id" class="validate[required]">
                                        <xsl:attribute name="onchange">onJobCatalogBuddleChange()</xsl:attribute>
                                        <option value="">请选择应用名字</option>
                                        <xsl:for-each select="/content/cludove.crest.spruce.buddle/record.crest">
                                            <option>
                                                <xsl:if test="identifier = /content/cludove.crest.spruce.job_catalog[1]/record.crest/buddle_id">
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
                            <xsl:attribute name="id">job_catalog_catalog_id_container</xsl:attribute>
                            <span class="span_tit">
                                <xsl:text>功能名字：</xsl:text>
                            </span>
                            <div class="text">
                                <div class="div_select">
                                    <select id="job_catalog_catalog_id" class="validate[required]">
                                        <!--<xsl:attribute name="onchange">onDataResourceNameChange()</xsl:attribute>-->
                                        <option value="">请选择功能目录名字</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="list">
                            <span class="span_tit">处理顺序：</span>
                            <div class="job_catalog_spinner">
                                <xsl:text> </xsl:text>
                                <input type="text" id="job_catalog_position"  class="validate[required,custom[zpositive],max[100]]">
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
                        <div class="list">
                            <xsl:choose>
                                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'job.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                <xsl:otherwise>
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="span_tit"/>
                            <div class="text">
                                <div class="div_btn">
                                    <a href="javascript:void(0)" class="submit_btn" onclick="processJobCatalogSetting()">提交</a>
                                    <a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
                                    <a href="javascript:void(0)" onclick="resetData(this);onJobCatalogBuddleChange()">重置</a>
                                    <a href="javascript:void(0)" onclick="removeJobCatalogSetting()">删除</a>
                                    <input type="reset" style="display:none" class="reset_data"/>

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
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
