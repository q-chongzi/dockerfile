var isFirst = true;
function isSupportWebSocket() {
	var socket = null;
	if ('WebSocket' in window) {
		websocket = new WebSocket("wss://" + location.host + httpHeader + "websocket");
	} else {
		alert('浏览器不支持 Not support websocket');
	}

	websocket.onopen = function() {
	}

	// 发生错误时调用
	websocket.onerror = function() {
		console.log("websocket错误");
		isSupportWebSocket();
	};
	websocket.onmessage = function(event) {
		var data = JSON.parse(event.data);

		
		//两点之间数据传输连接箭头
		if(data.identify == "linkDataArray"){
			if(isFirst){
				if($("#city_network_view_display").css('display') == 'none'){
					indexMap.onMapData();
				}else {
					monitor.onTopologyData()
				}
				isFirst = false;
			}
			$('#link_data_array').val(data.content);
		}

		// 正在进行迁移/同步中的推送
		if(data.identify == "data_move"){
			data.content = eval('(' + data.content + ')');
			var n_data = data.content;
			var isRepeat = false;
			// 每次进来先循环Li判断id是否存在，如存在则不添加
			$("#diginter_migr_sync > li").each(function() {
				var catalog_id = $(this).find("a").attr("id") == null ? "" : $(this).find("a").attr("id");
				var position = $(this).find("a").attr("class") == null ? "" : $(this).find("a").attr("class");
				if (n_data.catalog_id == catalog_id) {
					if (n_data.position != position){
						$(this).remove();
					}else {
						isRepeat = true;
					}
				}
				// if (n_data.position <= position) {
				// 	isRepeat = true;
				// }
			});
			if (isRepeat) {
				return;
			}
			if (n_data.type == 'migrate'){
				$("#diginter_migr_sync").append("<li><a href='javascript:void(0)' class='" + n_data.position + "' id='" + n_data.catalog_id + "' title=' 目录标识为" + n_data.catalog_id + "的功能目录正在进行迁移，当前迁移位置为" + n_data.position + "'>迁移提示信息：目录标识为" + n_data.catalog_id + "的功能目录正在进行迁移，当前迁移位置为" + n_data.position + "</a><span class='remove-bottom' onclick='$(this).parent(\"li\").remove()'>删除</span></li>");
			}else{
				$("#diginter_migr_sync").append("<li><a href='javascript:void(0)' class='" + n_data.position + "' id='" + n_data.catalog_id + "' title=' 目录标识为" + n_data.catalog_id + "的功能目录正在进行同步，当前同步位置为" + n_data.position + "'>同步提示信息：目录标识为" + n_data.catalog_id + "的功能目录正在进行同步，当前同步位置为" + n_data.position + "</a><span class='remove-bottom' onclick='$(this).parent(\"li\").remove()'>删除</span></li>");
			}
			$("#index-con3").show();
			$(".left-spr2").hide();
		}

		// 注册总线拒绝后移除注册推送
		if(data.identify == "dsb_update_regist_move"){
			data.content = eval('(' + data.content + ')');
			var n = data.content;
			$("#diginter_dsb > li").each(function() {
				var code = $(this).find("span").attr("id") == null ? "" : $(this).find("span").attr("id");
				if (n.CODE == code) {
					$(this).remove();
				}
			});
		}
		
		// 注册总线拒绝后重新注册移除拒绝推送
		if(data.identify == "dsb_update_refuse_move"){
			data.content = eval('(' + data.content + ')');
			var n = data.content;
			$("#diginter_serve > li").each(function() {
				var code = $(this).find("span").attr("id") == null ? "" : $(this).find("span").attr("id");
				if (n.CODE == code) {
					$(this).remove();
				}
			});
		}

		// 注册总线推送
		if (data.identify == "dsb_update_regist_view") {
			data.content = eval('(' + data.content + ')');
			var n = data.content;
			var isRepeat = false;
			// 每次进来先循环Li判断id是否存在，如存在则不添加
			$("#diginter_dsb > li").each(function() {
				var code = $(this).find("span").attr("id") == null ? "" : $(this).find("span").attr("id");
				if (n.CODE == code) {
					isRepeat = true;
				}
			});
			if (isRepeat) {
				return;
			}
			$("#diginter_dsb").append(
					"<li class='serve_dsb_data'><a href='javascript:void(0)' class='no_time' onclick=\"flag=1;onResourceMonitorEdit('" + n.CODE + "')\" title='" + n.NAME + "[" + n.IDENTIFIER + "]的" + n.HOST + "请求注册为服务节点'><span id=\"" + n.CODE + "\">" + n.NAME + "[" + n.IDENTIFIER + "]的" + n.HOST
							+ "请求注册为服务节点</span></a></li>");
			$("#index-con3").show();
			$(".left-spr2").hide();
		}

		// 总线拒绝推送
		if (data.identify == "dsb_update_refuse_view") {
			data.content = eval('(' + data.content + ')');
			var n = data.content;
			var isRepeat = false;
			// 每次进来先循环Li判断id是否存在，如存在则不添加
			$("#diginter_serve > li").each(function() {
				var code = $(this).find("span").attr("id") == null ? "" : $(this).find("span").attr("id");
				if (n.CODE == code) {
					isRepeat = true;
				}
			});
			if (isRepeat) {
				return;
			}
			$("#diginter_serve").append(
					"<li class='serve_dsb_data'><a href='javascript:void(0)' class='refuse no_time' onclick=\"flag=1;onResourceMonitorDsbEdit('" + n.CODE + "','refuse')\" title='拒绝：" + n.NAME + "[" + n.IDENTIFIER + "]的" + n.HOST + "注册服务节点被拒绝'><span id=\"" + n.CODE + "\">拒绝：" + n.NAME + "[" + n.IDENTIFIER + "]的" + n.HOST
							+ "注册服务节点被拒绝</span></a></li>");
			$("#index-con3").show();
			$(".left-spr2").hide();
		}

		// 总线错误推送
		if (data.identify == "dsb_update_failure_view") {
			data.content = eval('(' + data.content + ')');
			var n = data.content;
			// 每次进来先循环Li判断id是否存在，如存在则不添加
			$("#diginter_serve > li").each(function() {
				var code = $(this).find("span").attr("id") == null ? "" : $(this).find("span").attr("id");
				if (n.CODE == code) {
					isRepeat = true;
				}
			});
			if (isRepeat) {
				return;
			}
			$("#diginter_serve").append(
					"<li class='serve_dsb_data'><a href='javascript:void(0)' class='refuse no_time' onclick=\"flag=1;onResourceMonitorDsbEdit('" + n.CODE + "','refuse')\" title='错误：" + n.NAME + "[" + n.IDENTIFIER + "]的" + n.HOST + "注册服务节点失败，原因是" + n.REG_REASON + "'><span id=\"" + n.CODE + "\">错误：" + n.NAME + "["
							+ n.IDENTIFIER + "]的" + n.HOST + "注册服务节点失败，原因是" + n.REG_REANSON + "</span></a></li>");
			$("#index-con3").show();
			$(".left-spr2").hide();
		}

		// 异常消息
		if (data.identify == "exception_warning_view") {
			data.content = eval('(' + data.content + ')');
			showException(data);
			$("#index-con1").show();
			$(".left-spr").hide();
		}

		// 数据监控
		if (data.identify == "resource_monitor_thread") {
			$.resourceUsageRateShowSuccessCallback(data.content);
			myChart.flag = 1;
		}

		// 数据异常
		if ((data.identify == "data_exception_warning_view") || (data.identify == "data_exchange_exception_warning_view")) {
			data.content = eval('(' + data.content + ')');
			showDataException(data);
			$("#index-con2").show();
			$(".right-spr").hide();
		}

		// 数据异常取消
		if (data.identify == "data_exception_cancel_view" || data.identify == "data_exchange_exception_cancel_view") {
			data.content = eval('(' + data.content + ')');
			cancelDataException(data);
		}
		// 顶上节点更新
		if (data.identify == "note_update") {
			data.content = eval('(' + data.content + ')');
			if (data.content.type == "dsb") {
				if (data.content.isReachable == "true") {
					$("#is_dsb").lcs_on();
					$("#is_dsb").next().css("background-color", "#63FF6B");
				} else if (data.content.isReachable == "is_locked") {
					$("#is_dsb").lcs_on();
					$("#is_dsb").next().css("background-color", "#FF6339");
				} else {
					$("#is_dsb").lcs_off();
					$("#is_dsb").next().css("background-color", "");
				}
			}
			if (data.content.type == "integrated") {
				if (data.content.isReachable == "true") {
					$("#is_integration").lcs_on();
					$("#is_integration").next().css("background-color", "#009CCE");
				} else if (data.content.isReachable == "is_locked") {
					$("#is_integration").lcs_on();
					$("#is_integration").next().css("background-color", "#FF6339");
				} else {
					$("#is_integration").lcs_off();
					$("#is_integration").next().css("background-color", "");

				}
			}
		}

		if (data.identify == "note_update_true") {
			data.content = eval('(' + data.content + ')');
			for (var i = 0; i < data.content.length; i++) {
				var n = data.content[i];
//				console.log("需要改为成功连接的节点:" + n.CODE);
				if ($('#map').css('display') == 'block' && n.TYPE == 'Hinge') {
					indexMap.myDiagram.model.setDataProperty(indexMap.myDiagram.findNodeForKey(n.CODE).data,'fill','#009CCE'); //原来是#63FF6B
				}
				
				if ($('#network_view').css('display') == 'block') {
					var img;
					if (n.TYPE == 'DB'){
						if (n.IS_LOCKED == 'true')
							img = 'img/icon107.png';
						else
							img = 'img/icon106.png';
					} else if (n.IDENTIFIER == n.HOSTIDENTFIER){
						if (n.IS_LOCKED == 'true')
							img = 'img/icon103.png';
						else
							img = 'img/icon100.png';
					} else if (n.IS_DSB == 'true') {
						if (n.IS_LOCKED == 'true')
							img = 'img/icon104.png';
						else
							img = 'img/icon101.png';
					} else {
						if (n.IS_LOCKED == 'true')
							img = 'img/icon105.png';
						else
							img = 'img/icon102.png';
					}
					monitor.myDiagram.model.setDataProperty(monitor.myDiagram.findNodeForKey(n.CODE).data,'source',img);
				}
			}
		}

		if (data.identify == "note_update_lock") {
			data.content = eval('(' + data.content + ')');
			for (var i = 0; i < data.content.length; i++) {
				var n = data.content[i];
//				console.log("需要改为连接失败的节点:" + n.CODE);
				if ($('#map').css('display') == 'block' && n.TYPE == 'Hinge') {
					indexMap.myDiagram.model.setDataProperty(indexMap.myDiagram.findNodeForKey(n.CODE).data,'fill','#FF6339');
				}
				
				if ($('#network_view').css('display') == 'block') {
					var img;
	                if (n.TYPE == 'DB'){
	                    if (n.IS_LOCKED == 'true')
	                        img = 'img/icon107.png';
	                    else
	                        img = 'img/icon106.png';
	                } else if (n.IDENTIFIER == n.HOSTIDENTFIER){
	                    if (n.IS_LOCKED == 'true')
	                        img = 'img/icon103.png';
	                    else
	                        img = 'img/icon100.png';
	                } else if (n.IS_DSB == 'true') {
						if (n.IS_LOCKED == 'true')
							img = 'img/icon104.png';
						else
							img = 'img/icon101.png';
					} else {
						if (n.IS_LOCKED == 'true')
							img = 'img/icon105.png';
						else
							img = 'img/icon102.png';
					}
					monitor.myDiagram.model.setDataProperty(monitor.myDiagram.findNodeForKey(n.CODE).data,'source',img);
				}
			}
		}

		if (data.identify == "note_update_false") {
			data.content = eval('(' + data.content + ')');

			for (var i = 0; i < data.content.length; i++) {
				var n = data.content[i];
//				console.log("需要移除的节点:" + n.CODE);
// 				indexMap.myDiagram.remove(indexMap.myDiagram.findNodeForKey(n.IDENTIFIER))
				if ($('#map').css('display') == 'block' && n.TYPE == 'Hinge') {
					indexMap.myDiagram.model.removeNodeData(indexMap.myDiagram.findNodeForKey(n.CODE).data);
				}
				if ($('#network_view').css('display') == 'block') {
					monitor.myDiagram.model.removeNodeData(monitor.myDiagram.findNodeForKey(n.CODE).data);
				}
			}
		}
	}

	websocket.onclose = function() {
	}

	window.onbeforeunload = function() {
		closeWebSocket();
	}

	function closeWebSocket() {
		websocket.close();
	}

	function send() {
		var msg = {
			'content' : "",
			'name' : ""
		}
		websocket.send(JSON.stringify(msg));
	}
}

