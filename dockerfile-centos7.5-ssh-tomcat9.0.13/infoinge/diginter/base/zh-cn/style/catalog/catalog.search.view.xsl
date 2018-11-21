<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <table id="diginter_exchange" border="" cellspacing="" cellpadding="">
            <tr class="border-bg1">
                <!--<td class="td1"><input type="checkbox" name="" id="checkAlltwo" value="" class="checkAlltwo"/><label for="checkAlltwo">全选</label></td>-->
                <th>目录名字</th>
                <th>目录标识</th>
                <th>判断权限</th>
                <th>是否暂停</th>
                <th>是否运行</th>
                <th>操作</th>
            </tr>
            <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                <xsl:sort order="ascending" select="identifier"/>
                <tr>
                    <xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
                    <xsl:attribute name="is_exchange"><xsl:value-of select="is_exchange" /></xsl:attribute>
                    <xsl:attribute name="style">cursor:pointer</xsl:attribute>
                    <!--<xsl:attribute name="onclick">catalogDatadisplay('<xsl:value-of select="code" />','<xsl:value-of select="identifier" />');</xsl:attribute>-->

                    <!--<td class="td1">-->
                    <!--<input type="radio" name="catalog_select">-->
                    <!--<xsl:attribute name="onclick">showCatalogSetting('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', 1)</xsl:attribute>-->
                    <!--<xsl:attribute name="ondblclick">showCatalogSetting('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', 0)</xsl:attribute>-->
                    <!--&lt;!&ndash;<xsl:if test="position() = 1">&ndash;&gt;-->
                    <!--&lt;!&ndash;<xsl:attribute name="checked">true</xsl:attribute>&ndash;&gt;-->
                    <!--&lt;!&ndash;</xsl:if>&ndash;&gt;-->
                    <!--</input>-->
                    <!--</td>-->
                    <!--<td class="td1"><input type="checkbox" name="" value="" class="checkTwo"/></td>-->

                    <td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                        <xsl:value-of select="name" />
                    </td>
                    <td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                        <xsl:value-of select="identifier" />
                    </td>
                    <td>
                        <xsl:choose>
                            <xsl:when test="is_permit = 'true'">
                                <xsl:text disable-output-escaping="yes">是</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text disable-output-escaping="yes"> </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td>
                        <xsl:choose>
                            <xsl:when test="is_pause = 'true'">
                                <xsl:text disable-output-escaping="yes">是</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text disable-output-escaping="yes"> </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td>
                        <xsl:choose>
                            <xsl:when test="is_running = 'true'">
                                <xsl:text disable-output-escaping="yes">是</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text disable-output-escaping="yes"> </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <td>
                        <xsl:choose>
                            <xsl:when test="sync_active_status = 'wait_delete'">
                                <xsl:text>请等待删除</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:variable name="identifier">
                                    <xsl:value-of select="identifier" />
                                </xsl:variable>
                                <a href="javascript:void(0)" title="查看|修改" class="revise" is-click="false" onclick="editData(this)">
                                    <xsl:attribute name="onclick">onCatalogSetting('<xsl:value-of select="code" />', 1)</xsl:attribute>
                                </a>

                                <xsl:if test="type != 'function'">
                                    <a class="mapping-icon" href="javascript:void(0)" is-click="false" title="功能设计">
                                        <xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_response_navigater</xsl:text></xsl:attribute>
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'model.data.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                            <xsl:otherwise>
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:attribute name="onclick">onModelEdit('<xsl:value-of select="buddle_id"/>','<xsl:value-of select="identifier"/>','<xsl:value-of select="type"/>')</xsl:attribute>
                                    </a>
                                </xsl:if>
                                <xsl:if test="buddle_id = 'exchange'">
                                    <a class="reture-icon" href="javascript:void(0)" is-click="false" title="功能返回">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'catalog.return.edit.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                            <xsl:otherwise>
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:attribute name="onclick">onCatalogReturnEdit('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
                                    </a>
                                    <xsl:choose>
                                        <xsl:when test="type !='function'"/>
                                        <xsl:otherwise>
                                            <a class="parameter-icon" href="javascript:void(0)" is-click="false" title="功能参数">
                                                <xsl:choose>
                                                    <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'parameter.catalog.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                                    <xsl:otherwise>
                                                        <xsl:attribute name="style">display:none</xsl:attribute>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <xsl:attribute name="onclick">onCatalogInfoapiSetting('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>')</xsl:attribute>
                                            </a>
                                            <a class="data-icon" href="javascript:void(0)" is-click="false" title="数据元数据">
                                                <xsl:choose>
                                                    <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'metadata.catalog.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                                    <xsl:otherwise>
                                                        <xsl:attribute name="style">display:none</xsl:attribute>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <xsl:attribute name="onclick">onCatalogMetadataSetting('<xsl:value-of select="buddle_id"/>', '<xsl:value-of select="identifier"/>', '<xsl:value-of select="is_exchange"/>')</xsl:attribute>
                                            </a>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <a class="response" href="javascript:void(0)" is-click="false" title="响应设计">
                                        <xsl:choose>
                                            <xsl:when test="(is_metadata = 'true' and type !='function') or is_metadata = 'false' or is_metadata = ''" >
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'response.design.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                            <xsl:otherwise>
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:attribute name="onclick">onResponseDesignEdit('<xsl:value-of select="buddle_id"/>','<xsl:value-of select="identifier"/>','<xsl:value-of select="type"/>','<xsl:value-of select="is_exchange"/>')</xsl:attribute>
                                    </a>
                                </xsl:if>
                                <a class="catalog-copy" href="javascript:void(0)" is-click="false" title="功能克隆">
                                    <xsl:choose>
                                        <xsl:when test="is_running = 'true'" >
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                    <xsl:attribute name="onclick">onCatalogCopySetting('<xsl:value-of select="code" />')</xsl:attribute>
                                </a>
                                <a class="delete-icon" href="javascript:void(0)" is-click="false" title="停用">
                                    <xsl:choose>
                                        <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'catalog.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                        <xsl:otherwise>
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <!--<xsl:attribute name="onclick">if (confirm("确认停用 功能目录 <xsl:value-of select="identifier" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'catalog_record_code', 'is_active', 'connection_code'), new Array('diginter', 'catalog.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>-->
                                    <!--<xsl:attribute name="onclick">zdconfirm('提示','&lt;!&ndash;确定删除所选的功能目录 <xsl:value-of select="identifier" />/<xsl:value-of select="name" />  吗？&ndash;&gt;删除该功能目录后，使用过该功能目录的目录数据也会被一起删除，确定吗？',function(confirm){if (confirm) {$("#now_remove").show();$("#ajax_loader_remove").show();$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'catalog_record_code', 'buddle_id', 'identifier','type', 'connection_code'), new Array('infoinge', 'catalog.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="buddle_id" />', '<xsl:value-of select="identifier" />', '<xsl:value-of select="type" />', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordSearchRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>-->
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.job_catalog/record.crest[catalog_id=$identifier])>0">
                                            <xsl:attribute name="onclick">catalogWhetherUseSearch('<xsl:value-of select="type" />','<xsl:value-of select="identifier" />','<xsl:value-of select="name" />','<xsl:value-of select="code" />','<xsl:value-of select="buddle_id" />','<xsl:value-of select="connection_code" />',1)</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="onclick">catalogWhetherUseSearch('<xsl:value-of select="type" />','<xsl:value-of select="identifier" />','<xsl:value-of select="name" />','<xsl:value-of select="code" />','<xsl:value-of select="buddle_id" />','<xsl:value-of select="connection_code" />',0)</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </a>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                    <input type="hidden">
                        <xsl:attribute name="id"><xsl:value-of select="code" />_catalog_identifier</xsl:attribute>
                        <xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
                    </input>
                </tr>

                <tr class="border-bg2" style="display:none">
                    <xsl:attribute name="id"><xsl:value-of select="code" /></xsl:attribute>
                    <td colspan="6" style="width:800px;height:80px;">
                        <div>
                            <xsl:attribute name="id"><xsl:value-of select="code" />_data_search</xsl:attribute>
                        </div>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>