(function($) {

	$.alerts = {
		alert: function(title, message, callback) {
			if( title == null ) title = 'Alert';
			$.alerts._show(title, message, null, 'alert', function(result) {
				if( callback ) callback(result);
			});
		},

		confirm: function(title, message, callback) {
			if( title == null ) title = 'Confirm';
			$.alerts._show(title, message, null, 'confirm', function(result) {
				if( callback ) callback(result);
			});
		},


		_show: function(title, msg, value, type, callback) {

			var _html = "";


			if (type == "alert") {
				_html += '<div class="retrieve-con" id="mb_box"><div id="mb_con" class="alert-tit"><span align="center" id="mb_tit">' + title + '</span></div>';
				_html += '<div id="mb_msg" class="alert-txt"><div class="alert-box"><h1>' + msg + '</h1></div><div id="mb_btnbox">';

				_html += '<input id="mb_btn_ok" class="sub" style="margin: 0px 70px 0;" type="button" value="确定" />';

			}
			if (type == "confirm") {
				_html += '<div class="retrieve-con" id="mb_box"><div id="mb_con" class="alert-tit"><span align="center" id="mb_tit">' + title + '</span></div>';
				_html += '<div id="mb_msg" class="alert-txt"><div class="alert-box"><h1>' + msg + '</h1></div><div id="mb_btnbox">';

				_html += '<input id="mb_btn_ok" class="sub" type="button" value="确定" />';
				_html += '<input id="mb_btn_no" class="but" type="button" value="取消" />';
			}
			_html += '</div></div></div>';


			//必须先将_html添加到body，再设置Css样式
			$("body").append(_html);
//					$("#mb_box").css('visibility','visible');
//					$("#mb_box").addClass('content_show');
			setTimeout(function () {
				$("#mb_box").addClass('content_show');
			},1);
//					GenerateCss();

			switch( type ) {
				case 'alert':

					$("#mb_btn_ok").click( function() {
						$.alerts._hide();
						callback(true);
					});
					$("#mb_btn_ok").focus().keypress( function(e) {
						if( e.keyCode == 13 || e.keyCode == 27 ) $("#mb_btn_ok").trigger('click');
					});
					break;
				case 'confirm':

					$("#mb_btn_ok").click( function() {
						$.alerts._hide();
						if( callback ) callback(true);
					});
					$("#mb_btn_no").click( function() {
						$.alerts._hide();
						if( callback ) callback(false);
					});
					$("#mb_btn_no").focus();
					$("#mb_btn_ok, #mb_btn_no").keypress( function(e) {
						if( e.keyCode == 13 ) $("#mb_btn_ok").trigger('click');
						if( e.keyCode == 27 ) $("#mb_btn_no").trigger('click');
					});
					break;


			}
		},
		_hide: function() {
			setTimeout(function () {
				$("#mb_box").removeClass('content_show');
			},1);
			setTimeout(function () {
				$("#mb_box,#mb_con").remove();
			},300);
		}
	}
	// Shortuct functions
	zdalert = function(title, message, callback) {
		$.alerts.alert(title, message, callback);
	}

	zdconfirm = function(title, message, callback) {
		$.alerts.confirm(title, message, callback);
	};




	//生成Css
	var GenerateCss = function () {

		$("#mb_box").css({ width: '100%', height: '100%', zIndex: '99999', position: 'fixed',
			filter: 'Alpha(opacity=60)', backgroundColor: 'black', top: '0', left: '0', opacity: '0.6'
		});

		$("#mb_con").css({ zIndex: '999999', width: '30%', position: 'fixed',
			backgroundColor: 'White', borderRadius: '15px'
		});

		$("#mb_tit").css({ display: 'block', fontSize: '14px', color: '#444', padding: '10px 15px',
			backgroundColor: '#DDD', borderRadius: '15px 15px 0 0',
			borderBottom: '3px solid #009BFE', fontWeight: 'bold'
		});

		$("#mb_msg").css({ padding: '20px', lineHeight: '20px',
			borderBottom: '1px dashed #DDD', fontSize: '13px'
		});

		$("#mb_ico").css({ display: 'block', position: 'absolute', right: '10px', top: '9px',
			border: '1px solid Gray', width: '18px', height: '18px', textAlign: 'center',
			lineHeight: '16px', cursor: 'pointer', borderRadius: '12px', fontFamily: '微软雅黑'
		});

		$("#mb_btnbox").css({ margin: '15px 0 10px 0', textAlign: 'center' });
		$("#mb_btn_ok,#mb_btn_no").css({ width: '85px', height: '30px', color: 'white', border: 'none' });
		$("#mb_btn_ok").css({ backgroundColor: '#168bbb' });
		$("#mb_btn_no").css({ backgroundColor: 'gray', marginLeft: '20px' });


		//右上角关闭按钮hover样式
		$("#mb_ico").hover(function () {
			$(this).css({ backgroundColor: 'Red', color: 'White' });
		}, function () {
			$(this).css({ backgroundColor: '#DDD', color: 'black' });
		});

		var _widht = document.documentElement.clientWidth; //屏幕宽
		var _height = document.documentElement.clientHeight; //屏幕高

		var boxWidth = $("#mb_con").width();
		var boxHeight = $("#mb_con").height();

		//让提示框居中
		$("#mb_con").css({ top: (_height - boxHeight) / 2 + "px", left: (_widht - boxWidth) / 2 + "px" });
	}


})(jQuery);

