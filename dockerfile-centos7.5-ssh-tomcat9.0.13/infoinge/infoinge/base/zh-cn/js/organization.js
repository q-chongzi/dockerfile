/* 开始组织机构设置 */
function onOrganizationSetting() {
    $("#AccountInformation").click();
    changeDisplayZone('organization_setting');
    $("#removeSelectRecord").css('display', 'none');
    if ($('#organization_setting_load').val() == 0) {
        // 开始基本设置操作时默认载入处理类数据
        onOrganizationDepartment();
        $('#organization_setting_load').val(1);
    }
}
/* 开始机构部门设置 */
function onOrganizationDepartment() {
    showOrganizationDepartment();
    onOrganizationDepartmentSetting();
}

function onOrganizationDepartmentSetting() {
    $("#organization_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=account.organization.setting.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示登录帐号设置界面成功。", false);
                $('#organization_shortened_form').focus();
            });
}

function showOrganizationDepartment() {
    $("#organization_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=account.organization.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入登录帐号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入登录帐号成功。", false);

                // checkAll('span_check_account',
                //     'span_check_select_account',
                //     'account_check_select', 'check_all_account');
                //
                // locateRecord(record_code, 'account_check',
                //     'account_select', 'showAccountSetting(\'' + record_code + '\', 0)', is_check_or_click);

                // showAccountSetting(record_code, account_id);
            });
}
function onNavigateDepartment() {
    $('#organization_style_list ul li ul').off('click')
    $('#organization_style_list ul li ul').on('click', 'a', function () {
        if ($(this).next().css('display') == 'none') {
            $(this).next().css('display', 'block')
        } else {
            $(this).next().css('display', 'none')
        }
    });
    onDepartment();
}
function onDepartment() {
    showDepartment();
    onDepartmentSetting();
}

function showDepartment() {
    $("#organization_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=account.department.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入登录帐号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入登录帐号成功。", false);

                // checkAll('span_check_account',
                //     'span_check_select_account',
                //     'account_check_select', 'check_all_account');
                //
                // locateRecord(record_code, 'account_check',
                //     'account_select', 'showAccountSetting(\'' + record_code + '\', 0)', is_check_or_click);

                // showAccountSetting(record_code, account_id);
            });
}

function onDepartmentSetting() {
    $("#organization_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=account.department.setting.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示登录帐号设置界面成功。", false);

                $('#organization_shortened_form').focus();


                $('#organization_director_level').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
            });
}

/* 开始登录帐号管理 */
function onAccountNaviagate() {
    onAccountManage('');
}

function onAccountManage(record_code) {
    $("#account_setting_list")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=account.navigate.view&record_code=" + record_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航登录帐号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (record_code == '') {
                        if ($('#account_setting_list').css('display') == 'none') {
                            $(this).on('click', 'a', function () {
                                $('#account_setting_list a').css('color', '#fff');
                                $(this).css('color', "#ff633b");
                            });
                            $('#account_setting_list').css('display', 'block');
                        } else {
                            $('#account_setting_list').css('display', 'none');
                        }
                    } else {
                        $('#account_setting_list').css('display', 'block');
                        $(this).on('click', 'a', function () {
                            $('#account_setting_list a').css('color', '#fff');
                            $(this).css('color', "#ff633b");
                        })
                    }

                    ;
                }

                // hintMessage("导航登录帐号成功。", false);

                onAccountSetting(record_code, 0);

            });
}

