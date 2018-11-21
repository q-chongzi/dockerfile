
/*
 * 打开页面时预登陆一次，以便刷新时能显示桌面
 */
$.extend({
	enterByFlush : function() {
		if (getCookieValue('rember_password') == 'true' && !$('#check_rember_password').hasClass('on')) {
			$('#account').val(getCookieValue('account'));
			$('#password').val(getCookieValue('password'));
			$("#check_rember_password").addClass('on');
		}
	}
});

$.extend({
	enterByEnter : function(evt) {
		evt = (evt) ? evt : event;
		var charCode = (evt.charCode) ? evt.charCode : ((evt.which) ? evt.which
			: evt.keyCode);
		if (charCode == 13 || charCode == 3) {
			if ($.validLogon()) {
				// 回车登陆时隐藏按钮
				$('#logon_submit').hide();
				// 回车登陆时显示等待
				$('#logon_wait').show();

				$.enter();
			}
			return false;
		}
		return true;
	}
});

$.extend({
	validLogon : function() {
		if ($('#account').val() == '') {
			$('#hint_error').text('登录时需要输入用户名或邮箱！');
			$('#account').focus();
			return false;
		}

		if ($('#password').val() == '') {
			$('#hint_error').text('登录时需要输入密码！');
			$('#password').focus();
			return false;
		}

		return true;
	}
});

$.extend({
	enter : function() {
		waitButtonClick('logon_button_wait');//等待按钮的gif图加载

		// 登陆失败隐藏等待
		$('#logon_button_zone').hide();
		// 登陆失败显示按钮
		$('#logon_button_wait').show();

		// $('#account').val($('#account').val().toLowerCase());//用户名转化为小写

		if ($.validLogon()) {
			$.request(httpHeader, '正在登陆', new Array('buddle.cludove',
				'catalog.cludove', 'password.cludove'), new Array('infoinge',
				'logon.build.process', hex_md5($('#password').val())),
				new Array('account.cludove'), new Array(
					'account'), 'text', 'hint_error', null,
				'logonSuccessCallback', 'logonErrorCallback');
		} else
			$('#logon_button_container')
				.html(
					'<input class="btn btn-lg btn-primary btn-block" type="submit" value="登陆" onClick="$.enter();" />');
	}
});

$.extend({
	logonErrorCallback : function(responseText) {
		// 登陆失败隐藏等待
		$('#logon_button_wait').hide();
		// 登陆失败显示按钮
		$('#logon_button_zone').show();
		// 登陆失败时提示返回信息
		$('#hint_error').html('');
		hintException(responseText, false, '');
	}
});

/*
 * 注销
 */
$.extend({
	logout : function() {
		$.request(httpsHeader, '', new Array('buddle.cludove',
				'catalog.cludove'), new Array('infoinge', 'logout.remove.process'),
				new Array(), new Array(), 'text', 'hint_error', null,
				'logoutSuccessCallack', 'logoutErrorCallback');
	}
});

$.extend({
	logoutSuccessCallack : function(responseText) {
		logoutShow();
	}
});

$.extend({
	logoutErrorCallback : function(responseText) {
		logoutShow();

		hintError(responseText, false, "javascript:void(0)");
	}
});

function logoutShow() {
	document.location.href = httpHeader + 'console';
}

$.extend({
	modifyPasswordByEnter : function(evt) {
		evt = (evt) ? evt : event;
		var charCode = (evt.charCode) ? evt.charCode : ((evt.which) ? evt.which
				: evt.keyCode);
		if (charCode == 13 || charCode == 3) {
    		$.modifyPassword();

			return false;
		}
		return true;
	}
});

$.extend({
	modifyPasswordByEnter : function(evt) {
		evt = (evt) ? evt : event;
		var charCode = (evt.charCode) ? evt.charCode : ((evt.which) ? evt.which
			: evt.keyCode);
		if (charCode == 13 || charCode == 3) {
			$.modifyPassword();

			return false;
		}
		return true;
	}
});
/*
 * 修改密码
 */
$.extend({
	modifyPassword : function() {
		if (!$('#validate_password_modify').validationEngine('validate'))
		    return;
			
		waitLogonButtonClick();
		
		$.request(httpsHeader, '', new Array('buddle.cludove',
				'catalog.cludove'),
				new Array('infoinge', 'password.modify.process'), new Array(
						'password'), new Array('password'), 'text',
				'hint_wait', null, 'passwordModifySuccessCallack',
				'passwordModifyErrorCallback');
	}
});

$.extend({
	passwordModifySuccessCallack : function(responseText) {
		// 修改密码成功显示欢迎内容
		hintSuccess('hint_wait', '密码修改成功！', false);
		
		$('#logon_button_container')
						.html('<input class="btn btn-lg btn-primary btn-block" type="button" value="确认修改" onClick="$.modifyPassword();" />');
						
	    document.location.href = "logon.html";
	}
});

$.extend({
	passwordModifyErrorCallback : function(responseText) {
		// 修改密码失败时让密码输入框获得焦点
		$('#password').focus();
		// 修改密码失败时提示返回信息
		hintError('hint_wait', responseText);
		
		$('#logon_button_container')
						.html('<input class="btn btn-lg btn-primary btn-block" type="button" value="确认修改" onClick="$.modifyPassword();" />');
	}
});

$.extend({
	normalErrorCallback : function(responseText) {
		try {
			var exception = eval('(' + responseText + ')');
			var href = httpHeader + "s?buddle.cludove=infoinge&catalog.cludove=journal.show.view&record_host="
				+ exception[0].record_host + "&record_year=" + exception[0].record_year + "&record_month="
				+ exception[0].record_month + "&record_day=" + exception[0].record_day + "&record_hour="
				+ exception[0].record_hour + "&record_minute=" + exception[0].record_minute + "&request_id="
				+ exception[0].request_id + "&buddle_id=" + exception[0].buddle_id + "&catalog_id="
				+ exception[0].catalog_id + "";
			hintError(exception[0].record_content, false, href);
		} catch (e) {
		    if (responseText != "") {
				console.log(responseText);

				hintError(responseText, false, "javascript:void(0)");
			}
		}
	}
});
