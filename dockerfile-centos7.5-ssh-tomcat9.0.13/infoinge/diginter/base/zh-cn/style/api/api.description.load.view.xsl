<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:template match="content">
        <div class="configure-fl2-top">
            <xsl:choose>
                <xsl:when test="count(parameter.cludove/catalog_id) > 0">
                    <div class="configure-fl2-top-tit">
                        <xsl:attribute name="title">
                            <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/name"/>
                            <xsl:text disable-output-escaping="yes"> - </xsl:text>
                            <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>
                            <xsl:text> / </xsl:text>
                            <xsl:choose>
                                <xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'function'">
                                    <xsl:text>服务功能 / </xsl:text>
                                </xsl:when>
                                <xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
                                    <xsl:text>数据迁移 / </xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>数据同步 / </xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/name"/>
                            <xsl:text disable-output-escaping="yes"> - </xsl:text>
                            <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>
                        </xsl:attribute>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/name"/>
                        <xsl:text disable-output-escaping="yes"> - </xsl:text>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>
                        <xsl:text> / </xsl:text>
                        <xsl:choose>
                            <xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'function'">
                                <xsl:text>服务功能 / </xsl:text>
                            </xsl:when>
                            <xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
                                <xsl:text>数据迁移 / </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>数据同步 / </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/name"/>
                        <xsl:text disable-output-escaping="yes"> - </xsl:text>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>
                    </div>
                    <div style="margin-left:30px; width:90%;">
                        <div class="p_div">功能描述:
                            <span id="catalog_description">
                                <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/description"/>
                            </span>
                        </div>
                        <div class="p_div">功能返回:
                            <span id="catalog_return_content">
                                <xsl:value-of select="cludove.crest.spruce.catalog_return/record.crest/content"/>
                            </span>
                        </div>
                        <div class="p_div">功能参数:
                            <div class="configure-parameter">
                                <table style="width:100%; table-layout: fixed;">
                                    <tr>
                                        <th>参数名称</th>
                                        <th>参数长度</th>
                                        <th>是否必须</th>
                                        <th style="width:40%">内容描述</th>
                                    </tr>
                                    <xsl:for-each select="/content/cludove.crest.spruce.catalog_parameter/record.crest">
                                        <xsl:sort order="ascending" select="buddle_id"/>
                                        <tr>
                                            <td style="overflow:hidden; text-overflow:ellipsis;">
                                                <xsl:attribute name="title"><xsl:value-of select="parameter_name" /></xsl:attribute>
                                                <xsl:value-of select="parameter_name" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="parameter_length" />
                                            </td>
                                            <td>
                                                <xsl:choose>
                                                    <xsl:when test="is_must='true'">
                                                        <xsl:text>是</xsl:text>
                                                    </xsl:when>
                                                    <xsl:otherwise/>
                                                </xsl:choose>
                                            </td>
                                            <td class="des">
                                                <xsl:value-of select="requirement" />
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </div>
                        </div>
                        <div>
                            <div class="configure-fr-input">效果评论:
                                <a href="javascript:void(0)"  class="api_search" onclick="showComment()">追加评论</a>
                            </div>
                            <div class="text">
                                <div id="comment_content" style="display:none; margin-top:5px;  margin-top:5px;">
                                    <div class="div_textarea">
                                        <textarea maxlength="1024" id="catalog_comment_content" rows="8">
                                        </textarea>
                                    </div>
                                    <p class="configure-fr-input">
                                        <a href="javascript:void(0)" class="api_search" id="api_search">
                                            <xsl:attribute name="buddle_id">
                                                <xsl:value-of select="/content/cludove.crest.spruce.catalog/record.crest/buddle_id"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="catalog_id">
                                                <xsl:value-of select="/content/cludove.crest.spruce.catalog/record.crest/identifier"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="onclick">onCatalogComment('<xsl:value-of select="/content/cludove.crest.spruce.catalog/record.crest/buddle_id"/>', '<xsl:value-of select="/content/cludove.crest.spruce.catalog/record.crest/identifier"/>')</xsl:attribute>
                                            <xsl:text>提交</xsl:text>
                                        </a>
                                    </p>
                                </div>
                                <ul class="ul_lis" id="show_catalog_comment_content" style="margin-top:20px;">
                                    <xsl:for-each select="/content/cludove.crest.spruce.catalog_comment/record.crest">
                                        <li class="clearfix" style="margin-bottom:24px;">
                                            <p style="line-height:20px; float:left; word-break:break-all">
                                                <xsl:value-of select="content"/>
                                            </p>
                                            <div style="float:right;color:#6c6c6c;">
                                                <xsl:value-of select="substring(comment_time,1,19)"/>
                                            </div>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </div>
                    </div>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="count(parameter.cludove/catalog_id) = 0 and count(parameter.cludove/buddle_id) = 0">
                            <div class="configure-fr">
                                <table style="table-layout: fixed;">
                                    <tr>
                                        <th class="th7">应用标识</th>
                                        <th class="th7">应用名字</th>
                                        <th>应用描述</th>
                                    </tr>
                                    <xsl:for-each select="/content/cludove.crest.spruce.buddle/record.crest">
                                        <xsl:sort order="ascending" select="identifier"/>
                                        <xsl:if test="identifier != 'diginter' and  identifier != 'infoinge'">
                                            <tr>
                                                <td>
                                                    <xsl:value-of  select="identifier"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of  select="name"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="description" />
                                                </td>
                                            </tr>
                                        </xsl:if>
                                    </xsl:for-each>
                                </table>
                            </div>
                        </xsl:when>
                        <xsl:otherwise>
                            <div class="main2">
                                <p class="configure-fr-input">
                                    <input type="text" class="input-1" id="search_keyword" placeholder="请输入目录标识或目录名字">
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
                            </div>
                            <div class="configure-fr" id="api_catalog_list">
                                <table style="margin:20px 0 0 20px; table-layout: fixed;">
                                    <xsl:variable name="permission">
                                        <xsl:value-of select="/content/parameter.cludove/has_permission"/>
                                    </xsl:variable>
                                    <tr>
                                        <th>目录标识</th>
                                        <th>目录名字</th>
                                        <th>功能描述</th>
                                        <th style="width:7%">判断权限</th>
                                        <th style="width:7%">能否融合</th>
                                        <th>备注</th>
                                    </tr>
                                    <xsl:choose>
                                        <xsl:when test="parameter.cludove/catalog_type = 'function'">
                                            <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                                                <xsl:sort order="ascending" select="identifier"/>
                                                <xsl:variable name="buddle_id">
                                                    <xsl:value-of select="buddle_id"/>
                                                </xsl:variable>
                                                <xsl:variable name="catalog_id">
                                                    <xsl:value-of select="identifier"/>
                                                </xsl:variable>
                                                <xsl:if test="type = 'function'">
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
                                                                                <xsl:attribute name="title">需要授权，请联系管理员
                                                                                    <xsl:choose>
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
                                                        <td onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
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
                                                </xsl:if>
                                            </xsl:for-each>
                                        </xsl:when>
                                        <xsl:when test="parameter.cludove/catalog_type = 'migration'">
                                            <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                                                <xsl:sort order="ascending" select="identifier"/>
                                                <xsl:variable name="buddle_id">
                                                    <xsl:value-of select="buddle_id"/>
                                                </xsl:variable>
                                                <xsl:variable name="catalog_id">
                                                    <xsl:value-of select="identifier"/>
                                                </xsl:variable>
                                                <xsl:if test="type = 'migration'">
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
                                                                                <xsl:attribute name="title">需要授权，请联系管理员
                                                                                    <xsl:choose>
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
                                                        <td onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
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
                                                </xsl:if>
                                            </xsl:for-each>
                                        </xsl:when>
                                        <xsl:when test="parameter.cludove/catalog_type = 'synchronization'">
                                            <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                                                <xsl:sort order="ascending" select="identifier"/>
                                                <xsl:variable name="buddle_id">
                                                    <xsl:value-of select="buddle_id"/>
                                                </xsl:variable>
                                                <xsl:variable name="catalog_id">
                                                    <xsl:value-of select="identifier"/>
                                                </xsl:variable>
                                                <xsl:if test="type = 'synchronization'">
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
                                                                                <xsl:attribute name="title">需要授权，请联系管理员
                                                                                    <xsl:choose>
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
                                                        <td onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space:nowrap; '">
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
                                                </xsl:if>
                                            </xsl:for-each>
                                        </xsl:when>
                                        <xsl:otherwise />
                                    </xsl:choose>
                                </table>
                            </div>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
            <div class="configure-fl2-top-tit">
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
