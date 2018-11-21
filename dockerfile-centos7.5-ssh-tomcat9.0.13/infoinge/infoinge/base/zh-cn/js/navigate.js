/*
 *!hinge v1.0.4 | (c) 2007, 2015 cludove spruce | cludove.com/license
 */
$.extend({
	logonSuccessCallback : function(responseText) {
		// console.log(responseText);
		
		setupHttpHeader();

		if ($('#check_rember_password').hasClass('on')) {
			setCookie('account', $('#account').val(), 24 * 365 * 100,
					httpHeader);
			setCookie('password', $('#password').val(), 24 * 365 * 100,
					httpHeader)
		} else {
			deleteCookie('account', httpHeader);
			deleteCookie('password', httpHeader);
		}

		if ($('#check_rember_password').hasClass('on'))
			setCookie('rember_password', 'true', 24 * 365 * 100,
					httpHeader);
		else
			deleteCookie('rember_password', httpHeader);

		if ($('#check_rember_logon').hasClass('on'))
			setCookie('rember_logon', 'true', 24 * 365 * 100,
					httpHeader);
		else
			deleteCookie('rember_logon', httpHeader);

		// 登陆成功消除登陆帐号
		$('#account').val('');
		// 登陆成功消除登陆密码
		$('#password').val('');
		// 登陆成功时加载应用管理界面
		var p = navigator.platform;
		system.win = p.indexOf("Win") == 0;
		system.mac = p.indexOf("Mac") == 0;
		system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);

		// 登陆成功时跳转平台监控界面，当前先跳转到系统配置界面
		// onConfigurationSetting();
		document.location.href = httpHeader + 's?buddle.cludove=infoinge&catalog.cludove=infoinge.show.view';
	}});

// 提示信息
function hintMessage(prompt_content, is_comfirm) {
	// $('html,body').animate({
	// 	scrollTop : $('#' + hint_id + '').offset().top - 100
	// }, 100);
	
	var now = new Date();

	$('#hint_message').prepend('<li><a href="javascript:void(0)">' + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds() + ' ' + prompt_content + '</a></li>');

	if (is_comfirm)
		confirm(prompt_content);

	// setTimeout(function() {
	// 	$('#hint_container').hide();
	// }, 8000);
}

// 提示错误
function hintException(prompt_content, is_comfirm, href,type) {
	try {
		var exception = eval('(' + prompt_content + ')');
		var href = httpHeader + "s?buddle.cludove=infoinge&catalog.cludove=journal.show.view&record_host="
			+ exception[0].record_host + "&record_year=" + exception[0].record_year + "&record_month="
			+ exception[0].record_month + "&record_day=" + exception[0].record_day + "&record_hour="
			+ exception[0].record_hour + "&record_minute=" + exception[0].record_minute + "&request_id="
			+ exception[0].request_id + "&buddle_id=" + exception[0].buddle_id + "&catalog_id="
			+ exception[0].catalog_id + "";
		hintError(exception[0].record_content, false, href,type);
	} catch (e) {
		hintError(prompt_content, false, "javascript:void(0)",type);
	}
}

// 提示错误
function hintError(prompt_content, is_comfirm, href,type) {
	// $('html,body').animate({
	// 	scrollTop : $('#' + hint_id + '_error').offset().top - 100
	// }, 100);

	var now = new Date();
	if (type == 'model'){
		alert(prompt_content)
	}else 
		$('#hint_error').prepend('<li style="margin: 5px;"><a href="' + href + '" target="_blank">' + now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds() + ' ' + prompt_content + '</a></li>');

	
	
	if (is_comfirm)
		confirm(prompt_content);

	// setTimeout(function() {
	// 	$('#hint_container').hide();
	// }, 15000);
}

// 提示错误信息
function hintClean(hint_id) {
	$('#' + hint_id + '').text('');
	$('#' + hint_id + '').attr('style', '');
}

// 菜单导航
$.fn.extend({
	menuNavigate : function(submenuId, manageId, httpContent, focusId) {
		$('ul[id="backstage_menu"] a[type="menu"]').attr('class', '');
		$(this).attr('class', 'current');
	}
});

