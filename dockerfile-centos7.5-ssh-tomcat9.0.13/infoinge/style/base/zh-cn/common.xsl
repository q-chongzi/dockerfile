<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="../common.xsl"/>
	<xsl:template name="lang">
		<xsl:call-template name="buddle"/>
	</xsl:template>
	<xsl:template name="number_abbreviation_show">
		<xsl:param name="number"/>
		<xsl:choose>
			<xsl:when test="$number &lt; 999999">
				<xsl:value-of select="$number"/>
			</xsl:when>
			<xsl:when test="$number &gt; 999999 and $number &lt; 100000000">
				<xsl:value-of select="floor($number div 1000000)"/>
				<xsl:text disable-output-escaping="yes">百万</xsl:text>
			</xsl:when>
			<xsl:when test="$number &gt; 99999999 and $number &lt; 100000000000">
				<xsl:value-of select="floor($number div 100000000)"/>
				<xsl:text disable-output-escaping="yes">亿</xsl:text>
			</xsl:when>
			<xsl:when test="$number &gt; 99999999999 and $number &lt; 10000000000000">
				<xsl:value-of select="floor($number div 100000000000)"/>
				<xsl:text disable-output-escaping="yes">千亿</xsl:text>
			</xsl:when>
			<xsl:when test="$number &gt; 9999999999999 and $number &lt; 1000000000000000">
				<xsl:value-of select="floor($number div 1000000000000)"/>
				<xsl:text disable-output-escaping="yes">兆</xsl:text>
			</xsl:when>
			<xsl:when test="$number &gt; 999999999999999 and $number &lt; 100000000000000000">
				<xsl:value-of select="floor($number div 1000000000000000)"/>
				<xsl:text disable-output-escaping="yes">千兆</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text disable-output-escaping="yes">未知</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="pagination_show">
		<xsl:param name="list_table_paginate_id"/>
		<xsl:param name="list_table_first_id"/>
		<xsl:param name="page_number"/>
		<xsl:param name="record_number"/>
		<xsl:param name="total_page"/>
		<xsl:param name="execute_statement"/>
		<xsl:param name="page_number_id"/>
		<xsl:param name="record_number_id"/>
		<div class="dataTables_paginate paging_full_numbers">
			<xsl:attribute name="id"><xsl:value-of select="$list_table_paginate_id"/></xsl:attribute>
			<a tabindex="0">
				<xsl:attribute name="id"><xsl:value-of select="$list_table_first_id"/></xsl:attribute>
				<xsl:choose>
					<xsl:when test="$page_number &gt; 0">
						<xsl:attribute name="class">first paginate_button</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="class">first paginate_button paginate_button_disabled</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:if test="$page_number &gt; 0">
					<xsl:attribute name="onclick">$('#<xsl:value-of select="$page_number_id"/>').val(0); <xsl:value-of select="$execute_statement"/></xsl:attribute>
				</xsl:if>
				<xsl:text disable-output-escaping="yes">首页</xsl:text>
			</a>
			<a tabindex="0">
				<xsl:choose>
					<xsl:when test="$page_number &gt; 0">
						<xsl:attribute name="class">previous paginate_button</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="class">previous paginate_button paginate_button_disabled</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:if test="$page_number &gt; 0">
					<xsl:attribute name="onclick">$('#<xsl:value-of select="$page_number_id"/>').val(<xsl:value-of select="$page_number - 1"/>); <xsl:value-of select="$execute_statement"/></xsl:attribute>
				</xsl:if>
				<xsl:text disable-output-escaping="yes">上一页</xsl:text>
			</a>
			<span style="padding-lef:15px;">
				<xsl:call-template name="pagination_show_number">
					<xsl:with-param name="start_number">
						<xsl:choose>
							<xsl:when test="$total_page &lt; 7">
								<xsl:text>1</xsl:text>
							</xsl:when>
							<xsl:when test="($total_page - $page_number + 1) &gt; 3">
								<xsl:choose>
									<xsl:when test="$page_number &gt; 3">
										<xsl:value-of select="$page_number - 2"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>1</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$total_page - 7"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:with-param>
					<xsl:with-param name="current_number">
						<xsl:value-of select="$page_number + 1"/>
					</xsl:with-param>
					<xsl:with-param name="total_number">
						<xsl:choose>
							<xsl:when test="($total_page - $page_number + 1) &gt; 7">
								<xsl:choose>
									<xsl:when test="$page_number = 0">
										<xsl:value-of select="$page_number + 7"/>
									</xsl:when>
									<xsl:when test="$page_number = 1">
										<xsl:value-of select="$page_number + 6"/>
									</xsl:when>
									<xsl:when test="$page_number = 2">
										<xsl:value-of select="$page_number + 5"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="$page_number + 4"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$total_page"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:with-param>
					<xsl:with-param name="execute_statement">
						<xsl:value-of select="$execute_statement"/>
					</xsl:with-param>
					<xsl:with-param name="page_number_id">
						<xsl:value-of select="$page_number_id"/>
					</xsl:with-param>
				</xsl:call-template>
			</span>
			<a tabindex="0">
				<xsl:choose>
					<xsl:when test="$total_page &gt; 1 and ($page_number + 1 &lt; $total_page)">
						<xsl:attribute name="class">next paginate_button</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="class">next  paginate_button paginate_button_disabled</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:if test="$total_page &gt; 1 and ($page_number + 1 &lt; $total_page)">
					<xsl:attribute name="onclick">$('#<xsl:value-of select="$page_number_id"/>').val(<xsl:value-of select="$page_number + 1"/>); <xsl:value-of select="$execute_statement"/></xsl:attribute>
				</xsl:if>
				<xsl:text disable-output-escaping="yes">下一页</xsl:text>
			</a>
			<a tabindex="0">
				<xsl:choose>
					<xsl:when test="$total_page &gt; 1 and ($page_number + 1 &lt; $total_page)">
						<xsl:attribute name="class">last paginate_button</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="class">last  paginate_button paginate_button_disabled</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:if test="$total_page &gt; 1 and ($page_number + 1 &lt; $total_page)">
					<xsl:attribute name="onclick">$('#<xsl:value-of select="$page_number_id"/>').val(<xsl:value-of select="$total_page - 1"/>); <xsl:value-of select="$execute_statement"/></xsl:attribute>
				</xsl:if>
				<xsl:text disable-output-escaping="yes">尾页</xsl:text>
			</a>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
			<input type="hidden">
				<xsl:attribute name="id"><xsl:value-of select="$page_number_id"/></xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="$page_number"/></xsl:attribute>
			</input>
			<select size="1" name="list_table_length" class="slect_num" aria-controls="list_table">
				<xsl:attribute name="id"><xsl:value-of select="$record_number_id"/></xsl:attribute>
				<xsl:attribute name="onchange">$('#<xsl:value-of select="$page_number_id"/>').val(0); <xsl:value-of select="$execute_statement"/></xsl:attribute>
				<option role="option" value="2">
					<xsl:if test="$record_number = 2">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">2</xsl:text>
				</option>
				<option role="option" value="5">
					<xsl:if test="$record_number = 5">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">5</xsl:text>
				</option>
				<option role="option" value="10">
					<xsl:if test="$record_number = 10">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">10</xsl:text>
				</option>
				<option role="option" value="15">
					<xsl:if test="$record_number = 15 or $record_number = 0">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">15</xsl:text>
				</option>
				<option role="option" value="20">
					<xsl:if test="$record_number = 20">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">20</xsl:text>
				</option>
				<option role="option" value="25">
					<xsl:if test="$record_number = 25">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">25</xsl:text>
				</option>
				<option role="option" value="30">
					<xsl:if test="$record_number = 30">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">30</xsl:text>
				</option>
				<option role="option" value="35">
					<xsl:if test="$record_number = 35">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">35</xsl:text>
				</option>
				<option role="option" value="40">
					<xsl:if test="$record_number = 40">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">40</xsl:text>
				</option>
				<option role="option" value="45">
					<xsl:if test="$record_number = 45">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">45</xsl:text>
				</option>
				<option role="option" value="50">
					<xsl:if test="$record_number = 50">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">50</xsl:text>
				</option>
				<option role="option" value="55">
					<xsl:if test="$record_number = 55">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">55</xsl:text>
				</option>
				<option role="option" value="60">
					<xsl:if test="$record_number = 60">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">60</xsl:text>
				</option>
				<option role="option" value="65">
					<xsl:if test="$record_number = 65">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">65</xsl:text>
				</option>
				<option role="option" value="70">
					<xsl:if test="$record_number = 70">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">70</xsl:text>
				</option>
				<option role="option" value="75">
					<xsl:if test="$record_number = 75">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">75</xsl:text>
				</option>
				<option role="option" value="80">
					<xsl:if test="$record_number = 80">
						<xsl:attribute name="selected">selected</xsl:attribute>
					</xsl:if>
					<xsl:text disable-output-escaping="yes">80</xsl:text>
				</option>
			</select>
		</div>
	</xsl:template>
</xsl:stylesheet>
