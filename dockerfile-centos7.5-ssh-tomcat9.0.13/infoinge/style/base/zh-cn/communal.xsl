<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="text"/>
    <xsl:include href="common.xsl"/>
    <xsl:template name="buddle">
		<xsl:text><![CDATA[]]></xsl:text>
	</xsl:template>
    <xsl:template name="output_parameter_content">
        <xsl:param name="class"/>
        <!-- 判断输出类型 -->
        <xsl:choose>
            <!-- select用选取条件输出xsl:value-of标签 -->
            <xsl:when test="$class = 'select'">
                <xsl:text><![CDATA[<xsl:value-of select="]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA["/>]]></xsl:text>
            </xsl:when>
            <!-- select用选取条件输出xsl:text标签 -->
            <xsl:when test="$class = 'text'">
                <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
            </xsl:when>
            <!-- select_encode需要对选取条件输出xsl:value-of标签后的内容进行编码(:encode) -->
            <xsl:when test="$class = 'select_encode'">
                <xsl:text><![CDATA[<xsl:value-of select="]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA["/>]]></xsl:text>
                <xsl:text><![CDATA[<xsl:text>:encode</xsl:text>]]></xsl:text>
            </xsl:when>
            <!-- select_decode需要对选取条件输出xsl:value-of标签后的内容进行解码(:decode) -->
            <xsl:when test="$class = 'select_decode'">
                <xsl:text><![CDATA[<xsl:value-of select="]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA["/>]]></xsl:text>
                <xsl:text><![CDATA[<xsl:text>:decode</xsl:text>]]></xsl:text>
            </xsl:when>
            <!-- text_encode需要对选取条件输出xsl:text标签后的内容进行编码(:encode) -->
            <xsl:when test="$class = 'text_encode'">
                <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
                <xsl:text><![CDATA[<xsl:text>:encode</xsl:text>]]></xsl:text>
            </xsl:when>
            <!-- text_decode需要对选取条件输出xsl:text标签后的内容进行解码(:decode) -->
            <xsl:when test="$class='text_decode'">
                <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
                <xsl:text><![CDATA[<xsl:text>:decode</xsl:text>]]></xsl:text>
            </xsl:when>
            <!-- class需要用选取条件指示的类动态生成改参数的值 -->
            <xsl:when test="$class = 'class'">
                <xsl:text><![CDATA[<xsl:text>class:]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="output_value_tag">
        <xsl:param name="value_code"/>
        <xsl:if
                test="count(/content/configuration.cludove/cludove.crest.spruce.value_tag/record.crest[value_code = $value_code]) &gt; 0">
            <!-- 输出参数 -->
            <xsl:text><![CDATA[<parameter>]]></xsl:text>
            <xsl:for-each
                    select="/content/configuration.cludove/cludove.crest.spruce.value_tag/record.crest[value_code = $value_code]">
                <xsl:sort order="ascending" select="position"/>
                <!-- 输出参数 -->
                <xsl:call-template name="output_tag_item">
                    <xsl:with-param name="tag_code">
                        <xsl:value-of select="code"/>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- 输出参数 -->
            <xsl:text><![CDATA[</parameter>]]></xsl:text>
        </xsl:if>
    </xsl:template>
    <xsl:template name="output_condition_tag">
        <xsl:param name="condition_code"/>
        <xsl:if
                test="count(/content/configuration.cludove/cludove.crest.spruce.condition_tag/record.crest[condition_code = $condition_code]) &gt; 0">
            <!-- 输出参数 -->
            <xsl:text><![CDATA[<parameter>]]></xsl:text>
            <xsl:for-each
                    select="/content/configuration.cludove/cludove.crest.spruce.condition_tag/record.crest[condition_code = $condition_code]">
                <xsl:sort order="ascending" select="position"/>
                <!-- 输出参数 -->
                <xsl:call-template name="output_tag_item">
                    <xsl:with-param name="tag_code">
                        <xsl:value-of select="code"/>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- 输出参数 -->
            <xsl:text><![CDATA[</parameter>]]></xsl:text>
        </xsl:if>
    </xsl:template>
    <xsl:template name="output_tag_item">
        <xsl:param name="tag_code"/>
        <!-- 输出参数名 -->
        <xsl:text><![CDATA[<]]></xsl:text>
        <xsl:value-of select="tag_name"/>
        <xsl:text><![CDATA[>]]></xsl:text>
        <xsl:for-each
                select="/content/configuration.cludove/cludove.crest.spruce.tag_item/record.crest[tag_code = $tag_code]">
            <xsl:sort order="ascending" select="position"/>
            <!-- 输出标记项目条件起始标记 -->
            <xsl:choose>
                <xsl:when test="test_expression != ''">
                    <!-- 输出条件不为空，则用xsl:if判断输出 -->
                    <xsl:text><![CDATA[<xsl:if test="]]></xsl:text>
                    <xsl:value-of select="test_expression"/>
                    <xsl:text><![CDATA[">]]></xsl:text>
                </xsl:when>
                <!-- 输出条件为空，则直接输出 -->
                <xsl:otherwise/>
            </xsl:choose>
            <!-- 输出参数内容 -->
            <xsl:call-template name="output_parameter_content">
                <xsl:with-param name="class">
                    <xsl:value-of select="class"/>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:choose>
                <xsl:when test="test_expression != ''">
                    <!-- 输出条件不为空，则用xsl:if判断输出 -->
                    <xsl:text><![CDATA[</xsl:if>]]></xsl:text>
                </xsl:when>
                <!-- 输出条件为空，则直接输出 -->
                <xsl:otherwise/>
            </xsl:choose>
        </xsl:for-each>
        <!-- 输出参数名 -->
        <xsl:text><![CDATA[</]]></xsl:text>
        <xsl:value-of select="tag_name"/>
        <xsl:text><![CDATA[>]]></xsl:text>
    </xsl:template>
    <xsl:template name="output_expression_item">
        <xsl:param name="expression_code"/>
        <xsl:for-each
                select="/content/configuration.cludove/cludove.crest.spruce.expression_item/record.crest[expression_code = $expression_code]">
            <xsl:sort order="ascending" select="position"/>
            <xsl:text><![CDATA[<xsl:text> ]]></xsl:text>
            <xsl:value-of select="logical_symbol"/>
            <xsl:text> </xsl:text>
            <!-- 按left_brace_number指定的数量输出左括号 -->
            <xsl:call-template name="output_expression_left_brace">
                <xsl:with-param name="expression_code">
                    <xsl:value-of select="$expression_code"/>
                </xsl:with-param>
                <xsl:with-param name="output_number">
                    <xsl:text>0</xsl:text>
                </xsl:with-param>
            </xsl:call-template>
            <!-- 输出字段名字 -->
            <xsl:value-of select="field_name"/>
            <xsl:text> </xsl:text>
            <!-- 输出字段逻辑 -->
            <xsl:value-of select="sql_operator"/>
            <xsl:text> </xsl:text>
            <!-- 输出字段类型 -->
            <xsl:call-template name="output_left_inclusion_symbol_by_type">
                <xsl:with-param name="field_type">
                    <xsl:value-of select="field_type"/>
                </xsl:with-param>
                <xsl:with-param name="resource_driver">
                    <xsl:value-of select="/content/resource.configuration"/>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
            <!-- 输出参数内容 -->
            <xsl:call-template name="output_parameter_content">
                <xsl:with-param name="class">
                    <xsl:value-of select="class"/>
                </xsl:with-param>
            </xsl:call-template>
            <!-- 输出字段类型 -->
            <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
            <xsl:call-template name="output_right_inclusion_symbol_by_type">
                <xsl:with-param name="field_type">
                    <xsl:value-of select="field_type"/>
                </xsl:with-param>
                <xsl:with-param name="resource_driver">
                    <xsl:value-of select="/content/resource.configuration"/>
                </xsl:with-param>
            </xsl:call-template>
            <!-- 按right_brace_number指定的数量输出右括号 -->
            <xsl:call-template name="output_expression_right_brace">
                <xsl:with-param name="expression_code">
                    <xsl:value-of select="$expression_code"/>
                </xsl:with-param>
                <xsl:with-param name="output_number">
                    <xsl:text>0</xsl:text>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="output_expression_left_brace">
        <xsl:param name="expression_code"/>
        <xsl:param name="output_number"/>
        <xsl:if
                test="/content/configuration.cludove/cludove.crest.spruce.expression_item/record.crest[expression_code = $expression_code]/left_brace_number &gt; $output_number">
            <xsl:text>(</xsl:text>
            <xsl:call-template name="output_expression_left_brace">
                <xsl:with-param name="expression_code">
                    <xsl:value-of select="$expression_code"/>
                </xsl:with-param>
                <xsl:with-param name="output_number">
                    <xsl:value-of select="$output_number + 1"/>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="output_expression_right_brace">
        <xsl:param name="expression_code"/>
        <xsl:param name="output_number"/>
        <xsl:if
                test="/content/configuration.cludove/cludove.crest.spruce.expression_item/record.crest[expression_code = $expression_code]/right_brace_number &gt; $output_number">
            <xsl:text>)</xsl:text>
            <xsl:call-template name="output_expression_right_brace">
                <xsl:with-param name="expression_code">
                    <xsl:value-of select="$expression_code"/>
                </xsl:with-param>
                <xsl:with-param name="output_number">
                    <xsl:value-of select="$output_number + 1"/>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    <xsl:template name="output_response_item">
        <xsl:param name="response_code"/>
        <xsl:param name="response_format"/>
        <xsl:param name="position"/>
        <!-- 输出响应项目 -->
        <xsl:choose>
            <xsl:when
                    test="count(/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code and test_expression = '']) &gt; 1">
                <xsl:text><![CDATA[<error>]]></xsl:text>
                <xsl:value-of select="/content/regulation.configuration/buddle_id"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="/content/regulation.configuration/catalog_id"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="$position"/>
                <xsl:text>定义了响应项目多个为空的输出条件，无法生成xsl:otherwise输出内容</xsl:text>
                <xsl:text><![CDATA[</error>]]></xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when
                            test="count(/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]) &gt; 1">
                        <!-- 多个响应项目，用xsl:choose输出不同条件下的响应项目 -->
                        <xsl:text><![CDATA[<xsl:choose>]]></xsl:text>
                        <!-- 开始循环输出response_item中的配置 -->
                        <xsl:for-each
                                select="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]">
                            <xsl:sort order="ascending" select="position"/>
                            <xsl:variable name="item_code">
                                <xsl:value-of select="code"/>
                            </xsl:variable>
                            <!-- 输出响应项目条件起始标记 -->
                            <xsl:choose>
                                <xsl:when
                                        test="position() = count(/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]) and test_expression != ''">
                                    <xsl:text><![CDATA[<error>]]></xsl:text>
                                    <xsl:value-of select="/content/regulation.configuration/buddle_id"/>
                                    <xsl:text>.</xsl:text>
                                    <xsl:value-of select="/content/regulation.configuration/catalog_id"/>
                                    <xsl:text>定义了多个响应项目，但最后一个响应项目输出条件不为空，无法生成xsl:otherwise输出内容</xsl:text>
                                    <xsl:text><![CDATA[</error>]]></xsl:text>
                                </xsl:when>
                                <xsl:when test="test_expression != ''">
                                    <!-- 输出条件不为空，则用xsl:when判断输出 -->
                                    <xsl:text><![CDATA[<xsl:when test="]]></xsl:text>
                                    <xsl:value-of select="test_expression"/>
                                    <xsl:text><![CDATA[">]]></xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <!-- 输出条件为空，则一定是最后一个响应项目，用xsl:otherwise输出 -->
                                    <xsl:text><![CDATA[<xsl:otherwise>]]></xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:if test="$response_format = 'json' and position() > 1">
                                <xsl:text><![CDATA[<xsl:text>, </xsl:text>]]></xsl:text>
                            </xsl:if>
                            <!-- 输出项目名字 -->
                            <xsl:if test="$response_format = 'json'">
                                <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                                <xsl:value-of select="item_name"/>
                                <!-- 输出项目取值 -->
                                <xsl:choose>
                                    <xsl:when test="start_symbol = ''">
                                        <xsl:text><![CDATA[:"]]></xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text><![CDATA[:]]></xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
                            </xsl:if>
                            <!-- 输出起始符号 -->
                            <xsl:choose>
                                <xsl:when test="$response_format = 'xml' or $response_format = 'html'">
                                    <xsl:if test="start_symbol != ''">
                                        <xsl:text><![CDATA[<]]></xsl:text>
                                        <xsl:value-of select="start_symbol" />
                                        <xsl:text><![CDATA[>]]></xsl:text>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:if test="start_symbol != ''">
                                        <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                                        <xsl:value-of select="start_symbol" />
                                        <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>
                            <!-- 响应项目循环取值 -->
                            <xsl:choose>
                                <xsl:when
                                        test="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[code = $item_code]/is_for_each = 'true' and /content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[code = $item_code]/select_expression = ''">
                                    <xsl:text><![CDATA[<error>]]></xsl:text>
                                    <xsl:value-of select="/content/regulation.configuration/buddle_id"/>
                                    <xsl:text>.</xsl:text>
                                    <xsl:value-of select="/content/regulation.configuration/catalog_id"/>
                                    <xsl:text>的响应项目定义了循环取值却没有对应的选取条件</xsl:text>
                                    <xsl:text><![CDATA[</error>]]></xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <!-- 判断item_code对应记录中循环取值及选取条件是否设置，是则输出xsl:for-each起始标记 -->
                                    <xsl:if
                                            test="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[code = $item_code]/is_for_each = 'true' and /content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[code = $item_code]/select_expression != ''">
                                        <xsl:text><![CDATA[<xsl:for-each select="]]></xsl:text>
                                        <xsl:value-of
                                                select="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[code = $item_code]/select_expression"/>
                                        <xsl:text><![CDATA[">]]></xsl:text>
                                    </xsl:if>
                                    <!-- 输出参数 -->
                                    <xsl:call-template name="output_item_value">
                                        <xsl:with-param name="response_format">
                                            <xsl:value-of select="$response_format"/>
                                        </xsl:with-param>
                                        <xsl:with-param name="item_code">
                                            <xsl:value-of select="$item_code"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                    <!-- 判断item_code对应记录中循环取值及选取条件是否设置，是则输出xsl:for-each结束标记 -->
                                    <xsl:if
                                            test="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[code = $item_code]/is_for_each = 'true' and /content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[code = $item_code]/select_expression != ''">
                                        <xsl:text><![CDATA[</xsl:for-each>]]></xsl:text>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>
                            <!-- 输出结束符号 -->
                            <xsl:choose>
                                <xsl:when test="$response_format = 'xml' or $response_format = 'html'">
                                    <xsl:if test="end_symbol != ''">
                                        <xsl:text><![CDATA[</]]></xsl:text>
                                        <xsl:value-of select="end_symbol" />
                                        <xsl:text><![CDATA[>]]></xsl:text>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:if test="end_symbol != ''">
                                        <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                                        <xsl:value-of select="end_symbol"/>
                                        <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:if test="$response_format = 'json'">
                                <xsl:choose>
                                    <xsl:when test="start_symbol = ''">
                                        <xsl:text><![CDATA[<xsl:text>"</xsl:text>]]></xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                            </xsl:if>
                            <!-- 输出响应项目条件结束标记 -->
                            <xsl:choose>
                                <xsl:when
                                        test="position() = count(/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]) and test_expression != ''"/>
                                <xsl:when test="test_expression != ''">
                                    <!-- 输出条件不为空，则用xsl:when判断输出 -->
                                    <xsl:text><![CDATA[</xsl:when>]]></xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <!-- 输出条件为空，则一定是最后一个响应项目，用xsl:otherwise输出 -->
                                    <xsl:text><![CDATA[</xsl:otherwise>]]></xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                        <!-- 多个响应项目，用xsl:choose输出不同条件下的响应项目 -->
                        <xsl:text><![CDATA[</xsl:choose>]]></xsl:text>
                    </xsl:when>
                    <xsl:when
                            test="count(/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]) = 1">
                        <!-- 单个响应项目，直接输出响应项目 -->
                        <!-- 输出起始符号 -->
                        <xsl:choose>
                            <xsl:when test="$response_format = 'xml' or $response_format = 'html'">
                                <xsl:if test="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/start_symbol != ''">
                                    <xsl:text><![CDATA[<]]></xsl:text>
                                    <xsl:value-of select="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/start_symbol" />
                                    <xsl:text><![CDATA[>]]></xsl:text>
                                </xsl:if>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:if test="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/start_symbol != ''">
                                    <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                                    <xsl:value-of select="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/start_symbol" />
                                    <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
                                </xsl:if>
                            </xsl:otherwise>
                        </xsl:choose>
                        <!-- 输出项目取值 -->
                        <xsl:call-template name="output_item_value">
                            <xsl:with-param name="response_format">
                                <xsl:value-of select="$response_format"/>
                            </xsl:with-param>
                            <xsl:with-param name="item_code">
                                <xsl:value-of
                                        select="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/code"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <!-- 输出结束符号 -->
                        <xsl:choose>
                            <xsl:when test="$response_format = 'xml' or $response_format = 'html'">
                                <xsl:if test="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/end_symbol != ''">
                                    <xsl:text><![CDATA[</]]></xsl:text>
                                    <xsl:value-of select="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/end_symbol" />
                                    <xsl:text><![CDATA[>]]></xsl:text>
                                </xsl:if>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:if test="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/end_symbol != ''">
                                    <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                                    <xsl:value-of select="/content/configuration.cludove/cludove.crest.spruce.response_item/record.crest[response_code = $response_code]/end_symbol"/>
                                    <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
                                </xsl:if>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- 没有配置参数，输出blank.configuration标记，以便解析时不生成样式单流 -->
                        <xsl:text><![CDATA[<blank.configuration/>]]></xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="output_item_value">
        <xsl:param name="response_format"/>
        <xsl:param name="item_code"/>
        <xsl:for-each
                select="/content/configuration.cludove/cludove.crest.spruce.item_value/record.crest[item_code = $item_code]">
            <xsl:sort order="ascending" select="position"/>
            <xsl:if test="$response_format = 'json' and position() > 1">
                <xsl:text><![CDATA[<xsl:text>, </xsl:text>]]></xsl:text>
            </xsl:if>
            <!-- 输出项目名字 -->
            <xsl:if test="$response_format = 'json'">
                <xsl:text><![CDATA[<xsl:text>]]></xsl:text>
                <xsl:value-of select="item_name"/>
                <!-- 输出项目取值 -->
                <xsl:text><![CDATA[:"]]></xsl:text>
                <xsl:text><![CDATA[</xsl:text>]]></xsl:text>
            </xsl:if>
            <xsl:call-template name="output_parameter_content">
                <xsl:with-param name="class">
                    <xsl:text>select</xsl:text>
                </xsl:with-param>
            </xsl:call-template>
            <xsl:if test="$response_format = 'json'">
                <xsl:text><![CDATA[<xsl:text>"</xsl:text>]]></xsl:text>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