$.fn.extend({
	submenuNavigate : function(submenuId, manageId, httpContent, focusId) {
		$('ul[id="backstage_menu"] a[type="submenu"]').attr('class', '');
		$(this).attr('class', 'current');

		settingSearchFunction('');
	}
});

// 在列表上点击修改内容
function onRecordModify(view, element) {
	jQuery(view).css("display", "none");
	jQuery(view).parent().children(element).css("display", "block");
	jQuery(view).parent().children(element).children().focus();
}

// 在列表上完成内容修改
function cancelRecordModify(view, element, value) {
	jQuery(view).parent().parent().children(element).text(value);
	jQuery(view).parent().css("display", "none");
	jQuery(view).parent().parent().children(element).css("display", "block");
}

// 在列表上完成内容修改
function cancelRecordModifyMore(view, element, value) {
	jQuery(view).parent().parent().parent().children(element).text(value);
	jQuery(view).parent().parent().css("display", "none");
	jQuery(view).parent().parent().parent().children(element).css("display", "block");
}

// 在列表上完成内容选择
function cancelRecordSelect(view, element, value) {
	jQuery(view).parent().parent().parent().children(element).text(value);
	jQuery(view).parent().parent().css("display", "none");
	jQuery(view).parent().parent().parent().children(element).css("display",
			"block");
}

// 在列表上完成内容停用
$.extend({
	onRecordRemoveCallBack : function(responseText) {
		var removeData = $("#navigater_id").val();
			removeData = removeData.slice(-14);
		if (removeData == 'data_navigater'){
			showDataSetting();
		}
		$("." + responseText + "").css("display", "none");
		$("#" + responseText + "").css("display", "none");
		$("#now_remove").hide();
		$("#ajax_loader_remove").hide();
		//删除连接标识返回触发
		if (responseText == 'resource_connection'){
			$("#resource_type_select").trigger('change')	
		}else if (responseText == 'resource_connection_fail'){
			alert('删除失败')
		}else if (responseText == 'resource_connection_fail_dsb'){
			alert('总线无法连接不允许删除')
		}
	}
});


// 在列表上完成内容停用
$.extend({
	onRecordSearchRemoveCallBack : function(responseText) {
		var data = eval( "(" + responseText + ")");
		if (data[0].is_delete == 'true'){
			$("." + data[0].code + "").css("display", "none");
			$("#" + data[0].code + "").css("display", "none");
		}else if (data[0].is_delete == 'stop'){
			alert("该功能目录正在使用中，请把相关的目录数据删除后再来删除该功能目录！");
		} else {
			$("." + data[0].code + " td:last-child").text('请等待删除');
			$("#" + data[0].code + " td:last-child").text('请等待删除');
		}

	}
});


// 全选记录
function checkSelectRecord(check_input, class_name) {
	$('input[class~="' + class_name + '"]').each(function(idx, obj) {
		//if (!obj.disabled) {
		//	obj.checked = check_input.checked;
		//}

		obj.checked = !check_input.checked;

		obj.click();
	});
}

// 修改查询按钮方法
function settingSearchFunction(function_name) {
	if (function_name != '') {
        $('#common_search').attr('onblur', function_name);
		$('#common_search').attr('onkeypress', function_name);
	} else {
	   $('#common_search').removeAttr('onblur');
	   $('#common_search').removeAttr('onkeypress');
	}
}

// 按钮等待
function waitButtonClick(wait_id) {
	$('#' + wait_id + '').html(
			'<img src="infoinge/base/zh-cn/img/ajaxLoader.gif"/>');
}

// 指定区域等待加载
function waitLoadCertainRegion(wait_id) {
	$('#' + wait_id + '').html(
			'<div align="center"><img src="infoinge/base/zh-cn/img/ajaxLoader.gif"/></div>');
}

// 指定区域等待加载
function waitLoadCertainContent(wait_id) {
	$('#' + wait_id + '').html(
			'<div align="center" style="padding-top: 20%; height:50%;"><img src="infoinge/base/zh-cn/img/ajaxLoader.gif"/></div>');
}

