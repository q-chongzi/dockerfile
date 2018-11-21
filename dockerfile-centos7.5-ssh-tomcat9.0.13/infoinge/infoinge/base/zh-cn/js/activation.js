var MacAddr = '';
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
                systemDestruction();
            } else {
                if (data == 'development'){
                    $("#logon_button_prohibit").hide();
                    $('#activation_prompt_inside').html('<a>开发版本</a>').show();
                    getTheLogin();
                }
                else
                    onMacAddressSearch();
            }
        })
}
//登录后查询当前的mac地址
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
                systemDestruction();
            } else {
                if (data != ''){
                    onValidateSearch(data);
                }else {
                    systemDestruction();
                }
                MacAddr = data;
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
                systemDestruction();
            } else {
                if(data != ''){
                    onSerialNumerSearch(mac_address,data);
                } else {
                    systemDestruction()
                }
            }
        })
}
// 当前的序列号
function onSerialNumerSearch(mac_address,validate) {
    $(this).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=serial.numer.search.view"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询迅枢的序列号失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
                systemDestruction();
            } else {
                if(data != ''){
                    onDiginterActivationSearch(mac_address,validate,data);
                    $('.version_information').show();
                    $('.information_text').html('<div class="information_clearance"><span style="color: #000">&nbsp;实例序号：</span>'+ data +'</div><div class="information_clearance"><span style="color: #000">MAC地址：</span>'+ mac_address +'</div><div class="information_clearance"><span style="color: #000">&nbsp;到期时间：</span>'+ validate +'</div>');
                    $('.on_left_version').click(function(){
                        if ($('.box_information').css('right') == '0px') {
                            $('.box_information').animate({right:'318px'}, 700);
                            $('.on_left_version img').attr('src','infoinge/base/zh-cn/img/right.png');
                        }else{
                            $('.box_information').animate({right:'0px'}, 700);
                            $('.on_left_version img').attr('src','infoinge/base/zh-cn/img/left.png');
                        }
                    });
                } else {
                    systemDestruction();
                }
            }
        })
}
//检查激活状态
function onDiginterActivationSearch(mac_address,validate,serial_number) {
    $("#activation_prompt")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=api.login.view"
            + "&resource_identifier=diginter.business"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示数据引用设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $('#template_business_infoinge').val($("#template").val());
                    $(this).load(
                        $("#template").val()
                        + "s?buddle.cludove=business&catalog.cludove=diginter.activation.search.view"
                        +"&serial_number=" + serial_number
                        + "&t=" + new Date().getTime(),
                        function (data, textStatus, jqXHR) {
                            if (textStatus == "error") {
                                 console.log(data);
                                hintError("查询迅枢状态失败！", false, "javascript:void(0)");
                                // hintException(data, false, "javascript:void(0)");
                            } else {
                                if (data != ''){
                                    var obj = eval('(' + data + ')');
                                    if (obj.activate_mac != mac_address){
                                        // $("#logon_button_prohibit").hide();
                                        $('#activation_prompt').show();
                                        $('#logon_button_prohibit').text('请先购买后再进行登录');
                                        $('#account,#password').removeAttr('onkeypress');
                                        $('#activation_prompt').html('<a>再次激活</a>');
                                        $('#activation_prompt').attr('title','该序列已经在其他地方激活，再次激活需要得到营运方的确认，请及时和销售人员取得联系');
                                        $('#activation_prompt a').click(function () {
                                            onInfoingeActivationShow();
                                        });
                                    } else{
                                        var starttime = CurentTime();
                                        var start = new Date(starttime.replace("-", "/").replace("-", "/"));
                                        var end = new Date(validate.replace("-", "/").replace("-", "/"));
                                        if(end<start){
                                            $('#logon_button_prohibit').hide();
                                        }
                                        $('#activation_prompt').show();
                                        $('#logon_button_prohibit').text('请先购买后再进行登录');
                                        $('#account,#password').removeAttr('onkeypress');
                                        $('#activation_prompt').html('<a>购 买</a>');
                                        $('#activation_prompt_inside').html('<a>购 买</a>').show();
                                        $('#activation_prompt').attr('title',"系统有效时间为" + validate + "，请提前购买服务时间，以免造成不必要的损失。重要：如果超出系统有效时间，系统运行会变得很慢。");
                                        $('#activation_prompt a,#activation_prompt_inside a').click(function () {
                                            window.open($("#template_business_infoinge").val() + 'manage/base/zh-cn/standalone_buy.html?serial_number=' + serial_number);
                                        })
                                        if (validate == '永久'){
                                            $('#activation_prompt').hide();
                                            $('#logon_button_prohibit').hide();
                                            $('#activation_prompt_inside').hide();
                                        }
                                        getTheLogin();
                                    }
                                }else {
                                    $('#activation_prompt').show();
                                    $('#logon_button_prohibit').text('请先激活后再进行登录');
                                    $('#account,#password').removeAttr('onkeypress');
                                    $('#activation_prompt').html('<a>激 活</a>');
                                    $('#activation_prompt').attr('title','当前为首次激活，激活后可购买相应服务');
                                    $('#activation_prompt a').click(function () {
                                        onInfoingeActivationShow();
                                    });
                                    if (validate == '永久'){
                                        $('#activation_prompt').hide();
                                        $('#logon_button_prohibit').hide();
                                        $('#activation_prompt_inside').hide();
                                        getTheLogin();
                                    }
                                }
                            }
                        })
                }
            });
}
//  系统遭到破坏时
function systemDestruction() {
    $('#activation_prompt').html('<a style="font-size: 16px;color: red" title="系统遭到破环，请尝试自行修复，也可以联系管理员！">警  告</a>').show();
    $('#system_error_hints').show();
    $('#infoinge_business_ul').remove();
    $('#system_configuration_li').remove();
}
//   获得登录权限时
function getTheLogin() {
    $('#login_button').attr('onclick','if ($.validLogon()){$.enter();}');
    $('#account').attr('onFocus','this.select();');
    $('#account').attr("onclick","$.switchblank(this.id, this.title, '')");
    $('#account').attr("onblur","$.switchblank(this.id, '', this.title)");
    $('#account').attr("onkeypress","$(this).controlFocusMove(true, 'password', event);");
    $('#password').attr('onFocus','this.select();');
    $('#password').attr("onclick","$.switchblank(this.id, this.title, '')");
    $('#password').attr("onblur","$.switchblank(this.id, '', this.title)");
    $('#password').attr("onkeypress","$.enterByEnter(event);");
}

