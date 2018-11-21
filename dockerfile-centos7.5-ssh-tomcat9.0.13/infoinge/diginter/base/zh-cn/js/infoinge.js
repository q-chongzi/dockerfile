/* 开始加载讯枢 */
function onInfoingeLoading() {
	$("#main_content").load(
		httpHeader + 's',
		"buddle.cludove=infoinge&catalog.cludove=infoinge.load.view" + "&t=" + new Date().getTime(),
		function(data, textStatus, jqXHR) {
			if (textStatus == 'error') {
				console.log(data);
				hintError("加载首页内容失败！", false, "javascript:void(0)");
				hintException(data, false, "javascript:void(0)");
			} else
				;
				// hintMessage("加载首页内容成功。", false, "javascript:void(0)");

			$("body").css("background", "#f2f2f2");
			resize();

			onMonitoringCenter();
			statistics.slideToggle();
			monitor.init();
			setInterval(function () {
				myChart.onUsageRate();
				myChart.onConnectionRate();
				myChart.flag=1;
			},60000);

			if ($("#monitoring_center_left").length > 0 ){
				setInterval(function () {
					onResourceRegistSearch();
					onResourceDsbRegistSearch();
				},5000);
			}
			onResourceRegistSearch();
			onResourceDsbRegistSearch();

			onResourceConnectionSelect('console_hinge_select', 'Hinge', '', 'onConsoleHingeChange()');
			$('#record_year').val(new Date().getFullYear());
			$('#record_year').jRange({
				from: 2016,
				to: new Date().getFullYear(),
				step: 1,
				scale: [2016,new Date().getFullYear()],
				format: '%s',
				width: '80%',
				showLabels: true,
				showScale: true
			});
			$('#record_month').val(new Date().getMonth()+1);
			$('#record_month').jRange({
				from: 1,
				to: 12,
				step: 1,
				scale: [1,3,5,7,9,11],
				format: '%s',
				width: '80%',
				showLabels: true,
				showScale: true
			});
			$('#record_day').val(new Date().getDate());
			$('#record_day').jRange({
				from: 1,
				to: 31,
				step: 1,
				scale: [1,6,11,16,21,26,31],
				format: '%s',
				width: '80%',
				showLabels: true,
				showScale: true
			});
			$('#record_hour').val(new Date().getHours());
			$('#record_hour').jRange({
				from: 0,
				to: 23,
				step: 1,
				scale: [0,3,4,5,12,15,18,21,23],
				format: '%s',
				width: '80%',
				showLabels: true,
				showScale: true
			});
			$('#record_minute').val(new Date().getMinutes());
			$('#record_minute').jRange({
				// onstatechange: function() {onJournalSearch();},
				from: 0,
				to: 59,
				step: 1,
				scale: [0,9,19,29,39,49,59],
				format: '%s',
				width: '80%',
				showLabels: true,
				showScale: true
			});
		});
}

// 根据前缀切换显示区域
function changeDisplayZone(header) {
	$('.left_side1 .item').hide();
	$('#' + header + '_left').show();
	$('.main_content').hide();
	$('#' + header + '_main').show();
	$('.right_side1 .item_right').hide();
	$('#' + header + '_right').show();

	if (header == 'monitoring_center') {
		$('#nav_monitoring_center').attr("class", "a11");
		$('#nav_monitoring_center').removeAttr("onclick");
	} else {
		$('#nav_monitoring_center').attr("class", "a1");
		$('#nav_monitoring_center').attr("onclick", "onMonitoringCenter();");
	}
	if (header == 'monitoring_network') {
		$('#nav_monitoring_network').attr("class", "a41");
		$('#nav_monitoring_network').removeAttr("onclick");
	} else {
		$('#nav_monitoring_network').attr("class", "a4");
		$('#nav_monitoring_network').attr("onclick", "onMonitoringNetwork();");
	}

	if (header == 'monitoring_log') {
		$('#nav_monitoring_log').attr("class", "a21");
		$('#nav_monitoring_log').removeAttr("onclick");
	} else {
		$('#nav_monitoring_log').attr("class", "a2");
		$('#nav_monitoring_log').attr("onclick", "onMonitoringLog();");
	}

	if (header == 'resource_setting') {
		$('#nav_resource_setting').attr("class", "a31");
		$('#nav_resource_setting').removeAttr("onclick");
	} else {
		$('#nav_resource_setting').attr("class", "a3");
		$('#nav_resource_setting').attr("onclick", "onResourceSetting('NONE');");
	}

	if (header == 'organization_setting') {
		$('#nav_organization_setting').attr("class", "a61");
		$('#nav_organization_setting').removeAttr("onclick");
	} else {
		$('#nav_organization_setting').attr("class", "a6");
		$('#nav_organization_setting').attr("onclick", "onOrganizationSetting();");
	}

	if (header == 'basics_setting') {
		$('#nav_basics_setting').attr("class", "a51");
		$('#nav_basics_setting').removeAttr("onclick");
	} else {
		$('#nav_basics_setting').attr("class", "a5");
		$('#nav_basics_setting').attr("onclick", "onBasicsSetting();");
	}
}

