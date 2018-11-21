<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="radio_box">
			<input name="p_type" type="radio" class="input_radio" id="DB" p_type="DB" checked="checked" /><label for="DB">数据库驱动</label>
			<input name="p_type" type="radio" class="input_radio" id="Hinge.Data" p_type="Hinge.Data"/><label for="Hinge.Data">功能数据类</label>
			<input name="p_type" type="radio" class="input_radio" id="WS" p_type="WS" /><label for="WS">外部数据类</label>
			<input name="p_type" type="radio" class="input_radio" id="Hinge.Quote" p_type="Hinge.Quote" /><label for="Hinge.Quote">数据加工类</label>
			<input name="p_type" type="radio" class="input_radio" id="Cleanout.Regulation" p_type="Cleanout.Regulation" /><label for="Cleanout.Regulation">数据清洗类</label>
			<input name="p_type" type="radio" class="input_radio" id="Verify.Regulation" p_type="Verify.Regulation" /><label for="Verify.Regulation">验证规则类</label>
		</div>
		<div id="main">

		</div>
	</xsl:template>
</xsl:stylesheet>
