//登录后查询当前数字立交部署的mac地址
var MacAddr = '';
function onMacAddressSearch() {
    $(this).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=mac.address.search.view"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询mac地址失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if (data != '') {
                    $('#serial_mac').html('<div id="right_retract" class="right-retract"> <span> <img id="right_img" src="img/right-hid.png"/> </span> </div><a id="version_information" >&nbsp;&nbsp;实例序号：正在加载中...<br/><br/>&nbsp;MAC地址：' + data + '<br/><br/>&nbsp;&nbsp;到期时间：正在加载中...</a><button id="right_button">刷新</button>');
                    $('#right_retract').click(function () {
                        if ($('#version_information').css('width') == '300px') {
                            $("#version_information").animate({width: '0'});
                            $("#right_retract").animate({right: '98px'});
                            $('#right_img').attr('src', 'img/right-spr.png');
                            $('#right_button').text('版本信息');
                            $('#right_button').click(function () {
                                $("#version_information").animate({width: '300px'});
                                $("#right_retract").animate({right: '398.518px'});
                                $('#right_img').attr('src', 'img/right-hid.png');
                                $('#right_button').text('刷新');
                            })
                        } else {
                            $("#version_information").animate({width: '300px'});
                            $("#right_retract").animate({right: '398.518px'});
                            $('#right_img').attr('src', 'img/right-hid.png');
                            $('#right_button').text('刷新');
                        }
                    });
                    $("#serial_mac a").mouseover(function () {
                        $(this).css("color", "#fff");
                    })
                    noviceGuidance();
                }
                onValidateSearch(data);
                MacAddr = data;
            }
        })
}

//登录后查询当前实例类型
function onInstanceSearch() {
    $(this).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=instance.type.search.view"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询实例类型失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
                // systemDestruction();
            } else {
               $('#instance_type').val(data);
            }
        })
}

