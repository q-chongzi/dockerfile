<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<html>
			<head>
				<title> - 讯枢 - </title>
				<meta charset="utf-8">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/global.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/style.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/owl.carousel.min.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
			</head>
			<body style="background:#fff;">
				<div id="main_content" style="margin:20px 20px 0 20px;border: solid 1px #dddddd;padding-top:10px">
					<div >
						<div class="div_txt">
							<h1>请求头部</h1>
							<xsl:for-each select="journal.cludove/content/journal.cludove[1]/request.cludove/*">
								<div class="list">
									<span class="span_tit">
										<xsl:value-of select="@name"/>
									</span>
									<div class="text">
										<div class="div_input">
											<xsl:choose>
												<xsl:when test=". = ''">
													<xsl:text> </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="."/>
												</xsl:otherwise>
											</xsl:choose>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>

						<div class="div_txt">
							<h1>运行准备</h1>
							<xsl:for-each select="journal.cludove/content/journal.cludove[1]/preparatory.cludove/*">
								<div class="list">
									<span class="span_tit">
										<xsl:value-of select="@name"/>
									</span>
									<div class="text">
										<div class="div_input">
											<xsl:choose>
												<xsl:when test=". = ''">
													<xsl:text> </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="."/>
												</xsl:otherwise>
											</xsl:choose>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>

						<div class="div_txt">
							<h1>系统配置</h1>
							<xsl:for-each select="journal.cludove/content/journal.cludove[1]/configuration.cludove/*">
								<div class="list">
									<span class="span_tit">
										<xsl:value-of select="@name"/>
									</span>
									<div class="text">
										<div class="div_input">
											<xsl:choose>
												<xsl:when test=". = ''">
													<xsl:text> </xsl:text>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="."/>
												</xsl:otherwise>
											</xsl:choose>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>

						<div class="div_txt">
							<h1>执行目录
								<span>
									<xsl:for-each select="journal.cludove/content/journal.cludove[1]/execution.configuration">
										<xsl:value-of select="@name"/>
									</xsl:for-each>
								</span>
							</h1>
							<xsl:for-each select="journal.cludove/content/journal.cludove[1]/execution.configuration/*">
								<div class="list">
									<span class="span_tit" style="width:20%">
										<xsl:value-of select="@name"/>
									</span>
									<div class="text" style="height:2em">
										<div class="div_input" style="border:0">
											<!--<xsl:choose>-->
												<!--<xsl:when test=". = ''">-->
													<xsl:text> </xsl:text>
												<!--</xsl:when>-->
												<!--<xsl:otherwise>-->
													<!--<xsl:value-of select="."/>-->
												<!--</xsl:otherwise>-->
											<!--</xsl:choose>-->
										</div>
									</div>
								</div>
								<xsl:for-each select="*">
									<div class="list">
										<span class="span_tit" style="width:20%">
											<xsl:value-of select="@name"/>
										</span>
										<div class="text">
											<xsl:choose>
												<xsl:when test=". = ''">
													<xsl:attribute name="style">
														<xsl:text>height:2em </xsl:text>
													</xsl:attribute>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
											<div class="div_input">
												<xsl:choose>
													<xsl:when test=". = ''">
														<xsl:text> </xsl:text>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="."/>
													</xsl:otherwise>
												</xsl:choose>
											</div>
										</div>
									</div>
								</xsl:for-each>
							</xsl:for-each>
						</div>

						<div class="div_txt">
							<div class="list">
								<div class="text" style="width:100px;height:40px">
									<div class="div_btn">
										<a href="javascript:void(0)" style="width:100%;background:#ff9900">
													<xsl:attribute name="onclick">if($('#journal_content_containar').css('display') == 'none') {$('#journal_content_containar').load(httpsHeader + 's?buddle.cludove=diginter&amp;catalog.cludove=journal.content.show.view&amp;record_host='+'<xsl:value-of select="/content/parameter.cludove/record_host"/>'+'&amp;record_year='+'<xsl:value-of select="/content/parameter.cludove/record_year"/>'+'&amp;record_month='+'<xsl:value-of select="/content/parameter.cludove/record_month"/>'+'&amp;record_day='+'<xsl:value-of select="/content/parameter.cludove/record_day"/>'+'&amp;record_hour='+'<xsl:value-of select="/content/parameter.cludove/record_hour"/>'+'&amp;record_minute='+'<xsl:value-of select="/content/parameter.cludove/record_minute"/>'+'&amp;request_id='+'<xsl:value-of select="/content/parameter.cludove/request_id"/>'+'&amp;buddle_id='+'<xsl:value-of select="/content/parameter.cludove/buddle_id"/>'+'&amp;catalog_id='+'<xsl:value-of select="/content/parameter.cludove/catalog_id"/>',function (data, textStatus, jqXHR) {if (textStatus == 'error') {} else var base64 = new Base64(); $('#journal_content').text(base64.decode($('#journal_content').text()));});$('#journal_content_containar').css('display','block')}else{$('#journal_content_containar').css('display','none')}</xsl:attribute>
											<!--<xsl:attribute name="onclick">onJournacontentlShow('<xsl:value-of select="/content/parameter.cludove/record_host"/>','<xsl:value-of select="/content/parameter.cludove/record_year"/>','<xsl:value-of select="/content/parameter.cludove/record_month"/>','<xsl:value-of select="/content/parameter.cludove/record_day"/>','<xsl:value-of select="/content/parameter.cludove/record_hour"/>','<xsl:value-of select="/content/parameter.cludove/record_minute"/>','<xsl:value-of select="/content/parameter.cludove/request_id"/>','<xsl:value-of select="/content/parameter.cludove/buddle_id"/>','<xsl:value-of select="/content/parameter.cludove/catalog_id"/>','<xsl:value-of select="/content/parameter.cludove/position"/>','<xsl:value-of select="/content/parameter.cludove/process_index"/>')</xsl:attribute>-->

											<xsl:text>显示上下文</xsl:text>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="div_txt" id="journal_content_containar" style="display:none">
						<xsl:text> </xsl:text>
						</div>
						<div class="div_txt">
							<h1>错误日志</h1>
							<div class="list">
								<span class="span_tit" style="width:10%">
									<xsl:for-each select="journal.cludove/content/journal.cludove[1]/exception.configuration">
										<xsl:value-of select="@name"/>
									</xsl:for-each>
								</span>
								<div class="text">
									<div>
										<xsl:for-each select="journal.cludove/content/journal.cludove[1]/exception.configuration/p">
											<div><xsl:value-of select="."/></div>
										</xsl:for-each>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</body>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/hinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/navigate.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script type="text/javascript">
				<!--$(document).ready(function() {var base64 = new Base64(); $('#journal_content').text(base64.decode($('#journal_content').text()));});-->
                $(document).ready(function(){setupHttpHeader();})
			</script>
		</html>
	</xsl:template>

</xsl:stylesheet>