// 移除数据异常
function cancelDataException(data) {
	var n = data.content;
	var cancelId;
	if(n.IDENTIFIER != null){
		cancelId = n.IDENTIFIER;
	}else{
		cancelId = n.CODE;
	}
	$("#diginter_exception > li").each(function() {
		var code = $(this).find("span").attr("id") == null ? "" : $(this).find("span").attr("id");
		if (cancelId == code) {
			$(this).remove();
		}
	});
}
// 推送数据异常
function showDataException(data) {
	var n = data.content;
	var isRepeat = false;
	var code;
	if(n.IDENTIFIER != null){
		code = n.IDENTIFIER;
	}else{
		code = n.CODE;
	}
	
	// 每次进来先循环Li判断id是否存在，如存在则不添加
	$("#diginter_exception > li").each(function() {
		var now_code = $(this).find("span").attr("id") == null ? "" : $(this).find("span").attr("id");
		if (code == now_code) {
			isRepeat = true;
		}
	});

	if (isRepeat) {
		return;
	}

	$("#diginter_exception").prepend(
			"<li class='diginter_data_exception " +  n.CODE + "'><a href='javascript:void(0)' class='no_time' onclick=flag=1;onExceptionMonitorEdit('" + n.CODE + "') title='" + n.RESOURCE_NAME + "[" + n.CONNECTION_ID + "]的" + n.EXCEPTION_FIELD + "" + (n.EXCEPTION_CONTENT == null ? "" : n.EXCEPTION_CONTENT) + "不符合"
					+ (n.REGULATION_NAME == null ? "" : n.REGULATION_NAME) + "'><span id=" + (n.IDENTIFIER == null ? n.CODE : n.IDENTIFIER) + " >" + n.RESOURCE_NAME + "[" + n.CONNECTION_ID + "]的" + n.EXCEPTION_FIELD + "" + (n.EXCEPTION_CONTENT == null ? "" : n.EXCEPTION_CONTENT) + "不符合"
					+ (n.REGULATION_NAME == null ? "" : n.REGULATION_NAME) + "</span></a>" + "<span class='remove-bottom'" + "onclick=removeException(" + "\'" + n.CODE + "\'"  + ")" + ">删除</span>" + "</li>");
}