function onMonitoringcore() {
	$("#removeSelectRecord").css('display','none');
}


/* 开始监控网络 */
function onMonitoringNetwork() {
	changeDisplayZone('monitoring_network');
	$("#removeSelectRecord").css('display','none');
	statistics.init();
}

/* 开始监控日志 */
function onMonitoringLog() {
	$('#record_year').val(new Date().getFullYear());
	$('#record_year').jRange({
		from: 2016,
		to: new Date().getFullYear(),
		step: 1,
		scale: [2016,new Date().getFullYear()],
		format: '%s',
		width: '80%',
		showLabels: true,
		showScale: true
	});
	$('#record_month').val(new Date().getMonth()+1);
	$('#record_month').jRange({
		from: 1,
		to: 12,
		step: 1,
		scale: [1,3,5,7,9,11],
		format: '%s',
		width: '80%',
		showLabels: true,
		showScale: true
	});
	$('#record_day').val(new Date().getDate());
	$('#record_day').jRange({
		from: 1,
		to: 31,
		step: 1,
		scale: [1,6,11,16,21,26,31],
		format: '%s',
		width: '80%',
		showLabels: true,
		showScale: true
	});
	$('#record_hour').val(new Date().getHours());
	$('#record_hour').jRange({
		from: 0,
		to: 23,
		step: 1,
		scale: [0,3,4,5,12,15,18,21,23],
		format: '%s',
		width: '80%',
		showLabels: true,
		showScale: true
	});
	$('#record_minute').val(new Date().getMinutes());
	$('#record_minute').jRange({
		// onstatechange: function() {onJournalSearch();},
		from: 0,
		to: 59,
		step: 1,
		scale: [0,9,19,29,39,49,59],
		format: '%s',
		width: '80%',
		showLabels: true,
		showScale: true
	});
	changeDisplayZone('monitoring_log');
	$("#removeSelectRecord").css('display','none');
	$('#monitoring_log_tree_list').on('click','a',function () {
		$('#monitoring_log_tree_list a').css('color','#fff');
		$(this).css('color','#ff633b')
	})
}


/* 开始控制讯枢节点 */
function onConsoleHingeChange() {
	$.request(httpHeader, '改变监控讯枢节点', new Array('buddle.cludove',
		'catalog.cludove'), new Array('infoinge', 'resource.connection.show.view'), new Array('code'),
		new Array('console_hinge_select'), 'text', null, null, 'consoleHingeChangeSuccessCallback',
		'normalErrorCallback');
}

$.extend({
	consoleHingeChangeSuccessCallback: function (responseText) {
		var resource_connection = eval('(' + responseText	+ ')');
		if (resource_connection != null) {
			httpHeader = resource_connection.http_header.substring(0,resource_connection.http_header.length-1);
			
			$('#console_hinge_host').val(resource_connection.host);

			$('#journal_navigate_type').val(-1);

			// onJournalSearch();
		}
	}
});
