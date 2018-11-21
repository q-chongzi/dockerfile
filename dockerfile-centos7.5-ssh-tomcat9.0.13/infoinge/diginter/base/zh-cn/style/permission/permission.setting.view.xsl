<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="owner_id">
			<xsl:value-of select="parameter.cludove/owner_type"/>
			<xsl:text disable-output-escaping="yes">-</xsl:text>
			<xsl:value-of select="parameter.cludove/owner_code"/>
		</xsl:variable>
		<div class="ibox-content main_tab">
			<div id="permission_buddle_select"></div>
			<table class="table table-striped table-bordered table-hover" id="permission_list_table">
			<thead class="border-bg1">
				<th>资源对象</th>
				<th>查看|搜索</th>
				<th>新增|添加</th>
				<th>修改|设置</th>
				<th>删除</th>
				<th>清除</th>
				<th>查看历史</th>
				<th>上传</th>
				<th>下载</th>
				<th align="center">
					<label class="radio i-checks checkbox">
						<input type="checkbox" id="check_permission">
							<xsl:attribute name="onclick">checkAllPermission();</xsl:attribute>
							<xsl:if test="count(cludove.crest.spruce.permission_control/record.crest) &gt; 0">
								<xsl:attribute name="checked">checked</xsl:attribute>
							</xsl:if>
						</input>
						<span/>
					</label>
				</th>
			</thead>
			<tbody class="tbody_background">
				<xsl:for-each select="cludove.crest.spruce.v_permission_resource/record.crest">
					<xsl:variable name="data_name">
						<xsl:value-of select="name"/>
					</xsl:variable>
					<xsl:variable name="permission_search_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">search</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_search_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">search</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_build_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">build</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_build_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">build</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_modify_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">modify</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_modify_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">modify</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_remove_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">remove</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_remove_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">remove</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_delete_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">delete</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_delete_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">delete</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_castback_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">castback</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_castback_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">castback</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_upload_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">upload</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_upload_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">upload</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_download_setting">
						<xsl:call-template name="check_permission_setting">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">download</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<xsl:variable name="permission_download_setted">
						<xsl:call-template name="check_permission_setted">
							<xsl:with-param name="data_name">
								<xsl:value-of select="$data_name"/>
							</xsl:with-param>
							<xsl:with-param name="data_operation">download</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<tr>
						<td class="center" style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="name"/>
						</td>
						<td class="center">
							<xsl:if test="$permission_search_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_search">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_search</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:choose>
											<xsl:when test="contains($permission_search_setted, $owner_id) or contains($permission_search_setted, 'organization') or contains($permission_search_setted, 'department') or contains($permission_search_setted, 'duty')">
												<xsl:attribute name="checked">checked</xsl:attribute>
											</xsl:when>
											<xsl:otherwise/>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_search_setted = '' or contains($permission_search_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked) , '<xsl:value-of select="$data_name"/>', 'search', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null,'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<xsl:if test="$permission_build_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_build">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_build</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:if test="contains($permission_build_setted, $owner_id) or contains($permission_build_setted, 'organization') or contains($permission_build_setted, 'department') or contains($permission_build_setted, 'duty')">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_build_setted = '' or contains($permission_build_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked), '<xsl:value-of select="$data_name"/>', 'build', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null, 'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<xsl:if test="$permission_modify_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_modify">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_modify</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:if test="contains($permission_modify_setted, $owner_id) or contains($permission_modify_setted, 'organization') or contains($permission_modify_setted, 'department') or contains($permission_modify_setted, 'duty')">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_modify_setted = '' or contains($permission_modify_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked), '<xsl:value-of select="$data_name"/>', 'modify', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null, 'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<xsl:if test="$permission_remove_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_remove">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_remove</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:if test="contains($permission_remove_setted, $owner_id) or contains($permission_remove_setted, 'organization') or contains($permission_remove_setted, 'department') or contains($permission_remove_setted, 'duty')">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_remove_setted = '' or contains($permission_remove_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked), '<xsl:value-of select="$data_name"/>', 'remove', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null, 'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<xsl:if test="$permission_delete_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_delete">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_delete</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:if test="contains($permission_delete_setted, $owner_id) or contains($permission_delete_setted, 'organization') or contains($permission_delete_setted, 'department') or contains($permission_delete_setted, 'duty')">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_delete_setted = '' or contains($permission_delete_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked), '<xsl:value-of select="$data_name"/>', 'delete', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null, 'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<xsl:if test="$permission_castback_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_castback">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_castback</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:if test="contains($permission_castback_setted, $owner_id) or contains($permission_castback_setted, 'organization') or contains($permission_castback_setted, 'department') or contains($permission_castback_setted, 'duty')">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_castback_setted = '' or contains($permission_castback_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked), '<xsl:value-of select="$data_name"/>', 'castback', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null, 'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<xsl:if test="$permission_upload_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_upload">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_upload</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:if test="contains($permission_upload_setted, $owner_id) or contains($permission_upload_setted, 'organization') or contains($permission_upload_setted, 'department') or contains($permission_upload_setted, 'duty')">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_upload_setted = '' or contains($permission_upload_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked), '<xsl:value-of select="$data_name"/>', 'upload', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null, 'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<xsl:if test="$permission_download_setting != ''">
								<label class="radio i-checks checkbox">
									<input type="checkbox" name="check_permission_download">
										<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_download</xsl:text></xsl:attribute>
										<xsl:attribute name="class"><xsl:text>permission </xsl:text><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
										<xsl:if test="contains($permission_download_setted, $owner_id) or contains($permission_download_setted, 'organization') or contains($permission_download_setted, 'department') or contains($permission_download_setted, 'duty')">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:when>
											<xsl:when test="$permission_download_setted = '' or contains($permission_download_setted, $owner_id)">
												<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){$("#now_remove").show();$('#ajax_loader_remove').show();};$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'is_active', 'data_name', 'data_operation', 'owner_type', 'owner_code'), new Array('diginter', 'permission.setting.process', '<xsl:value-of select="/content/parameter.cludove/buddle_id"/>', String(this.checked), '<xsl:value-of select="$data_name"/>', 'download', '<xsl:value-of select="/content/parameter.cludove/owner_type"/>', '<xsl:value-of select="/content/parameter.cludove/owner_code"/>'), new Array(), new Array(), 'text', null, null, 'permissionSuccessCallback', 'normalErrorCallback');</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="disabled">disabled</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</input>
									<span/>
								</label>
							</xsl:if>
						</td>
						<td align="center">
							<label class="radio i-checks checkbox">
								<input type="checkbox" name="check_permission">
									<xsl:attribute name="id"><xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text></xsl:attribute>
									<xsl:attribute name="class"><xsl:text>permission</xsl:text></xsl:attribute>
									<xsl:if test="contains($permission_search_setted, $owner_id) or contains($permission_search_setted, 'organization') or contains($permission_search_setted, 'department') or contains($permission_search_setted, 'duty') or contains($permission_build_setted, $owner_id) or contains($permission_build_setted, 'organization') or contains($permission_build_setted, 'department') or contains($permission_build_setted, 'duty') or contains($permission_modify_setted, $owner_id) or contains($permission_modify_setted, 'organization') or contains($permission_modify_setted, 'department') or contains($permission_modify_setted, 'duty') or contains($permission_remove_setted, $owner_id) or contains($permission_remove_setted, 'organization') or contains($permission_remove_setted, 'department') or contains($permission_remove_setted, 'duty') or contains($permission_delete_setted, $owner_id) or contains($permission_delete_setted, 'organization') or contains($permission_delete_setted, 'department') or contains($permission_delete_setted, 'duty') or contains($permission_castback_setted, $owner_id) or contains($permission_castback_setted, 'organization') or contains($permission_castback_setted, 'department') or contains($permission_castback_setted, 'duty') or contains($permission_upload_setted, $owner_id) or contains($permission_upload_setted, 'organization') or contains($permission_upload_setted, 'department') or contains($permission_upload_setted, 'duty') or contains($permission_download_setted, $owner_id) or contains($permission_download_setted, 'organization') or contains($permission_download_setted, 'department') or contains($permission_download_setted, 'duty')">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:if>
									<xsl:choose>
										<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'permission.setting.process']) = 0 and /content/parameter.cludove/account.cludove != 'admin'">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:when test="$permission_download_setted = '' or contains($permission_download_setted, $owner_id)">
											<xsl:attribute name="onclick">if($('#permission_check_number').val() == '0'){if($(this).prop('checked') == 'false' ){if($('input[class~="<xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text>"]:not(:disabled):not(:checked)').length > 0){ $("#now_remove").show();$('#ajax_loader_remove').show();$('#permission_check_number').val($('input[class~="<xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text>"]:not(:disabled):not(:checked)').length);}} else{if($('input[class~="<xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text>"]:not(:disabled):checked').length > 0){ $("#now_remove").show();$('#ajax_loader_remove').show();$('#permission_check_number').val($('input[class~="<xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text>"]:not(:disabled):checked').length);}}}$('input[class~="<xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text>"]').each(function(idx,obj){if (!obj.disabled &amp;&amp; ((obj.checked &amp;&amp; !$('#<xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text>')[0].checked) || (!obj.checked &amp;&amp; $('#<xsl:value-of select="$data_name"/><xsl:text>_check</xsl:text>')[0].checked))) {obj.click();}})</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</input>
								<span/>
							</label>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
			<input type="hidden" id="permission_check_number" value="0"/>
			<input type="hidden" id="permission_check_validate_number" value="0"/>
		</div>
	</xsl:template>
	<xsl:template name="check_permission_setting">
		<xsl:param name="data_name"/>
		<xsl:param name="data_operation"/>
		<xsl:variable name="buddle_id">
			<xsl:value-of select="/content/parameter.cludove/buddle_id"/>
		</xsl:variable>
		<xsl:for-each select="/content/cludove.crest.spruce.data/record.crest">
			<xsl:variable name="catalog_id">
				<xsl:value-of select="catalog_id"/>
			</xsl:variable>
			<xsl:if test="name = $data_name and operation = $data_operation">
				<xsl:text>,</xsl:text>
				<xsl:text disable-output-escaping="yes">_o_</xsl:text>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="check_permission_setted">
		<xsl:param name="data_name"/>
		<xsl:param name="data_operation"/>
		<xsl:variable name="buddle_id">
			<xsl:value-of select="/content/parameter.cludove/buddle_id"/>
		</xsl:variable>
		<xsl:for-each select="/content/cludove.crest.spruce.data/record.crest">
			<xsl:variable name="catalog_id">
				<xsl:value-of select="catalog_id"/>
			</xsl:variable>
			<xsl:if test="name = $data_name and operation = $data_operation">
				<xsl:for-each select="/content/cludove.crest.spruce.permission_control[2]/record.crest">
					<xsl:if test="buddle_id = $buddle_id and catalog_id = $catalog_id">
						<xsl:text>,</xsl:text>
						<xsl:value-of select="owner_type"/>
						<xsl:text disable-output-escaping="yes">-</xsl:text>
						<xsl:value-of select="owner_code"/>
					</xsl:if>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
