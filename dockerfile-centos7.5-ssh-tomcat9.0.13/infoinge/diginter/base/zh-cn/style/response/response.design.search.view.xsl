<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="text"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <xsl:text>[[</xsl:text>
        <xsl:text>[</xsl:text>
        <xsl:variable name="data_id">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>]</xsl:text>
            <xsl:text>.[</xsl:text>
            <xsl:value-of select="parameter.cludove/catalog_id"/>
            <xsl:text>]</xsl:text>
        </xsl:variable>
        <!--左侧顶部功能设计数据元数据-->
        <xsl:if test="count(cludove.crest.spruce.data_metadata/record.crest[data_id = $data_id]) > 0">
            <xsl:variable name="data_code">
                <xsl:text>catalog.response</xsl:text>
            </xsl:variable>
            <xsl:text>{</xsl:text>
            <xsl:text>key:"</xsl:text>
            <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="$data_code"/>
            <xsl:text>",code:"</xsl:text>
            <xsl:value-of select="$data_code"/>
            <xsl:text>",identifier:"</xsl:text>
            <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
            <xsl:text>",resource_name:"</xsl:text>
            <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
            <xsl:text>"</xsl:text>
            <xsl:text>,fields:[</xsl:text>
            <xsl:for-each select="/content/cludove.crest.spruce.data_metadata/record.crest[data_id = $data_id and data_direct ='input']">
                <xsl:if test="position() > 1">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>{</xsl:text>
                <xsl:text>name:"</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:text>",data_code:"</xsl:text>
                <xsl:value-of select="$data_code"/>
                <xsl:text>",info:"</xsl:text>
                <xsl:value-of select="type"/>
                <xsl:text>[</xsl:text>
                <xsl:value-of select="length"/>
                <xsl:text>]</xsl:text>
                <xsl:value-of select="remark"/>
                <xsl:text>",location:"1",type:"</xsl:text>
                <xsl:value-of select="type"/>
                <xsl:text>",length:"</xsl:text>
                <xsl:value-of select="length"/>
                <xsl:text>",primary:"</xsl:text>
                <xsl:value-of select="PRIMARY_NAME"/>
                <xsl:text>"}</xsl:text>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
            <xsl:text>},</xsl:text>
        </xsl:if>
        <!--循环输出左侧功能目录数据元数据-->
        <xsl:for-each select="cludove.crest.spruce.data/record.crest[operation != 'upload' and operation != 'download']">
            <xsl:sort order="ascending" data-type="number" select="position"/>
            <!--里面变量存储ID从metadata取出数据-->
            <xsl:variable name="metadata_select">
                <xsl:choose>
                    <xsl:when test="type = 'Hinge'">
                        <xsl:value-of select="connection_id"/>
                        <xsl:text>.</xsl:text>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="resource_buddle"/>
                        <xsl:text>]</xsl:text>
                        <xsl:text>.[</xsl:text>
                        <xsl:value-of select="resource_name"/>
                        <xsl:text>]</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="connection_id"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="resource_name"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:variable name="identifier">
                <xsl:value-of select="connection_id"/>
            </xsl:variable>
            <xsl:variable name="resource_name">
                <xsl:value-of select="resource_name"/>
            </xsl:variable>
            <xsl:variable name="data_code">
                <xsl:value-of select="code"/>
            </xsl:variable>
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
            <xsl:text>key:"</xsl:text>
            <xsl:value-of select="resource_name"/>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text>",code:"</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text>",operation:"</xsl:text>
            <xsl:value-of select="operation"/>
            <xsl:text>",position:"</xsl:text>
            <xsl:value-of select="position"/>
            <xsl:text>",identifier:"</xsl:text>
            <xsl:choose>
                <xsl:when test="type='Class' or type = 'WS'">
                    <xsl:value-of select="resource_name"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="connection_id"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>",resource_name:"</xsl:text>
            <xsl:choose>
                <xsl:when test="type='Class' or type = 'WS'"/>
                <xsl:otherwise>
                    <xsl:value-of select="resource_name"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>"</xsl:text>
            <xsl:text>,fields:[</xsl:text>
            <xsl:choose>
                <xsl:when test="count(/content/metadata[@id = $metadata_select]/record.crest[data_direct]) > 0">
                    <xsl:for-each select="/content/metadata[@id = $metadata_select]/record.crest[data_direct = 'output']">
                        <xsl:variable name="field_name">
                            <xsl:value-of select="name"/>
                        </xsl:variable>
                        <xsl:if test="position() > 1">
                            <xsl:text>,</xsl:text>
                        </xsl:if>
                        <xsl:text>{</xsl:text>
                        <xsl:text>name:"</xsl:text>
                        <xsl:value-of select="name"/>
                        <xsl:text>",data_code:"</xsl:text>
                        <xsl:value-of select="$data_code"/>
                        <xsl:text>",info:"</xsl:text>
                        <xsl:call-template name="sql_types_show">
                            <xsl:with-param name="field_type">
                                <xsl:value-of select="type"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="length"/>
                        <xsl:text>]</xsl:text>
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $resource_name and identifier = $identifier]) > 0">
                                <xsl:value-of select="/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $resource_name and identifier = $identifier]/field_label"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="remark"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>",location:"1",type:"</xsl:text>
                        <xsl:value-of select="type"/>
                        <xsl:text>",length:"</xsl:text>
                        <xsl:value-of select="length"/>
                        <xsl:text>",primary:"</xsl:text>
                        <xsl:value-of select="primary"/>
                        <xsl:text>"}</xsl:text>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:for-each select="/content/metadata[@id = $metadata_select]/record.crest">
                        <xsl:variable name="field_name">
                            <xsl:value-of select="name"/>
                        </xsl:variable>
                        <xsl:if test="position() > 1">
                            <xsl:text>,</xsl:text>
                        </xsl:if>
                        <xsl:text>{</xsl:text>
                        <xsl:text>name:"</xsl:text>
                        <xsl:value-of select="name"/>
                        <xsl:text>",data_code:"</xsl:text>
                        <xsl:value-of select="$data_code"/>
                        <xsl:text>",info:"</xsl:text>
                        <xsl:call-template name="sql_types_show">
                            <xsl:with-param name="field_type">
                                <xsl:value-of select="type"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="length"/>
                        <xsl:text>]</xsl:text>
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $resource_name and identifier = $identifier]) > 0">
                                <xsl:value-of select="/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $resource_name and identifier = $identifier]/field_label"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="remark"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>",location:"1",type:"</xsl:text>
                        <xsl:value-of select="type"/>
                        <xsl:text>",length:"</xsl:text>
                        <xsl:value-of select="length"/>
                        <xsl:text>",primary:"</xsl:text>
                        <xsl:value-of select="primary"/>
                        <xsl:text>"}</xsl:text>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text>
        </xsl:for-each>
        <xsl:text>],[</xsl:text>
        <!--右侧顶部功能设计数据元数据-->
        <xsl:if test="count(cludove.crest.spruce.data_metadata/record.crest[data_id = $data_id]) > 0">
            <xsl:variable name="data_code">
                <xsl:text>catalog.response</xsl:text>
            </xsl:variable>
            <xsl:text>{</xsl:text>
            <xsl:text>key:"</xsl:text>
            <xsl:value-of select="/content/cludove.crest.spruce.data_metadata/record.crest[data_id = $data_id]/data_id"/>
            <xsl:text>",code:"</xsl:text>
            <xsl:value-of select="$data_code"/>
            <xsl:text>"</xsl:text>
            <xsl:text>,fields:[</xsl:text>
            <xsl:for-each select="/content/cludove.crest.spruce.data_metadata/record.crest[data_id = $data_id and data_direct ='output']">
                <xsl:if test="position() > 1">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>{</xsl:text>
                <xsl:text>name:"</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:text>",data_code:"</xsl:text>
                <xsl:value-of select="$data_code"/>
                <xsl:text>",info:"</xsl:text>
                <xsl:value-of select="type"/>
                <xsl:text>[</xsl:text>
                <xsl:value-of select="length"/>
                <xsl:text>]</xsl:text>
                <xsl:value-of select="remark"/>
                <xsl:text>",location:"2",type:"</xsl:text>
                <xsl:value-of select="type"/>
                <xsl:text>",length:"</xsl:text>
                <xsl:value-of select="length"/>
                <xsl:text>",primary:"</xsl:text>
                <xsl:value-of select="PRIMARY_NAME"/>
                <xsl:text>"}</xsl:text>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text>
        </xsl:if>
        <xsl:text>]</xsl:text>
        <xsl:text>],[</xsl:text>
        <xsl:for-each select="/content/cludove.crest.spruce.data_mapping/record.crest">
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
            <xsl:text>fromPort:"</xsl:text>
            <xsl:value-of select="s_field"/>
            <xsl:text>",toPort:"</xsl:text>
            <xsl:value-of select="r_field"/>
            <xsl:text>",code:"</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text>",prefix_symbol:"</xsl:text>
            <xsl:value-of select="prefix_symbol"/>
            <xsl:text>",suffix_symbol:"</xsl:text>
            <xsl:value-of select="suffix_symbol"/>
            <xsl:text>",mapping_position:"</xsl:text>
            <xsl:value-of select="position"/>
            <xsl:text>",from:"</xsl:text>
            <xsl:variable name="s_data_code">
                <xsl:value-of select="s_data_code"/>
            </xsl:variable>
            <xsl:variable name="s_type">
                <xsl:value-of select="/content/cludove.crest.spruce.data/record.crest[code = $s_data_code]/type"/>
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="$s_type='Class' or $s_type='WS'">
                    <xsl:value-of select="s_identifier"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="s_resource_name"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="s_data_code"/>
            <xsl:text>",to:"</xsl:text>
            <xsl:text>[</xsl:text>
            <xsl:value-of select="r_identifier"/>
            <xsl:text>].[</xsl:text>
            <xsl:value-of select="r_resource_name"/>
            <xsl:text>]</xsl:text>
            <xsl:text>"}</xsl:text>
        </xsl:for-each>
        <xsl:text>]]</xsl:text>
    </xsl:template>
</xsl:stylesheet>
