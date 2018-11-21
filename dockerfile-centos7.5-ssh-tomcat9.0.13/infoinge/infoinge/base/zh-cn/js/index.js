$(function() {
	// 是否正在执行初始化操作，是则为true。防止用户多次点击确认
	var isInOperation = false;
	$("#resource_decomposing_port").val("3306");
	function trim(){
		var driver = $("#resource_decomposing_driver").val();
		var host = $("#resource_decomposing_host").val();
		var port = $("#resource_decomposing_port").val();
		var account = $("#resource_decomposing_account").val();
		var password = $("#resource_decomposing_password").val();
		var template = $("#resource_decomposing_template").val();
		var journalNumber = $("#resource_journal_number").val();
		var manageAddress = $("#manage_address").val();
		$("#resource_decomposing_driver").val(driver.replace(/^\s+/,"").replace(/\s+$/,""));
		$("#resource_decomposing_host").val(host.replace(/^\s+/,"").replace(/\s+$/,""));
		$("#resource_decomposing_port").val(port.replace(/^\s+/,"").replace(/\s+$/,""));
		$("#resource_decomposing_account").val(account.replace(/^\s+/,"").replace(/\s+$/,""));
		$("#resource_decomposing_password").val(password.replace(/^\s+/,"").replace(/\s+$/,""));
		$("#resource_decomposing_template").val(template.replace(/^\s+/,"").replace(/\s+$/,""));
		$("#resource_journal_number").val(journalNumber.replace(/^\s+/,"").replace(/\s+$/,""));
		$("#manage_address").val(manageAddress.replace(/^\s+/,"").replace(/\s+$/,""));
	}
	
	$("#resource_decomposing_driver").change(function() {
		switch($("#resource_decomposing_driver").val()){
		case "com.mysql.jdbc.Driver":
			$("#resource_decomposing_port").val("3306");
			break;
		case "com.microsoft.sqlserver.jdbc.SQLServerDriver":
			$("#resource_decomposing_port").val("1433");
			break;
		case "oracle.jdbc.driver.OracleDriver":
			$("#resource_decomposing_port").val("1521");
			break;
		case "org.postgresql.Driver":
			$("#resource_decomposing_port").val("5432");
			break;
		}
	});

	/**
	 * 输入合法性判断
	 * 
	 * @returns 成功则返回空字符串，否则返回错误信息
	 */
	function isValid() {
		trim();
		var driver = $("#resource_decomposing_driver").val();
		var host = $("#resource_decomposing_host").val();
		var port = $("#resource_decomposing_port").val();
		var account = $("#resource_decomposing_account").val();
		var password = $("#resource_decomposing_password").val();
		var template = $("#resource_decomposing_template").val();
		// var pattern = $("#resource_decomposing_pattern").val();
		var journalNumber = $("#resource_journal_number").val();
		var manageAddress = $("#manage_address").val();
		if (undefined == driver || null == driver || "" == driver) {
			return "驱动错误！";
		}
		if (undefined == host || null == host || "" == host) {
			return "服务地址不可为空！";
		} else if (!/^(2[0-5][0-5]|1\d\d|[1-9]\d|[1-9])(\.(2[0-5][0-5]|1\d\d|[1-9]\d|[0-9])){3}$/
				.test(host) && host != "localhost") {
			return "非法服务地址！";
		}
		if (undefined == port || null == port || "" == port) {
			return "服务端口不可为空！";
		} else if (isNaN(port)) {
			return "非法服务端口！";
		} else if (!(/^[1-9][0-9]*$/.test(port))) {
			return "服务端口必须为大于0的整数！";
		} else if(port.length > 8){
			return "服务端口长度不能大于8位！";
		}
		if (undefined == account || null == account || "" == account) {
			return "访问账号不可为空！";
		}else if(account.length > 50){
			return "访问账号长度不能大于50位！";
		}
		if (undefined == password || null == password || "" == password) {
			return "访问密码不可为空！";
		}
		if (undefined == template || null == template || "" == template) {
			return "连接模板不可为空！";
		}else if(template.length > 50){
			return "连接模板长度不能大于50位！";
		}
		// if(undefined == pattern || null == pattern || "" == pattern){
		// return "方案标识不可为空！";
		// }
		if (undefined == journalNumber || null == journalNumber
				|| "" == journalNumber) {
			return "日志数量不可为空！";
		} else if (isNaN(journalNumber)) {
			return "非法日志数量！";
		} else if (!(/^[1-9][0-9]*$/.test(journalNumber))) {
			return "日志数量必须为大于0的整数！";
		} else if (parseInt(journalNumber) > 10000) {
			return "日志数量不能大于10000！";
		}
		if (undefined == manageAddress || null == manageAddress
				|| "" == manageAddress) {
			return "管理地址不可为空！";
		} else if (manageAddress == "localhost") {
			return "管理地址不可为localhost！";
		} else if (!/^(2[0-5][0-5]|1\d\d|[1-9]\d|[1-9])(\.(2[0-5][0-5]|1\d\d|[1-9]\d|[0-9])){3}$/
				.test(manageAddress)) {
			return "非法管理地址！";
		}else if(manageAddress.length > 50){
			return "管理地址长度不能大于50位！";
		}
		return "";
	}

	$("#logon_button_zone").on(
			'click',
			function() {
				if (isInOperation) {
					$("#error").html("初始化仍在进行中，请稍等...");
					return;
				}
				if ("" != isValid()) {
					$("#error").html(isValid());
					return;
				}
				isInOperation = true;
				$("#logon_button_zone a").html("正在初始化...");
				$("#error").html("");
				$.ajax({
					url : "/i",
					type : "post",
					dataType : "json",
					data : "driver=" + $("#resource_decomposing_driver").val()
							+ "&host=" + $("#resource_decomposing_host").val()
							+ "&port=" + $("#resource_decomposing_port").val()
							+ "&account="
							+ $("#resource_decomposing_account").val()
							+ "&password="
							+ $("#resource_decomposing_password").val()
							+ "&template="
							+ $("#resource_decomposing_template").val()
							// + "&pattern="
							// + $("#resource_decomposing_pattern").val()
							+ "&manageAddress=" + $("#manage_address").val()
							+ "&journalNumber="
							+ $("#resource_journal_number").val(),
					success : function(data) {
						isInOperation = false;
						$("#logon_button_zone a").html("确认");
						if (undefined != data && null != data && "" != data
								&& undefined != data.state
								&& null != data.state && "" != data.state) {
							if (data.state == "success") {
								// 初始化成功，跳转首页
								document.location.href = httpHeader;
							} else {
								$("#error").html(data.msg);
							}
						}
					},
					error : function() {
						isInOperation = false;
						$("#logon_button_zone a").html("确认");
					}
				});
			});
});
