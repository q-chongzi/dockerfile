<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <p class="configure-fr-input">
            <input type="text" class="input-1 validate[required]" id="search_keyword" placeholder="请输入目录标识或目录名字">
                <xsl:attribute name="onkeydown">
                    keySearch('<xsl:value-of select="/content/parameter.cludove/buddle_id"/>')
                </xsl:attribute>
            </input>
            <a href="javascript:void(0)" class="api_search">
                <xsl:attribute name="onclick">
                    onCatalogSearch('<xsl:value-of select="/content/parameter.cludove/buddle_id"/>')
                </xsl:attribute>
                查询
            </a>
        </p>
        <div class="configure-fr">
            <table style="margin:20px 0 0 20px; table-layout: fixed;">
                <xsl:variable name="permission">
                    <xsl:value-of select="/content/parameter.cludove/has_permission"/>
                </xsl:variable>
                <tr>
                    <th>目录标识</th>
                    <th>目录名字</th>
                    <th>功能描述</th>
                    <th>判断权限</th>
                    <th style="width:7%">能否融合</th>
                    <th style="width:30%">备注</th>
                </tr>
                <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                    <xsl:sort order="ascending" select="identifier"/>
                    <xsl:variable name="buddle_id">
                        <xsl:value-of select="buddle_id"/>
                    </xsl:variable>
                    <xsl:variable name="catalog_id">
                        <xsl:value-of select="identifier"/>
                    </xsl:variable>
                    <tr>
                        <td style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
                            <xsl:value-of select="identifier" />
                        </td>
                        <td style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
                            <xsl:value-of select="name" />
                        </td>
                        <td style="overflow:hidden;text-overflow:ellipsis;white-space:nowrap;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
                            <xsl:value-of select="description" />
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="is_permit = 'true'">
                                    <xsl:choose>
                                        <xsl:when test="$permission = 'true' and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = $buddle_id and catalog_id = $catalog_id])">
                                            <span>
                                                <xsl:text disable-output-escaping="yes">否</xsl:text>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span>
                                                <xsl:text disable-output-escaping="yes">是</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span>
                                        <xsl:text disable-output-escaping="yes">否</xsl:text>
                                    </span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="is_permit = 'true'">
                                    <xsl:choose>
                                        <xsl:when test="$permission = 'true' and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = $buddle_id and catalog_id = $catalog_id])">
                                            <span>
                                                <xsl:attribute name="title">
                                                    <xsl:text>可在任意业务模型中使用</xsl:text>
                                                </xsl:attribute>
                                                <xsl:text disable-output-escaping="yes">是</xsl:text>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span>
                                                <xsl:attribute name="title">
                                                    需要授权，请联系管理员<xsl:choose>
                                                    <xsl:when test="/content/parameter.cludove/email != 'undefined' and /content/parameter.cludove/telephone = 'undefined'">
                                                        邮箱:<xsl:value-of select="/content/parameter.cludove/email"/>
                                                    </xsl:when>
                                                    <xsl:when test="/content/parameter.cludove/telephone != 'undefined' and /content/parameter.cludove/email = 'undefined'">
                                                        电话:<xsl:value-of select="/content/parameter.cludove/telephone"/>
                                                    </xsl:when>
                                                    <xsl:when test="/content/parameter.cludove/telephone != 'undefined' and /content/parameter.cludove/email != 'undefined'">
                                                        邮箱:<xsl:value-of select="/content/parameter.cludove/email"/> 电话:<xsl:value-of select="/content/parameter.cludove/telephone"/>
                                                    </xsl:when>
                                                    <xsl:otherwise />
                                                </xsl:choose>
                                                </xsl:attribute>
                                                <xsl:text disable-output-escaping="yes">否</xsl:text>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span>
                                        <xsl:attribute name="title">
                                            <xsl:text>可在任意业务模型中使用</xsl:text>
                                        </xsl:attribute>
                                        <xsl:text disable-output-escaping="yes">是</xsl:text>
                                    </span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="is_permit = 'true'">
                                    <xsl:choose>
                                        <xsl:when test="$permission = 'true' and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = $buddle_id and catalog_id = $catalog_id])">
                                            <span>
                                                <xsl:text>可在任意业务模型中使用</xsl:text>
                                            </span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span>需要授权，请联系管理员
                                                <xsl:choose>
                                                    <xsl:when test="/content/parameter.cludove/email != 'undefined' and /content/parameter.cludove/telephone = 'undefined'">
                                                        邮箱:<span style="color:#ff9900;"><xsl:value-of select="/content/parameter.cludove/email"/></span>
                                                    </xsl:when>
                                                    <xsl:when test="/content/parameter.cludove/telephone != 'undefined' and /content/parameter.cludove/email = 'undefined'">
                                                        电话:<span style="color:#ff9900;"><xsl:value-of select="/content/parameter.cludove/telephone"/></span>
                                                    </xsl:when>
                                                    <xsl:when test="/content/parameter.cludove/telephone != 'undefined' and /content/parameter.cludove/email != 'undefined'">
                                                        邮箱:<span style="color:#ff9900;"><xsl:value-of select="/content/parameter.cludove/email"/></span> 电话:<span style="color:#ff9900;"><xsl:value-of select="/content/parameter.cludove/telephone"/></span>
                                                    </xsl:when>
                                                    <xsl:otherwise />
                                                </xsl:choose>
                                            </span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span>
                                        <xsl:text>可在任意业务模型中使用</xsl:text>
                                    </span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>
