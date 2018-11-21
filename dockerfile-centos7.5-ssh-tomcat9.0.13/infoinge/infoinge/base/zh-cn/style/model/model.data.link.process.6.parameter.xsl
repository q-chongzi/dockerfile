<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="r_data_code">
            <xsl:value-of select="/content/parameter.cludove/r_data_code"/>
        </xsl:variable>
        <xsl:variable name="s_data_code">
            <xsl:value-of select="/content/parameter.cludove/s_data_code"/>
        </xsl:variable>
        <!--如果2个 data_code 不同则表示本次为新增操作 或 右侧跨表重连-->
        <xsl:if test="parameter.cludove/remove_r_data_code != $r_data_code">
            <parameter>
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.data_value[1]/record.crest) > 0">
                        <VALUE_CODE>
                            <xsl:value-of select="/content/cludove.crest.spruce.data_value[1]/record.crest/code"/>
                        </VALUE_CODE>
                    </xsl:when>
                    <xsl:otherwise>
                        <VALUE_CODE>
                            <xsl:value-of select="/content/cludove.crest.spruce.data_value[2]/record.crest/code"/>
                        </VALUE_CODE>
                    </xsl:otherwise>
                </xsl:choose>
                <BUDDLE_ID>
                    <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
                </BUDDLE_ID>
                <CATALOG_ID>
                    <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
                </CATALOG_ID>
                <S_DATA_CODE>
                    <xsl:value-of select="/content/parameter.cludove/s_data_code"/>
                </S_DATA_CODE>
                <S_IDENTIFIER>
                    <xsl:value-of select="/content/parameter.cludove/s_identifier"/>
                </S_IDENTIFIER>
                <S_RESOURCE_NAME>
                    <xsl:value-of select="/content/parameter.cludove/s_resource_name"/>
                </S_RESOURCE_NAME>
                <S_FIELD>
                    <xsl:value-of select="/content/parameter.cludove/s_field"/>
                </S_FIELD>
                <R_DATA_CODE>
                    <xsl:value-of select="/content/parameter.cludove/r_data_code"/>
                </R_DATA_CODE>
                <R_IDENTIFIER>
                    <xsl:value-of select="/content/parameter.cludove/r_identifier"/>
                </R_IDENTIFIER>
                <R_RESOURCE_NAME>
                    <xsl:value-of select="/content/parameter.cludove/r_resource_name"/>
                </R_RESOURCE_NAME>
                <R_FIELD>
                    <xsl:value-of select="/content/parameter.cludove/r_field"/>
                </R_FIELD>
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.catalog/record.crest) > 0">
                        <xsl:choose>
                            <xsl:when test="/content/cludove.crest.spruce.data/record.crest/code = $s_data_code">
                                <IS_MAIN>
                                    <xsl:text>true</xsl:text>
                                </IS_MAIN>
                            </xsl:when>
                            <xsl:otherwise>
                                <IS_MAIN>
                                    <xsl:text>false</xsl:text>
                                </IS_MAIN>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <!--外层为value_data 数据是否拥有主数据-->
                            <xsl:when test="count(/content/cludove.crest.spruce.data_mapping[1]/record.crest) > 0">
                                <xsl:choose>
                                    <!--内层为左侧data 数据是否为主数据-->
                                    <xsl:when test="/content/cludove.crest.spruce.data_mapping[2]/record.crest/s_data_code = $s_data_code">
                                        <IS_MAIN>
                                            <xsl:text>true</xsl:text>
                                        </IS_MAIN>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <IS_MAIN>
                                            <xsl:text>false</xsl:text>
                                        </IS_MAIN>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:otherwise>
                                <IS_MAIN>
                                    <xsl:text>true</xsl:text>
                                </IS_MAIN>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </parameter>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