function showException(data) {
	var n = data.content;
	var i = parseInt($("#exception_warning_view li:last-child i").text() == "" ? 0 : $("#exception_warning_view li:last-child i").text()) + 1;

	$("#" + data.identify).prepend(
			"<li><a style=width:330px; class=warning_color href=javascript:void(0); onclick=onExceptionWarningSetting(" + n.RECORD_MINUTE + "," + n.REQUEST_ID + "); title='" + n.BUDDLE_NAME + " " + ((n.DESCRIPTION == undefined) ? "" : n.DESCRIPTION) + " "
					+ ((n.CATALOG_NAME == undefined) ? ((n.DATA_NAME == undefined) ? "" : n.DATA_NAME) : n.CATALOG_NAME) + ((n.ERROR_ID == undefined) ? "" : "[" + n.ERROR_ID + "]") + "'><span>" + n.BUDDLE_NAME + " " + ((n.DESCRIPTION == undefined) ? "" : n.DESCRIPTION) + " "
					+ ((n.CATALOG_NAME == undefined) ? ((n.DATA_NAME == undefined) ? "" : n.DATA_NAME) : n.CATALOG_NAME) + ((n.ERROR_ID == undefined) ? "" : "[" + n.ERROR_ID + "]</span></a><span>" + getMyDate(parseInt(n.RECORD_MILLISCOND)) + "</span></li>"));
}

function getMyDate(str) {
	var oDate = new Date(str), oYear = oDate.getFullYear(), oMonth = oDate.getMonth() + 1, oDay = oDate.getDate(), oHour = oDate.getHours(), oMin = oDate.getMinutes(), oSen = oDate.getSeconds(), oTime = oYear + '-' + getzf(oMonth) + '-' + getzf(oDay) + ' ' + getzf(oHour) + ':' + getzf(oMin) + ':'
			+ getzf(oSen);
	return oTime;
};
function getzf(num) {
	if (parseInt(num) < 10) {
		num = '0' + num;
	}
	return num;
}

//删除数据异常
function removeException(code) {
	$.request(httpHeader, '删除数据异常', new Array('buddle.cludove',
		'catalog.cludove','code'), new Array('diginter', 'exception.remove.process',code), new Array(),
		new Array(), 'text', null, null, 'onExceptionRemoveCallBack',
		'normalErrorCallback');
}

$.extend({
	onExceptionRemoveCallBack: function (responseText) {
		$('.' + responseText).remove();
	}
});