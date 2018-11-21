<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1">
					</th>
					<!--<th class="th1">
						<span class="span_check span_check_buddle" id="check_all_buddle"></span>
					</th>-->
					<th>应用名字</th>
					<th>应用标识</th>
					<th>判断权限</th>
					<th>入口应用</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.buddle/record.crest">
					<xsl:sort order="ascending" select="identifier"/>
					<!--<xsl:if test="identifier != 'infoinge'">-->
						<tr>
							<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
							<xsl:choose>
								<xsl:when test="/content/parameter.cludove/is_local = 'true'">
									<td>
										<input type="radio" name="buddle_select">
											<xsl:attribute name="onclick">showBuddleSetting('<xsl:value-of select="code" />')</xsl:attribute>
											<!--<xsl:if test="position() = 1">-->
											<!--<xsl:attribute name="checked">true</xsl:attribute>-->
											<!--</xsl:if>-->
										</input>
									</td>
									<!--<td>
                                        <input type="hidden" class="buddle_check">
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="code" />
                                                <xsl:text>,</xsl:text>
                                                <xsl:value-of select="connection_code" />
                                            </xsl:attribute>
                                        </input>
                                        <span class="span_check span_check_buddle span_check_select_buddle buddle_check_select"></span>
                                    </td>-->
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
												<xsl:text disable-output-escaping="yes"></xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</td>
									<td>
										<xsl:choose>
											<xsl:when test="is_home = 'true'">
												<xsl:text disable-output-escaping="yes">是</xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text disable-output-escaping="yes"></xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</td>

									<td>
										<xsl:choose>
											<xsl:when test="sync_active_status = 'wait_delete'">
												<xsl:text>请等待删除</xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<div class="div_btn">
													<xsl:choose>
														<xsl:when test="identifier='infoinge' or identifier='lock'" />
														<xsl:otherwise>
															<a class="a_dele" href="javascript:void(0)" title="停用">
																<img src="infoinge/base/zh-cn/img/dele.png">
																	<xsl:choose>
																		<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'buddle.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
																		<xsl:otherwise>
																			<xsl:attribute name="style">display:none</xsl:attribute>
																		</xsl:otherwise>
																	</xsl:choose>
																	<xsl:attribute name="onclick">if (confirm("确认停用 应用 <xsl:value-of select="identifier" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_record_code', 'identifier','connection_code'), new Array('infoinge', 'buddle.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="identifier"/>', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordSearchRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
																</img>
															</a>
														</xsl:otherwise>
													</xsl:choose>
													<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
														<xsl:attribute name="onclick">showBuddleSetting('<xsl:value-of select="code" />')</xsl:attribute>
														<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
													</a>
												</div>
											</xsl:otherwise>
										</xsl:choose>
									</td>
								</xsl:when>
								<xsl:when test="identifier != 'lock' and identifier != 'infoinge' and identifier != 'diginter'">
									<td>
										<input type="radio" name="buddle_select">
											<xsl:attribute name="onclick">showBuddleSetting('<xsl:value-of select="code" />')</xsl:attribute>
											<!--<xsl:if test="position() = 1">-->
											<!--<xsl:attribute name="checked">true</xsl:attribute>-->
											<!--</xsl:if>-->
										</input>
									</td>
									<!--<td>
                                        <input type="hidden" class="buddle_check">
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="code" />
                                                <xsl:text>,</xsl:text>
                                                <xsl:value-of select="connection_code" />
                                            </xsl:attribute>
                                        </input>
                                        <span class="span_check span_check_buddle span_check_select_buddle buddle_check_select"></span>
                                    </td>-->
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
												<xsl:text disable-output-escaping="yes"></xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</td>
									<td>
										<xsl:choose>
											<xsl:when test="is_home = 'true'">
												<xsl:text disable-output-escaping="yes">是</xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text disable-output-escaping="yes"></xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</td>

									<td>
										<xsl:choose>
											<xsl:when test="sync_active_status = 'wait_delete'">
												<xsl:text>请等待删除</xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<div class="div_btn">
													<xsl:choose>
														<xsl:when test="identifier='infoinge' or identifier='lock'" />
														<xsl:otherwise>
															<a class="a_dele" href="javascript:void(0)" title="停用">
																<img src="infoinge/base/zh-cn/img/dele.png">
																	<xsl:choose>
																		<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'buddle.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
																		<xsl:otherwise>
																			<xsl:attribute name="style">display:none</xsl:attribute>
																		</xsl:otherwise>
																	</xsl:choose>
																	<xsl:attribute name="onclick">if (confirm("确认停用 应用 <xsl:value-of select="identifier" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_record_code', 'identifier','connection_code'), new Array('infoinge', 'buddle.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="identifier"/>', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordSearchRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
																</img>
															</a>
														</xsl:otherwise>
													</xsl:choose>
													<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
														<xsl:attribute name="onclick">showBuddleSetting('<xsl:value-of select="code" />')</xsl:attribute>
														<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
													</a>
												</div>
											</xsl:otherwise>
										</xsl:choose>
									</td>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</tr>
					<!--</xsl:if>-->
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