function main() {
//头部导航
	/*
	 $(".operation .oper").click(function(){
	 $(".operation .operation-nav").toggle();
	 });

	 $("div:not(.operation-nav)").on('mousedown',function(){
	 $('.operation .operation-nav').hide();
	 });
	 */
	/*$(".operation1").hover(function(){
		$(".operation .operation-nav1").toggle()
	});*/
	$(".operation2").hover(function(){
		$(".operation .operation-nav2").toggle()
	});


//	头部收缩展开

	$(".top-hid span").click(function(){
		$(".header-con").hide();
		$(".top-spr").show();
	});
	$(".top-spr span").click(function(){
		$(".header-con").show();
		$(".top-spr").hide();
	});

//头部收缩展开结束
//左侧1收缩展开

	$(".left-hid span").click(function(){
		$(".menu-con1-con").hide();
		$(".left-spr").show();

	});
	$(".left-spr span").click(function(){
		$(".menu-con1-con").show();
		$(".left-spr").hide();
	});

//左侧1收缩展开结束
//左侧2收缩展开
	$(".left-hid2 span").click(function(){
		$(".menu-con3-con").hide();
		$(".left-spr2").show();

	});
	$(".left-spr2 span").click(function(){
		$(".menu-con3-con").show();
		$(".left-spr2").hide();
	});

//左侧2收缩展开结束
//右侧1收缩展开

	$(".right-hid span").click(function(){
		$(".menu-con2-con").hide();
		$(".right-spr").show();
	});
	$(".right-spr span").click(function(){
		$(".menu-con2-con").show();
		$(".right-spr").hide();
	});

//右侧侧1收缩展开结束
//	<!--右侧2收缩展开

	$(".right-hid2 span").click(function(){
		$(".menu-con4-con").hide();
		$(".right-spr2").show();
	});
	$(".right-spr2 span").click(function(){
		$(".menu-con4-con").show();
		$(".right-spr2").hide();
	});

//	<!--右侧侧2收缩展开结束
//全选one

	$(".checkAll").click(function() {
		var _checkOne = $(this).parents('table').find('.checkOne');
		$(this).is(":checked") ? _checkOne.attr('checked', 'checked') : _checkOne.removeAttr('checked');
	});

//全选two

	$(".checkAlltwo").click(function() {
		var _checkTwo = $(this).parents('table').find('.checkTwo');
		$(this).is(":checked") ? _checkTwo.attr('checked', 'checked') : _checkTwo.removeAttr('checked');
	});

// //新增业务
// $(".service-tit2 .service1").click(function(){
// 			  $(".configure-fr-one").toggle();
// 		});	
//新增基本配置
	$(".configure-fr-tit .install").click(function(){
		$(".configure-fr-two").toggle();
	});
//地图
	$(function(){
		$(".mp").mouseover(function () {
			$(this).find(".feng").show();
		}).mouseout(function () {
			$(this).find(".feng").hide();

		});
	})	
}