function onAccountSetting(record_code, is_check_or_click) {
    setRemoveSelectRecordButton('block', '登录帐号',
        'infoinge',
        'account.remove.process',
        'account_record_code',
        'account_check_select', 'account_select');
    if (record_code == '') {
        $('#account_setting_list a').css('color', '#fff');
    }
    $("#organization_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=account.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入登录帐号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入登录帐号成功。", false);

                checkAll('span_check_account',
                    'span_check_select_account',
                    'account_check_select', 'check_all_account');

                locateRecord(record_code, 'account_check',
                    'account_select', 'showAccountSetting(\'' + record_code + '\')');

                // showAccountSetting(record_code, account_id);
            });
}
//使用is_locate_record来判断是否应该调用locateNavigate
function showAccountSetting(code, is_locate_record) {
    $("#organization_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=account.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示登录帐号设置界面成功。", false);

                $('#account_account_name').focus();
                // $('#account_account_name').off(blur);
                // $('#account_account_name').blur(processAccountValidate);
                // console.log(is_locate_record);
                // console.log(is_locate_record > 0);
                if (is_locate_record > 0) {
                    locateNavigate(code, 'organization_setting_left');
                }
            });
}
function validateAccountSetting() {
    if ($('#validate_account_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_account').val() == "") {
            var account_name = $('#account_account_name').val();
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=account.validate.process&account_name="
                + account_name + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("查询登录帐号重复界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "") {
                        alert('帐号已注册');
                        enableButton();
                    } else {
                        processAccountSetting()
                    }
                })
        } else {
            processAccountSetting()
        }
    }
}

// function processAccountValidate() {
//     if ($('#code_account').val()==""){
//         var   account_name = $('#account_account_name').val();
//         $(this).load(
//             httpsHeader
//             + "s?buddle.cludove=infoinge&catalog.cludove=account.validate.process&account_name="
//             + account_name + "&t=" + new Date().getTime(),
//             function (data, textStatus, jqXHR) {
//                 if (textStatus == "error") {
//                     // console.log(data);
//                     hintError("查询登录帐号重复界面失败！", false, "javascript:void(0)");
//                     hintException(data, false, "javascript:void(0)");
//                 } else
//                 if (data != "") {
//                     alert('帐号已注册');
//                 }
//             })
//     }
// };
function processAccountSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_account_setting').validationEngine('validate')) {
        if ($('#code_account').val().length > 0) {
            if ($('#account_account_password').val().length > 0) {
                $.request(httpHeader, '修改登录帐号', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'account.setting.process'), new Array('code',
                    'connection_code', 'account_name', 'account_password', 'status', 'effective_date'),
                    new Array('code_account',
                        'connection_code_account', 'account_account_name',
                        'account_account_password', 'account_status', 'account_effective_date'), 'text',
                    null, null, 'accountSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '修改登录帐号', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'account.setting.process'), new Array('code',
                    'connection_code', 'account_name', 'status', 'effective_date'),
                    new Array('code_account',
                        'connection_code_account', 'account_account_name', 'account_status', 'account_effective_date'), 'text',
                    null, null, 'accountSettingSuccessCallback',
                    'normalErrorCallback');
            }
        } else {
            if ($('#account_account_password').val().length > 0) {
                $.request(httpHeader, '新增登录帐号', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'account.setting.process'), new Array('account_name',
                    'account_password', 'status', 'effective_date'), new Array('account_account_name',
                    'account_account_password', 'account_status', 'account_effective_date'), 'text',
                    null, null, 'accountSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '新增登录帐号', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'account.setting.process'), new Array('account_name', 'status', 'effective_date'), new Array('account_account_name',
                    'account_status', 'account_effective_date'), 'text',
                    null, null, 'accountSettingSuccessCallback',
                    'normalErrorCallback');
            }
        }
    }
}

$.extend({
    accountSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onAccountManage(responseText);
        enableButton();
    }
});
function onLaydate() {
    var timer = {
        elem: '#account_effective_date',
        format: 'YYYY-MM-DD hh:mm:ss',
        istime: true
    }
    laydate(timer);
}

function onLaydate2() {
    var timer = {
        elem: '#organization_join_time',
        format: 'YYYY-MM-DD hh:mm:ss',
        istime: true
    }
    laydate(timer);
}