// 系统有效时间
function onValidateSearch(mac_address) {
    $(this).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=validate.search.view"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询系统有效时间失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
                // $("#digital_interchange").hide();
                // $("#operation_guide").hide();
                // $("#network_view_display").hide();
                $("#digital_interchange").remove();
                $("#operation_guide").remove();
                $("#network_view_display").remove();
                $("#system_error_hints").show();
                $('#activation_prompt').html('<a id="max_width" style="color: red;font-size: 18px;font-weight: bold">警&nbsp;&nbsp;告</a>');
                $('#activation_prompt').attr('title', '系统遭到破环，请尝试自行修复，也可以联系管理员！');
            } else {
                if (data != '') {
                    onSerialNumerSearch(mac_address, data);
                } else {
                    // $("#digital_interchange").hide();
                    // $("#operation_guide").hide();
                    // $("#network_view_display").hide();
                    $("#digital_interchange").remove();
                    $("#operation_guide").remove();
                    $("#network_view_display").remove();
                    $("#system_error_hints").show();
                    $('#activation_prompt').html('<a id="max_width" style="color: red;font-size: 18px;font-weight: bold">警&nbsp;&nbsp;告</a>');
                    $('#activation_prompt').attr('title', '系统遭到破环，请尝试自行修复，也可以联系管理员！');
                }
            }
        })
}
// 当前数字立交的序列号
function onSerialNumerSearch(mac_address, validate) {
    $(this).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=serial.numer.search.view"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询数字立交的序列号失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
                // $("#digital_interchange").hide();
                // $("#operation_guide").hide();
                // $("#network_view_display").hide();
                $("#digital_interchange").remove();
                $("#operation_guide").remove();
                $("#network_view_display").remove();
                $("#system_error_hints").show();
                $('#activation_prompt').html('<a id="max_width" style="color: red;font-size: 18px;font-weight: bold">警&nbsp;&nbsp;告</a>');
                $('#activation_prompt').attr('title', '系统遭到破环，请尝试自行修复，也可以联系管理员！');
            } else {
                if (data != '') {
                    $('#serial_mac').html('<div id="right_retract" class="right-retract"> <span> <img id="right_img" src="img/right-hid.png"/> </span> </div><a id="version_information">&nbsp;&nbsp;实例序号：' + data + '<br/><br/>&nbsp;MAC地址：' + mac_address + '<br/><br/>&nbsp;&nbsp;到期时间：' + validate + '</a><button id="right_button" onclick="onMacAddressSearch();">刷新</button>');
                    $("#serial_mac a").mouseover(function () {
                        $(this).css("color", "#fff");
                    })
                    $('#right_retract').click(function () {
                        if ($('#version_information').css('width') == '300px') {
                            $("#version_information").animate({width: '0'});
                            $("#right_retract").animate({right: '98px'});
                            $('#right_img').attr('src', 'img/right-spr.png');
                            $('#right_button').text('版本信息');
                            $('#right_button').removeAttr('onclick');
                            $('#right_button').click(function () {
                                $("#version_information").animate({width: '300px'});
                                $("#right_retract").animate({right: '398.518px'});
                                $('#right_img').attr('src', 'img/right-hid.png');
                                $('#right_button').text('刷新');
                                $('#right_button').attr('onclick','onMacAddressSearch()');
                            })
                        } else {
                            $("#version_information").animate({width: '300px'});
                            $("#right_retract").animate({right: '398.518px'});
                            $('#right_img').attr('src', 'img/right-hid.png');
                            $('#right_button').text('刷新');
                        }
                    });
                    // onDiginterActivationSearch(mac_address, validate, data);
                } else {
                    // $("#digital_interchange").hide();
                    // $("#operation_guide").hide();
                    // $("#network_view_display").hide();
                    $("#digital_interchange").remove();
                    $("#operation_guide").remove();
                    $("#network_view_display").remove();
                    $("#system_error_hints").show();
                    $('#activation_prompt').html('<a id="max_width" style="color: red;font-size: 18px;font-weight: bold">警&nbsp;&nbsp;告</a>');
                    $('#activation_prompt').attr('title', '系统遭到破环，请尝试自行修复，也可以联系管理员！');
                }
            }
        })
}
//检查激活状态
function onDiginterActivationSearch(mac_address, validate, serial_number) {
    $("#activation_prompt")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=api.login.view"
            + "&resource_identifier=diginter.business"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据引用设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $('#template_business').val($("#template").val());
                    $(this).load(
                        $("#template").val()
                        + "s?buddle.cludove=business&catalog.cludove=diginter.activation.search.view"
                        + "&serial_number=" + serial_number
                        + "&t=" + new Date().getTime(),
                        function (data, textStatus, jqXHR) {
                            if (textStatus == "error") {
                                // console.log(data);
                                hintError("查询数字立交状态失败！", false, "javascript:void(0)");
                                hintException(data, false, "javascript:void(0)");
                            } else {
                                if (data != '') {
                                    var obj = eval('(' + data + ')');
                                    if (obj.activate_mac != mac_address) {
                                        $('#activation_prompt').html('<a id="max_width">再次激活</a>');
                                        $('#activation_prompt').attr('title', '该序列已经在其他地方激活，再次激活需要得到营运方的确认，请及时和销售人员取得联系');
                                        $("#max_width").mouseover(function () {
                                            $(this).css("color", "#fff");
                                        });
                                    } else {
                                        $('#activation_prompt').html('<a id="min_width">购买</a>');
                                        $('#activation_prompt').attr('title', "系统有效时间为" + validate + "，请提前购买服务时间，以免造成不必要的损失。重要：如果超出系统有效时间，系统运行会变得很慢。");
                                        $("#min_width").mouseover(function () {
                                            $(this).css("color", "#fff");
                                        });
                                        $("#min_width").click(function () {
                                            window.open($("#template_business").val() + 'manage/base/zh-cn/standalone_buy.html?serial_number=' + serial_number);
                                        })
                                        if (validate == '永久') {
                                            $('#activation_prompt').hide();
                                        }
                                    }
                                    $("#max_width").click(function () {
                                        onDiginterActivationShow();
                                    });
                                } else {
                                    $('#activation_prompt').html('<a id="min_width">激活</a>');
                                    $('#activation_prompt').attr('title', '当前为首次激活，激活后可购买相应服务');
                                    $("#min_width").click(function () {
                                        onDiginterActivationShow();
                                    });
                                    $("#min_width").mouseover(function () {
                                        $(this).css("color", "#fff");
                                    });
                                    if (validate == '永久') {
                                        $('#activation_prompt').hide();
                                    }
                                }
                            }
                        })
                }
            });
}

/************ 产品激活开始 ***********/
//产品激活界面显示
function onDiginterActivationShow() {
    $("#diginter_activation").load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=diginter.activation.email.view"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询数字立交的序列号失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                onDiginterActivationSerialNumber();
            }
        }
    ).show();
}