function setupHttpHeader() {
	// 通过请求地址初始化httpHeader变量
    var urlinfo = window.location.href; //获取当前页面的url
    var len = urlinfo.length;//获取url的长度
    var offset = urlinfo.indexOf("//");//设置http连接中//字符串开始的位置
    if (offset > 0)
        urlinfo = urlinfo.substr(offset + "//".length, len)//取出http连接中//后的字符串

    var offset = urlinfo.indexOf("/");//设置http连接地址和端口后的字符串开始的位置
    if (offset > 0)
        urlinfo = urlinfo.substr(offset + "/".length, len)//取出参数字符串 这里会获得类似“id=1”这样的字符串
    if (urlinfo.length == 0) {
		httpHeader = "/";
		httpsHeader = "/";
	} else {
		if (urlinfo == 'infoinge/base/zh-cn/') {
			httpHeader = "/";
			httpsHeader = "/";
		} else {
			if (urlinfo.indexOf("infoinge") == 0) {
				httpHeader = "/infoinge/";
				httpsHeader = "/infoinge/";
			} else {
				httpHeader = "/";
				httpsHeader = "/";
			}
		}
    }
}

/*
 * 跳转到入口应用目录
 */
function startByEntryBuddle() {
	$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove')
		, new Array('infoinge',
			'buddle.entry.search.process'), new Array(),
		new Array(), 'text', null, null,
		'startByEntryBuddleSuccessCallback',
		'startByEntryBuddleFailCallback');
}

$.extend({
	startByEntryBuddleSuccessCallback : function(responseText) {
		// console.log(httpHeader);
		// console.log(responseText);
		// 跳转语句
		document.location.href = httpHeader + responseText;
	}
});

$.extend({
	startByEntryBuddleFailCallback : function(responseText) {
		// console.log(httpHeader);
		// console.log(responseText);
		// 跳转语句
		document.location.href = httpHeader + responseText;
	}
});

// 权限管理设置
function checkAllPermission() {
	var is_check = $("#check_permission").prop('checked')
	if (is_check == false){
		if ((parseFloat($('input[class~="permission"]:not(:disabled)').length) -parseFloat($('input[class~="permission"]:not(:disabled):not(:checked)').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):not(:checked)").length)) > 0){
			$("#now_remove").show();
			$('#ajax_loader_remove').show();
		}
		$('#permission_check_number').val(parseFloat($('input[class~="permission"]:not(:disabled)').length) -parseFloat($('input[class~="permission"]:not(:disabled):not(:checked)').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):not(:checked)").length));
	}else{
		if ((parseFloat($('input[class~="permission"]:not(:disabled)').length) -parseFloat($('input[class~="permission"]:not(:disabled):checked').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):checked").length)) > 0){
			$("#now_remove").show();
			$('#ajax_loader_remove').show();
		}
		$('#permission_check_number').val(parseFloat($('input[class~="permission"]:not(:disabled)').length) -parseFloat($('input[class~="permission"]:not(:disabled):checked').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):checked").length));
	}
	$('input[class~="permission"]')
		.each(
			function(idx, obj) {
				if (!obj.disabled
					&& ((obj.checked && !$('#check_permission')[0].checked) || (!obj.checked && $('#check_permission')[0].checked))) {
					obj.click();
				}
			});
}

$.extend({
	permissionCheckSuccessCallback : function(responseText) {
		if (responseText != '')
			$("#" + responseText + "").show();
	}
});

$.extend({
	permissionSuccessCallback : function(responseText) {
		if($('#permission_check_number').val() == '0'){
			$("#now_remove").hide();$('#ajax_loader_remove').hide();
		}else {
			$('#permission_check_validate_number').val(parseFloat($('#permission_check_validate_number').val()) + 1);
			console.log($('#permission_check_number').val())
			console.log($('#permission_check_validate_number').val())
			if ($('#permission_check_number').val() == $('#permission_check_validate_number').val()){
				$("#now_remove").hide();
				$('#ajax_loader_remove').hide();
				$('#permission_check_number').val(0);
				$('#permission_check_validate_number').val(0);
			}
		}
	}
});