/************ 产品激活开始 ***********/
//产品激活界面显示
function onInfoingeActivationShow() {
    $("#diginter_activation").load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=diginter.activation.email.view"
        +"&modality=infoinge"
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("查询迅枢的序列号失败！", false, "javascript:void(0)");
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
                hintError("查询迅枢的序列号失败！", false, "javascript:void(0)");
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
                hintError("查询迅枢的序列号失败！", false, "javascript:void(0)");
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
                    $(".already_activation").hide();
                    $(".activation-title").text("激活");
                    $('#diginter_activation').remove();
                    alert("您已经激活成功，请前去营运网站购买租期！")

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
                    hintError("查询迅枢的序列号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (data === 'noBuy') {
                        alert("您并未购买代理销售，请到营运网站购买后再激活！")
                    } else if (data === 'noNeed') {
                        if (is_activation == 'false') {
                            onDiginterActivationEmail();
                        } else {
                            onDiginterActivationRequest();
                        }
                    } else {
                        alert("您的代理商账号的实例数量已经用完，请到营运网站购买后再激活！")
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
                hintError("查询迅枢的序列号失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if (data == 'success') {
                    alert("激活邮件已经发至" + $("#manage_email").val() + "，请及时查收并点击激活链接激活迅枢");
                    $("#diginter_activation").hide();
                    $(".already_activation").hide();
                    $(".activation-title").text("激活");
                    onInstanceSearch();
                }else if(data == 'success:notMail'){
                    alert("激活成功，您已获得永久使用权限！");
                    location.reload();
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
                    hintError("查询迅枢的序列号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (data == 'success') {
                        alert("再次激活申请已经提交，请等待平台管理员审核");
                        $("#diginter_activation").hide();
                        onInstanceSearch();
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
// 当前时间
function CurentTime() {
    var now = new Date();
    var year = now.getFullYear();    
    var month = now.getMonth() + 1;   
    var day = now.getDate();
    var hh = now.getHours();    
    var mm = now.getMinutes();   
    var ss = now.getSeconds();
    var clock = year + "-";
    if(month < 10)
        clock += "0";
    clock += month + "-";
    if(day < 10)
        clock += "0";
    clock += day + " ";
    if(hh < 10)
        clock += "0";
    clock += hh + ":";
    if (mm < 10) clock += '0';
    clock += mm + ":";

    if (ss < 10) clock += '0';
    clock += ss;
    return(clock);
}