//查询实例序号
function onDiginterActivationSerialNumber() {
    $("#serial_number").load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=serial.numer.search.view"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询数字立交的序列号失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                onDiginterIsActivation(data);
            }
        }
    )
}

//根据实例序号判断是否已经被激活
function onDiginterIsActivation(serial_number) {
    $("#is_activation").load(
        $("#business_http").val()
        + "s?buddle.cludove=business&catalog.cludove=diginter.activation.judge.process"
        + "&serial_number=" + serial_number
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询数字立交的序列号失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if (data == 'false') {
                    $(".activation-title").text("产品激活");
                    $(".already_activation").hide();
                    $("#activation_email").attr("onclick", "onDiginterActivationAccountType('" + data + "')");
                } else if (data != MacAddr) {
                    $(".activation-title").text("再次激活");
                    $(".already_activation").show();
                    $("#activation_email").attr("onclick", "onDiginterActivationRequest()");
                }else{
                    $("#diginter_activation").hide();
                    zdconfirm("提示","您已经激活成功，请前去营运网站购买租期！")
                }
               
            }
        }
    )
}

//查询账号是否为代理商类型
function onDiginterActivationAccountType(is_activation) {
    $("#activation_email").attr("disabled", "disabled").css("background","#ddd");
    if ($('#activation_email_validate').validationEngine('validate')) {
        $("#account_type").load(
            $("#business_http").val()
            + "s?buddle.cludove=business&catalog.cludove=diginter.activation.account.type.process"
            + "&manage_email=" + $("#manage_email").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("查询数字立交的序列号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (data === 'noBuy') {
                        zdconfirm("提示","您并未购买代理销售，请到营运网站购买后再激活！")
                    } else if (data === 'noNeed') {
                        if (is_activation == 'false') {
                            onDiginterActivationEmail();
                        } else {
                            onDiginterActivationRequest();
                        }
                    } else {
                        zdconfirm("提示","您的代理商账号的实例数量已经用完，请到营运网站购买后再激活！")
                    }
                }
            }
        );
    } else {
        $("#activation_email").removeAttr("disabled").css("background","#1e5ec6");
    }
}

//当产品未激活时做的处理
function onDiginterActivationEmail() {
    $("#manage_email_return").load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=diginter.activation.build.process"
        + "&manage_email=" + $("#manage_email").val()
        + "&activation_instance_type=" + $("#instance_type").val()
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询数字立交的序列号失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if (data == 'success') {
                    zdconfirm("提示","激活邮件已经发至" + $("#manage_email").val() + "，请及时查收并点击激活链接激活数字立交");
                    $("#diginter_activation").hide();
                    onMacAddressSearch();
                }else if(data == 'success:notMail'){
                	zdconfirm("提示","激活成功，您已获得永久使用权限！");
                } else {
                    alert(data);
                }
                $("#activation_email").removeAttr("disabled");
            }
        }
    );
}

//当产品已经激活时做的处理
function onDiginterActivationRequest() {
	if ($('#activation_email_validate').validationEngine('validate')) {
	    $("#manage_email_return").load(
	        httpsHeader
	        + "s?buddle.cludove=diginter&catalog.cludove=diginter.activation.request.process"
	        + "&manage_email=" + $("#manage_email").val()
	        + "&unit_name=" + encodeURI(encodeURI($("#unit_name").val()))
	        + "&contact_phone=" + $("#contact_phone").val()
	        + "&contact_member=" + encodeURI(encodeURI($("#contact_member").val()))
	        + "&contact_address=" + encodeURI(encodeURI($("#contact_address").val()))
	        + "&t=" + new Date().getTime(),
	        function (data, textStatus, jqXHR) {
	            if (textStatus == "error") {
	                // console.log(data);
	                hintError("查询数字立交的序列号失败！", false, "javascript:void(0)");
	                hintException(data, false, "javascript:void(0)");
	            } else {
	                if (data == 'success') {
	                    zdconfirm("提示", "再次激活申请已经提交，请等待平台管理员审核");
	                    $("#diginter_activation").hide();
	                    onMacAddressSearch();
	                } else {
	                    alert(data);
	                }
	                $("#activation_email").removeAttr("disabled");
	            }
	        }
	    );
	}
}
/************ 产品激活结束 ***********/