/* 开始登录帐号密码修改 */
function onPasswordBox() {
    if ($('#password_modification').css('display') == 'none') {
        $('#password_modification').css('display', 'block');
        $('#password_modification input:eq(0)').focus();
    } else {
        $('#password_modification').css('display', 'none');
    }
}

function onPasswordModification() {
    if ($('#validate_password_modification_setting').validationEngine('validate')) {
        if ($('#password_modification input:eq(0)').val() == $('#password_modification input:eq(1)').val()) {
            $.request(httpHeader, '修改帐号密码', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'account.password.process'), new Array('account_password'), new Array('account_password_modification'), 'text',
                null, null, 'accountPasswordSuccessCallback',
                'normalErrorCallback');
        } else {
            alert('密码修改失败，两次输入的密码可能不一致')
        }
    }
}
$.extend({
    accountPasswordSuccessCallback: function () {
        // 刷新页面
        $('#password_modification').css('display', 'none');
        alert('密码修改成功');
    }
});

/******开始帐号权限设置*************/
function showPermissionSetting(owner_type, owner_code) {
    $('#removeSelectRecord').css('display', 'none');
    $("#organization_setting_main")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=permission.buddle.select.view"
            + "&owner_type=" + owner_type
            + "&owner_code=" + owner_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;

                onPermissionSetting(owner_type, owner_code);
            }
        )
}

function onPermissionSetting(owner_type, owner_code) {
    $("#permission_buddle_select").attr("disabled", "disabled");
    $("#permission_setting_zone")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=permission.setting.view"
            + "&buddle_id=" + $("#permission_buddle_select").val() + "&owner_type=" + owner_type
            + "&owner_code=" + owner_code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#permission_buddle_select").removeAttr("disabled", "disabled");
                }
                ;
            }
        )
}

function checkAllPermission() {
    var is_check = $("#check_permission").prop('checked')
    if (is_check == false) {
        if ((parseFloat($('input[class~="permission"]:not(:disabled)').length) - parseFloat($('input[class~="permission"]:not(:disabled):not(:checked)').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):not(:checked)").length)) > 0) {
            $("#now_remove").show();
            $('#ajax_loader_remove').show();
        }
        $('#permission_check_number').val(parseFloat($('input[class~="permission"]:not(:disabled)').length) - parseFloat($('input[class~="permission"]:not(:disabled):not(:checked)').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):not(:checked)").length));
    } else {
        if ((parseFloat($('input[class~="permission"]:not(:disabled)').length) - parseFloat($('input[class~="permission"]:not(:disabled):checked').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):checked").length)) > 0) {
            $("#now_remove").show();
            $('#ajax_loader_remove').show();
        }
        $('#permission_check_number').val(parseFloat($('input[class~="permission"]:not(:disabled)').length) - parseFloat($('input[class~="permission"]:not(:disabled):checked').length) - parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled)").length) + parseFloat($("#permission_list_table tbody tr td:last-child input:not(:disabled):checked").length));
    }
    $('input[class~="permission"]')
        .each(
            function (idx, obj) {
                if (!obj.disabled
                    && ((obj.checked && !$('#check_permission')[0].checked) || (!obj.checked && $('#check_permission')[0].checked))) {
                    obj.click();
                }
            });
}

$.extend({
    permissionCheckSuccessCallback: function (responseText) {
        if (responseText != '')
            $("#" + responseText + "").show();
    }
});

$.extend({
    permissionSuccessCallback: function (responseText) {
        if ($('#permission_check_number').val() == '0') {
            $("#now_remove").hide();
            $('#ajax_loader_remove').hide();
        } else {
            $('#permission_check_validate_number').val(parseFloat($('#permission_check_validate_number').val()) + 1);
            if ($('#permission_check_number').val() == $('#permission_check_validate_number').val()) {
                $("#now_remove").hide();
                $('#ajax_loader_remove').hide();
                $('#permission_check_number').val(0);
                $('#permission_check_validate_number').val(0);
            }
        }
    }
});