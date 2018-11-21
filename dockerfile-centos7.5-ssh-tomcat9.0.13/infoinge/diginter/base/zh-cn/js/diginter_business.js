/**
 * Created by Administrator on 2017/12/4 0004.
 */
window.addEventListener("storage", function (e) {   //监听localStorage的hasMetadata值，实现响应设计图标的实时变化
    if (e.currentTarget.localStorage.hasMetadata === 'true') {
        onResourceConnectionManage();
    } else {
        onResourceConnectionManage();
    }
    var dataRefresh;
    if (e.currentTarget.localStorage.dataRefresh != dataRefresh) {  //监听localStorage的hasMetadata值，实现目录数据的实时变化
        console.log(e.currentTarget.localStorage);
        onResourceConnectionManage();
        dataRefresh = e.currentTarget.localStorage;
    }
});


//数据立交应用插件导航
function onResourceConnectionManage() {
    $("#resource_connection_navigate")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.navigate.view"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    // hintError("导航应用失败！", false, "javascript:void(0)");
                    //     hintException(data, false, "javascript:void(0)");
                    zdconfirm("无法连接讯枢节点，请检查配置参数是否正确！");
                } else {
                    onCatalogSearch();
                    $("#toGuideBusiness").attr("href", toGuide + "business");
                    if ($("#resource_connection_navigate option").length > 2)
                        $(this).show();
                    else
                        $(this).hide();
                }
                ;
            });

}

// 数字立交功能目录
function onCatalogSearch() {
    // setRemoveSelectRecordButtonCatalog('block', '功能目录','infoinge', 'catalog.remove.process',
    //     'catalog_record_code', 'catalog_check_select', 'catalog_select','true');
    $("#resource_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=catalog.search.view"
            + "&buddle_id=" + $("#resource_connection_navigate").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {

                    if ($("#resource_connection_navigate").val() == 'exchange')
                        $("#service_nav_add").parent().show();
                    else
                        $("#service_nav_add").parent().hide();

                    if ($('#myModal1 .service-tit li:first-child').hasClass('tit-active') != 'true') {
                        $('#myModal1 .service-tit li:first-child').addClass('tit-active');
                        $('#myModal1 .service-tit li:first-child').siblings('li').removeClass('tit-active');
                    } else {
                        $('#myModal1 .service-tit li:first-child').siblings('li').removeClass('tit-active');
                    }
                    $("#resource_setting_main").off('click');
                    $("#resource_setting_main").on('click', '#diginter_exchange>tbody>tr:odd', function (e) {
                        var next_tr = $(this).attr('class');
                        if ($(e.target).attr('is-click') != 'false') {
                            if ($(this).next().css('display') == 'none') {
                                onDataSetting(next_tr, $('#' + next_tr + '_catalog_identifier').val(),$('.' + next_tr + '').attr('is_exchange'));
                                $(this).next().css('display', 'table-row')
                            } else {
                                $(this).next().css('display', 'none');
                            }

                        }
                    });
                    $("#service_nav").text('业务模型');
                    $("#service_nav_add").attr('title', '新增业务模型');

                    $("#resource_type").val('');
                    $("#resource_hinge_type").val('');
                    $('#removeSelectRecordBusiness').parent().hide();
                    $("#service_nav_add").off('click');
                    $("#service_nav_add").click(function () {
                        if ($(".configure-fr-one").css('display') == 'block')
                            $(".configure-fr-one").hide();
                        else
                            onCatalogSetting('', '');
                    });
                    if ($('#business_guide_setting').val()=='true'){
                        $('#serial_mac_guide').hide();
                        $('#activate_purchase').hide();
                        // introJs().setOptions({hintButtonLabel: '好的'}).addHints();
                        introJs().exit();
                    }
                }
            });
}
// 数字立交功能目录设置界面
function onCatalogSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=catalog.setting.view&code="
            + code + "&buddle_id=" + $("#resource_connection_navigate").val() + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示功能目录设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if ($("#catalog_frequentness").val() == 'month') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled')
                    } else if ($("#catalog_frequentness").val() == 'day') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled')
                    } else if ($("#catalog_frequentness").val() == 'hour') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_day_true").attr('disabled', 'disabled')
                    } else if ($("#catalog_frequentness").val() == 'minute') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_day_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_hour_true").attr('disabled', 'disabled')
                    } else if ($("#catalog_frequentness").val() == 'second') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_day_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_hour_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_minute_true").attr('disabled', 'disabled')
                    }
                }
                ;
                // hintMessage("显示功能目录设置界面成功。", false);

                $('#catalog_identifier').focus();
                // console.log(is_locate_record);
                // console.log(is_locate_record > 0);
                // if (is_locate_record > 0){
                //     locateNavigate(code, 'resource_setting_left');
                // }
            }).show();
}
// 数字立交功能目录克隆设置界面
function onCatalogCopySetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=catalog.copy.setting.view&code="
            + code + "&buddle_id=" + $("#resource_connection_navigate").val() + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示功能目录设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $('#catalog_identifier_new').focus();
                }
                ;
            }).show();
}
// 数字立交功能目录克隆设置执行
function catalogCopySettingProcess() {
    if ($('#catalog_identifier_new').val() == $('#identifier_catalog_source').val()){
        zdconfirm("提示", "标识必须修改！", function (confirm) {
            $("#catalog_identifier_new").focus();
        });
        return;
    }
    if (validateIdentifier($('#catalog_identifier_new').val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)) {
        if ($('#validate_catalog_setting').validationEngine('validate')) {
            $("#now_remove").show();
            $("#ajax_loader_remove").show();
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=catalog.identifer.validate.process&identifier="
                + $("#catalog_identifier_new").val()
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_code="
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        console.log(data);
                        hintError("查询目录标识失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if (data == '1') {
                            $("#now_remove").hide();
                            $("#ajax_loader_remove").hide();
                            zdconfirm("提示", "目录标识已存在!");
                        } else {
                            $.request(httpHeader, '克隆功能目录', new Array('buddle.cludove',
                                'catalog.cludove'), new Array('diginter', 'catalog.copy.setting.process'),
                                new Array('code_catalog_source','identifier_catalog_source','catalog_identifier_new'),
                                new Array('code_catalog_source','identifier_catalog_source','catalog_identifier_new'), 'text',
                                null, null, 'catalogSettingSuccessCallback',
                                'normalErrorCallback');
                        }
                    }
                })
        }
    } else {
        zdconfirm("提示", "标识必须为字母可加.分隔");
        $("#catalog_identifier_new").focus();
    }
}

//监听类型改变判断是否显示发布总线
function onCatalogTypeChange() {
    var type = $("#catalog_type").val();
    var is_issue_dsb = $("#is_is_issue_dsb").val();
    if (is_issue_dsb == 'is_issue_dsb_true') {
        if (type == 'function') {
            $("#catalog_is_issue_dsb_container").show();
            $("#catalog_is_issue_dsb_true").removeProp('checked');
            $("#catalog_is_issue_dsb_false").prop('checked', 'checked');
            $("#catalog_is_issue_dsb").val('false');
        } else {
            $("#catalog_is_issue_dsb_container").hide();
            $("#catalog_is_issue_dsb").val('false');
        }
    } else if (is_issue_dsb != 'is_issue_dsb_false') {
        if (type == 'function') {
            $("#catalog_is_issue_dsb_container").show();
            $("#catalog_is_issue_dsb_false").removeProp('checked');
            $("#catalog_is_issue_dsb_true").removeProp('checked');
            if (is_issue_dsb == 'true') {
                $("#catalog_is_issue_dsb_true").prop('checked', 'checked');
                $("#catalog_is_issue_dsb").val('true');
            } else {
                $("#catalog_is_issue_dsb_false").prop('checked', 'checked');
                $("#catalog_is_issue_dsb").val('false');
            }

        } else {
            $("#catalog_is_issue_dsb_container").hide();
            $("#catalog_is_issue_dsb").val('false');
        }
    }

    //判断是否显示讯枢交换按钮
    if (type == 'function') {
        $('#catalog_is_exchange_container').show();
        $("#catalog_is_exchange_true").removeProp('checked');
        $("#catalog_is_exchange_false").prop('checked', 'checked');
    } else {
        $('#catalog_is_exchange_container').hide();
        $("#catalog_is_exchange").val('false');
    }


    // if (type != 'function') {
    //     $('#catalog_is_log_true').prop('checked', 'checked');
    //     $("#catalog_is_log").val('true');
    //     $('#catalog_is_running_true').attr('disabled', 'disabled');
    //     $('#catalog_is_running_false').click();
    // } else {
    //     $('#catalog_is_log_false').prop('checked', 'checked');
    //     $("#catalog_is_log").val('false');
    //     $('#catalog_is_running_true').removeAttr('disabled', 'disabled');
    // }
}

//功能目录调用日期插件
function onCatalogDate() {
    var timer = {
        elem: '#catalog_join_time',
        format: 'YYYY-MM-DD hh:mm:ss',
        istime: true
    };
    laydate(timer);
}

//功能目录预览功能跳转
function onCatalogPreview(url) {
    var name = "功能预览"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.95; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 80 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

/* 文件上传 */
function uploadBuddleFile(style_name, language_name, file_input_id, resource_name, catalog_id) {
    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
            "catalog.cludove": "buddle.upload.process",
            "buddle_id": "exchange",
            "catalog_id": catalog_id,
            "style_name": style_name,
            "language_name": language_name
        },
        secureuri: false,
        fileElementId: file_input_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0) {
                hintMessage("上传" + resource_name + "成功！", false);
                zdconfirm("提示", "文件上传成功 !");
                //window.location.reload();
            }
            else {
                zdconfirm("警告", eval("(" + data + ")")[0].record_content);
                try {
                    hintException(data, false, '');
                } catch (e) {
                    hintError("上传" + resource_name + "失败：" + data + "！", false,
                        "javascript:void(0)");
                }
            }
        },
        error: function (data, status, e) {
            try {
                hintException(data, false, '');
            } catch (e) {
                hintError("上传" + resource_name + "失败：" + data + "！", false,
                    "javascript:void(0)");
            }
        }
    });
    return false;
}

// 手工交换
function onExchangeByHand(url, is_confirm) {
    var name = "手工交换"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.95; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 80 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - iWidth) / 2; //获得窗口的水平位置;

    var is_execute = true;

    if ($('#exchange_code_catalog_input').val() == '') {
        zdconfirm("提示", "请输入交换记录主键值!");
        return;
    }

    if (is_confirm) {
        zdconfirm("提示", "确定要对 " + $("#exchange_code_catalog_input").val() + " 执行手工交换吗？", function (confirm) {
            if (confirm) {
                window.open(url + '&exchange_code=' + $('#exchange_code_catalog_input').val(), name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
                    + iWidth + ',top=' + iTop + ',left=' + iLeft
                    + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
            }
        });
    } else {
        window.open(url + '&exchange_code=' + $('#exchange_code_catalog_input').val(), name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
            + iWidth + ',top=' + iTop + ',left=' + iLeft
            + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
    }
}


//  点击提交按钮查询目录标识
function validatecatalogSetting() {
    if (validateIdentifier($('#catalog_identifier').val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)) {
        var identifier2 = $('#catalog_identifier').val();
        var name = $("#catalog_name").val();
        if ($('#validate_catalog_setting').validationEngine('validate')) {
            $("#now_remove").show();
            $("#ajax_loader_remove").show();
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=catalog.identifer.validate.process&identifier="
                + identifier2 + "&name=" + encodeURI(encodeURI(name))
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_code=" + $("#code_catalog").val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        $("#now_remove").hide();
                        $("#ajax_loader_remove").hide();
                        console.log(data);
                        hintError("查询目录标识失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if (data == '1') {
                            $("#now_remove").hide();
                            $("#ajax_loader_remove").hide();
                            zdconfirm("提示", "目录标识已存在!");
                        } else if (data == '2') {
                            $("#now_remove").hide();
                            $("#ajax_loader_remove").hide();
                            zdconfirm("提示", "目录名字已存在!");
                        } else if (data == 'ok') {
                            processCatalogSetting();
                        }
                    }
                })
        }
    } else {
        zdconfirm("提示", "标识必须为字母可加.分隔");
        $("#catalog_identifier").focus();
    }
}

function processCatalogSetting() {
    // 开始时间和结束时间判断
    if ($("#catalog_run_start_minute").val() != '' && $("#catalog_run_start_hour").val() == '') {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        zdconfirm("提示", "开始时间无效!");
    } else if ($("#catalog_run_finish_minute").val() != '' && $("#catalog_run_finish_hour").val() == '') {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        zdconfirm("提示", "结束时间无效!");
    } else if ($("#catalog_run_start_hour").val() != '' && $("#catalog_run_finish_hour").val() == '') {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        zdconfirm("提示", "请输入结束时间!");
    } else if ($("#catalog_run_finish_hour").val() != '' && $("#catalog_run_start_hour").val() == '') {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        zdconfirm("提示", "请输入开始时间!");
    } else {
        if ($("#catalog_run_start_hour").val() != '' && $("#catalog_run_start_minute").val() == '')
            $("#catalog_run_start_minute").val('00');
        if ($("#catalog_run_finish_hour").val() != '' && $("#catalog_run_finish_minute").val() == '')
            $("#catalog_run_finish_minute").val('00');
        // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
        if ($('#validate_catalog_setting').validationEngine('validate')) {
            var is_synced_dsb = ' ';
            if ($('#catalog_type').val() != 'function') {
                is_synced_dsb = 'true';
            } else if ($('#code_catalog').val().length > 0) {
                is_synced_dsb = 'false';
            }

            if ($('#code_catalog').val().length > 0) {
                $.request(httpHeader, '修改功能目录', new Array('buddle.cludove',
                    'catalog.cludove', 'is_synced_dsb'), new Array('diginter',
                    'catalog.setting.process', is_synced_dsb), new Array('code',
                    'connection_code', 'buddle_id', 'identifier', 'name',
                    'type', 'content_type', 'is_permit', 'is_home', 'is_pause',
                    'is_for_each', 'is_log', 'select_expression', 'is_running',
                    'frequentness', 'interval_time', 'join_time', 'run_start_hour',
                    'run_start_minute', 'run_finish_hour',
                    'run_finish_minute', 'description', 'is_issue_dsb', 'is_exchange'), new Array('code_catalog',
                    'connection_code_catalog', 'buddle_id',
                    'catalog_identifier', 'catalog_name', 'catalog_type',
                    'catalog_content_type', 'catalog_is_permit',
                    'catalog_is_home', 'catalog_is_pause',
                    'catalog_is_for_each', 'catalog_is_log', 'catalog_select_expression',
                    'catalog_is_running', 'catalog_frequentness',
                    'catalog_interval_time', 'catalog_join_time',
                    'catalog_run_start_hour', 'catalog_run_start_minute',
                    'catalog_run_finish_hour', 'catalog_run_finish_minute',
                    'catalog_description', 'catalog_is_issue_dsb', 'catalog_is_exchange'), 'text',
                    null, null, 'catalogSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '新增功能目录', new Array('buddle.cludove',
                    'catalog.cludove', 'is_synced_dsb'), new Array('diginter',
                    'catalog.setting.process', is_synced_dsb), new Array('buddle_id',
                    'identifier', 'name', 'type', 'content_type', 'is_permit',
                    'is_home', 'is_pause', 'is_for_each', 'is_log', 'select_expression',
                    'is_running', 'frequentness', 'interval_time', 'join_time', 'run_start_hour',
                    'run_start_minute', 'run_finish_hour',
                    'run_finish_minute', 'description', 'is_issue_dsb', 'is_exchange'), new Array('buddle_id',
                    'catalog_identifier', 'catalog_name', 'catalog_type',
                    'catalog_content_type', 'catalog_is_permit',
                    'catalog_is_home', 'catalog_is_pause',
                    'catalog_is_for_each', 'catalog_is_log', 'catalog_select_expression',
                    'catalog_is_running', 'catalog_frequentness',
                    'catalog_interval_time', 'catalog_join_time',
                    'catalog_run_start_hour', 'catalog_run_start_minute',
                    'catalog_run_finish_hour', 'catalog_run_finish_minute',
                    'catalog_description', 'catalog_is_issue_dsb', 'catalog_is_exchange'), 'text',
                    null, null, 'catalogSettingSuccessCallback',
                    'normalErrorCallback');
            }
        }
    }
}

//新增功能目录后
$.extend({
    catalogSettingSuccessCallback: function (responseText) {
        // 刷新页面
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#resource_setting_right").hide();
        // onCatalogManage(responseText);
        onCatalogSearch('', '', '');
    }
});


function catalogDatadisplay(TagName, catalog_id) {
    var obj = document.getElementById(TagName);
    if (obj.style.display == "") {
        obj.style.display = "none";
    } else {
        obj.style.display = "";
        onDataSetting(TagName, catalog_id);
    }
}

// 目录数据data查看界面
function onDataSetting(catalog_code, catalog_id,is_exchange) {
    // setRemoveSelectRecordButtonData('block', '目录数据','infoinge', 'data.remove.process',
    //     'data_record_code', 'data_check_select', 'data_select');

    $("#" + catalog_code + "_data_search")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=data.search.view"
            + "&buddle_id=" + $('#resource_connection_navigate').val()
            + "&is_exchange=" + is_exchange
            + "&catalog_code=" + catalog_code
            + "&catalog_id=" + catalog_id + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入目录数据失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                //点击行显示数据引用数据
                $("#" + catalog_code + "_data_search").off("click");
                $("#" + catalog_code + "_data_search").on('click', '.data_quote', function (e) {
                    if ($(e.target).attr('is-click') != 'false') {
                        var id = $(this).attr("code");
                        if ($("#" + id).css('display') == 'none') {
                            var data_buddle_id = $(this).next().next("#buddle_id_quote").val(),
                                data_catalog_id = $(this).next().next().next("#catalog_id_quote").val(),
                                data_code = $(this).next().next().next().next("#data_code").val(),
                                data_type = $(this).next().next().next().next().next("#type_quote").val(),
                                data_connection_id = $(this).next().next().next().next().next().next("#connection_id_quote").val(),
                                data_resource_name = $(this).next().next().next().next().next().next().next("#resource_name_quote").val();
                            onQuoteSetting(this, data_buddle_id, data_catalog_id, data_code, data_type,
                                data_connection_id, data_resource_name);
                            $("#" + id).css('display', 'table-row');
                        } else {
                            $("#" + id).css('display', 'none');
                        }
                    }
                });
            });
}

function showDataSetting(code, catalog_id, catalog_code,is_exchange) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=data.setting.view&code="
            + code + "&buddle_id=exchange"
            + "&is_exchange=" + is_exchange
            + "&catalog_id=" + catalog_id
            + "&catalog_code=" + catalog_code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                // console.log(data);
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                    // if ($("#data_catalog_type").val().length > 0) {
                    // $('input:radio[name="data_type_select"]').attr('disabled','disabled');
                    $('#data_type_metadata').hide();
                    $('#data_type_metadata_lable').hide();
                    $('.data_type_metadata_br').hide();
                    if ($('#data_position').val() == '0') {
                        $("#data_position").attr('disabled', 'disabled');
                        $('#data_position_validate').attr('class', 'validate[required,custom[zpositives],max[100]]');
                        $('#data_position').spinner({
                            max: 0,
                            min: 0,
                            step: 1
                        });
                    } else {
                        $('#data_position').spinner({
                            max: 100,
                            min: 1,
                            step: 1
                        });
                    }
                    $('#data_exchange_new_processor_number').spinner({
                        max: 1000,
                        min: 1,
                        step: 1
                    });

                    if ($("#data_is_for_each").val() == 'true')
                        $("#data_select_expression").attr('class', 'validate[required,maxSize[1024]]');
                    else
                        $("#data_select_expression").attr('class', 'validate[maxSize[1024]]');


                    // if ($('#data_operation_migrate_container').is(':hidden')){
                    //     $('#data_exchange_flag_change').hide();
                    //     $('#data_exchange_flag_reset_container').hide();
                    // }else {
                    //     $('#data_exchange_flag_change').show();
                    //     $('#data_exchange_flag_reset_container').show();function
                    // };
                    if ($("#data_operation_migrate_container").css('display') == 'none') {
                        if ($('#data_operation_setting').val() != 'migrate' && $('#data_operation_setting').val() != 'synchronize' && $('#data_operation_setting').val() != 'infoinge_sync' && $('#data_operation_setting').val() != 'infoinge_migr' && $('#data_operation_setting').val() != 'class_sync' && $('#data_operation_setting').val() != 'class_migr' && $('#data_catalog_type').val().length > 0)
                            $('input:radio[name="data_type_select"]').attr('disabled', 'disabled');
                    }
                    newModelAddButton();
                    if ($('#code_data').val() == ''){
                        onDataTypeDbCheck('data_connection_id', 'connection_id_by_db')
                    } else if ($('.' + catalog_code).attr('is_exchange') == 'true'
                        && $('#data_position').val() == '0') {
                        $($('#data_operation option')[2]).hide();
                        $($('#data_operation option')[3]).hide();
                        $($('#data_operation option')[4]).hide();
                        $($('#data_operation option')[5]).hide();
                    }
                }
                ;
                // hintMessage("显示目录数据设置界面成功。", false);

                $('#data_name').focus();
                if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class')
                    onResourceConnectionDataSelect("class_connection_id", $("#data_type").val(), $("#class_connection_id_by_class").val(), "请选择资源定义");

                if ($("#data_type").val() == 'Hinge')
                    onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");

                onDataConnectionIdChange();


                $('#data_row_number').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });

                showRemoveRepeatField();
            });
}

//查询字段
function showValueFieldSelect(connection_id, resource_name, resource_buddle) {
    $("#data_remove_repeat_field")
        .load(
            httpHeader
            + 's?buddle.cludove=diginter&catalog.cludove=data.field.select.view'
            + '&data_type=DB'
            + '&data_connection_id=' + connection_id
            + '&data_resource_buddle=' + resource_buddle
            + '&data_resource_name=' + resource_name
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == 'error') {
                    hintError("在指定位置载入应用结构失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $('#repeat_field_container').show();
                    ;

            });
}


function addTag(obj) {
    var tag = obj.value;
    if (tag != '') {
        var i = 0;
        $(".tag").each(function() {
            if ($(this).text() == tag + "×") {
                $(this).addClass("tag-warning");
                setTimeout("removeWarning()", 400);
                i++;
            }
        })
        obj.value = '';
        if (i > 0) { //说明有重复
            return false;
        }
        $("#tags").append(`<span class='tag'><span>${tag}</span><button class='close' onclick="$(this).parent('.tag').remove();" type='button'>×</button></span>`); //添加标签
    }
}

function removeWarning() {
    $(".tag-warning").removeClass("tag-warning");
}

//显示去重字段
function showRemoveRepeatField() {
    var field = $('#repeat_field_value').val();
    if (field != '') {
        var arr = field.split(' ');
        var html = '';
        for (var i = 0; i < arr.length; i++) {
            html += `<span class='tag'><span>${arr[i]}</span><button class='close' onclick="$(this).parent('.tag').remove();" type='button'>×</button></span>`;
        }
        $("#tags").html(html);
    }
}

function processDataSetting() {
    if($('#validate_data_setting').validationEngine('validate')) {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
    }
    var connection_id, resource_name, resource_buddle;
    if ($('#data_type').val() == 'DB') {
        connection_id = $('#data_connection_id').val();
        resource_name = $('#data_resource_name').val();
    } else if ($('#data_type').val() == 'WS' || $('#data_type').val() == 'Class') {
        connection_id = $('#class_connection_id').val();
        resource_name = '';
    } else if ($('#data_type').val() == 'Hinge') {
        connection_id = $('#data_connection_id').val();
        resource_name = $('#data_resource_name').val();
        resource_buddle = $('#data_resource_buddle').val();
    }
    validateResource($('#buddle_id').val(), $('#catalog_id').val(), connection_id, resource_name, resource_buddle, $('#data_type').val(), $('#code_data').val());
    // 把JDBC通用迁移/同步改为其他迁移/同步类型时
    // if ($('#code_data').val().length > 0 && ($("#data_operation_setting").val() == 'migrate' || $("#data_operation_setting").val() == 'synchronize')) {
    //     if ($('#code_data').val().length > 0 && $('#data_operation_migr').val() != 'migrate' && $('#data_operation_migr').val() != 'synchronize') {
    //         zdconfirm("提示", "修改后，操作名字为查询的目录数据都会被删除，确定要修改？", function (confirm) {
    //             if (confirm) {
    //                 $("#now_remove").show();
    //                 $("#ajax_loader_remove").show();
    //                 $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'data_operation'),
    //                     new Array('diginter', 'data.operation.remove.process', 'search'),
    //                     new Array('buddle_id', 'catalog_id', 'catalog_code'), new Array('buddle_id', 'catalog_id', 'catalog_code'),
    //                     'text', null, null, 'onRecordOperationRemoveCallBack', 'normalErrorCallback');
    //             }
    //         });
    //     }
    //     else
    //         processCatalogDataSetting();
    // }
    // else
    //     processCatalogDataSetting();
}

// $.extend({
//     onRecordOperationRemoveCallBack: function (responseText) {
//         $("#now_remove").hide();
//         $("#ajax_loader_remove").hide();
//         processCatalogDataSetting();
//     }
// });

//计算去重字段
function removeRepeatField() {
    var text = '';
    $('#tags .tag span').map(function (index) {
        if (index > 0)
            text += ' ';
        text+= $(this).text();
    })
    if (text.length > 2048)
        text = false;
    return text
}

function processCatalogDataSetting() {
    var catalog_code = $('#catalog_code').val();
    if ($('#metadata_complete').val()!=''){
        if ($('#metadata_complete').val() == 'adopt'){

        } else if ($('#metadata_complete').val() == 'build'){
            $("#now_remove").hide();
            $("#ajax_loader_remove").hide();
            zdalert('提示','新增失败！请选择目录数据为保存的讯枢！');
            return;
        }else{
            $("#now_remove").hide();
            $("#ajax_loader_remove").hide();
            zdalert('提示','新增失败！请选择目录数据为查询的讯枢！');
            return;
        }
    }else {
        // zdalert('提示','稍等！正在验证数据元数据是否完整！请重新提交！');
        // return;
    }
    if ($("#data_exchange_flag_field").val() != '') {
        $("#data_exchange_sync_time_field").removeClass("validate[required]");
    }
    if ($("#data_exchange_sync_time_field").val() != '') {
        $("#data_exchange_flag_field").removeClass("validate[required]");
        $("#data_exchange_flag_change").removeClass("validate[required]");
        $("#data_exchange_flag_reset").removeClass("validate[required]");
    }
    if ($('#data_resource_name').val() != $('#resource_name_by_db_one').val())
        $('#remove_parameter_data_code').val($('#code_data').val());
    else
        $('#remove_parameter_data_code').val('');
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#data_type").val() == 'DB' || $("#data_type").val() == 'Hinge') {
        $("#data_resource_name").attr('class', 'validate[required]')
    } else {
        $("#data_resource_name").removeAttr('class', 'validate[required]');
        $("#data_is_for_each").val('false');
    }

    if ($("#data_is_for_each").val() == 'false')
        $("#data_select_expression").val('');

    var is_length = false;
    var remove_repeat_field = '';
    if ($('#data_type').val() == 'DB' && $('#operation_by_db').val() == 'build') {
        var text = removeRepeatField();
        if (text === false) {
            $("#now_remove").hide();
            $("#ajax_loader_remove").hide();
            zdalert('提示', '去重字段长度不能大于2048');
            is_length = true;
        } else
            remove_repeat_field = text;
    }

    if (($("#data_catalog_type").val() != '') && ($("#data_count_right").val() >= 1 ) && ($('#code_data').val().length == 0) && ($('#data_operation').val() == 'build') && ($('#data_type').val() == 'DB' || $('#data_type').val() == 'Class' || $('#data_type').val() == 'WS' || $('#data_type').val() == 'Hinge')) {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        zdconfirm("提示", "选择功能为迁移或同步时，保存操作必须唯一");
    } else if (is_length == false) {
        if ($('#validate_data_setting').validationEngine('validate')) {
            var data_s_field_type = $("#data_s_field").find("option:selected").attr('class') == undefined ? '' : $("#data_s_field").find("option:selected").attr('class');
            var data_r_field_type = $("#data_r_field").find("option:selected").attr('class') == undefined ? '' : $("#data_r_field").find("option:selected").attr('class');
            if ($("#data_operation_migrate_container").css('display') == 'none') {
                $('#data_exchange_migr_field').val('');
                $('#data_exchange_sync_field').val('');
                $('#data_exchange_sync_time_field').val('');
                $('#data_exchange_flag_field').val('');
                $('#data_exchange_flag_change').val('');
            }
            if ($('#code_data').val().length > 0) {
                if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $('#data_operation').val() != 'search') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'catalog_code','remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'false', catalog_code,remove_repeat_field),
                        new Array('code', 'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify', 'parameter_data_code',
                            'remove_resource_name', 'location', 'remove_operation', 'data_is_mapping',
                            'data_is_operation', 'data_main_code', 'data_exchange_code', 
                            'metadata_filed_migr','metadata_filed_sync','data_catalog_type','processor_number'), new Array('code_data',
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit',
                            'data_classify', 'remove_parameter_data_code',
                            'remove_resource_name', 'data_location', 'remove_operation',
                            'data_is_mapping', 'data_is_operation', 'data_main_code','code_data_exchange',
                            'metadata_filed_migr','metadata_filed_sync','data_catalog_type','data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search') {
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb','data_s_field_type',
                        'data_r_field_type','remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'false',data_s_field_type,data_r_field_type,remove_repeat_field), new Array('code',
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'remove_connection_id',
                            'remove_resource_name', 'location', 'remove_operation', 'code_data_migr',
                            'r_identifier', 'r_resource_name', 'r_field', 's_field', 
                            'resource_relevance_code', 'parameter_data_code', 'data_is_mapping',
                            'data_is_operation', 'data_main_code','data_catalog_type'), new Array('code_data',
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit',
                            'remove_connection_id_by_db', 'remove_resource_name',
                            'data_location', 'remove_operation', 'code_data_migr',
                            'data_r_identifier', 'data_r_resource_name', 'data_r_field',
                            'data_s_field', 'resource_relevance_code', 'remove_parameter_data_code',
                            'data_is_mapping', 'data_is_operation', 'data_main_code','data_catalog_type'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
                else if ($("#data_type").val() == 'Hinge' && $('#data_operation').val() != 'search') {
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'catalog_code','remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'true', catalog_code,remove_repeat_field), new Array('code',
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'data_exchange_code',
                            'is_permit', 'remove_connection_id',
                            'remove_resource_name', 'code_data_migr', 'parameter_data_code',
                            'location', 'remove_operation', 'data_is_mapping', 'data_is_operation',
                            'data_main_code', 'metadata_filed_migr','metadata_filed_sync','data_catalog_type','processor_number'), new Array('code_data',
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'data_connection_id',
                            'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                            'data_is_permit', 'remove_connection_id_by_db', 'remove_resource_name',
                            'code_data_migr', 'remove_parameter_data_code',
                            'data_location', 'remove_operation', 'data_is_mapping',
                            'data_is_operation', 'data_main_code', 'metadata_filed_migr','metadata_filed_sync','data_catalog_type','data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb','remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'false',remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id',
                                'remove_resource_name', 'location', 'remove_operation',
                                'code_data_migr', 'parameter_data_code', 'data_is_mapping',
                                'data_is_operation', 'data_main_code','data_catalog_type'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'remove_connection_id_by_db', 'remove_resource_name',
                                'data_location', 'remove_operation', 'code_data_migr',
                                'remove_parameter_data_code', 'data_is_mapping', 
                                'data_is_operation', 'data_main_code','data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search'))
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb',
                            'data_s_field_type','data_r_field_type','remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'false',data_s_field_type,data_r_field_type,remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id',
                                'remove_resource_name', 'location', 'remove_operation', 'code_data_migr',
                                'r_identifier', 'r_resource_name', 'r_field', 's_field',
                                'resource_relevance_code', 'parameter_data_code', 'data_is_mapping',
                                'data_is_operation', 'data_main_code','data_catalog_type'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'remove_connection_id_by_db', 'remove_resource_name',
                                'data_location', 'remove_operation', 'code_data_migr',
                                'data_r_identifier', 'data_r_resource_name', 'data_r_field',
                                'data_s_field', 'resource_relevance_code', 'remove_parameter_data_code',
                                'data_is_mapping', 'data_is_operation', 'data_main_code','data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'catalog_code',remove_repeat_field),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'true', catalog_code,remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'flag_change', 'flag_reset', 'remove_connection_id',
                                'remove_resource_name', 'location', 'remove_operation',
                                'code_data_migr', 'parameter_data_code', 'data_is_mapping',
                                'data_is_operation', 'data_main_code', 'metadata_filed_migr',
                                'metadata_filed_sync','data_catalog_type','build_connection_id',
                                'build_resource_name'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', $('#data_operation_migrate_container').css('display') == 'none'?'data_operation':'data_operation_migr',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression',
                                'data_is_permit', 'data_exchange_flag_field', 'data_exchange_flag_change',
                                'data_exchange_flag_reset', 'remove_connection_id_by_db', 'remove_resource_name',
                                'data_location', 'remove_operation', 'code_data_migr', 'remove_parameter_data_code',
                                'data_is_mapping', 'data_is_operation', 'data_main_code',
                                'metadata_filed_migr','metadata_filed_sync','data_catalog_type','build_connection_id',
                                'build_resource_name'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
            } else {
                if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $('#data_operation').val() != 'search') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'catalog_code','remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', catalog_code,remove_repeat_field), new Array(
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify', 'parameter_data_code',
                            'data_exchange_code', 'metadata_filed_migr','metadata_filed_sync','data_catalog_type','processor_number'), new Array(
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit',
                            'data_classify', 'remove_parameter_data_code', 'code_data_exchange',
                            'metadata_filed_migr','metadata_filed_sync','data_catalog_type','data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
                else if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search') {
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend','data_s_field_type','data_r_field_type','remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false',data_s_field_type,data_r_field_type,remove_repeat_field), new Array('buddle_id',
                            'catalog_id', 'name', 'type', 'connection_id',
                            'resource_name', 'operation', 'is_paginate',
                            'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'code_data_migr', 'r_identifier',
                            'r_resource_name', 'r_field', 's_field', 'parameter_data_code','data_catalog_type'), new Array('buddle_id',
                            'catalog_id', 'data_name', 'data_type',
                            'class_connection_id', 'data_connection_id',
                            'data_operation', 'data_is_paginate',
                            'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit', 'code_data_migr',
                            'data_r_identifier', 'data_r_resource_name', 'data_r_field',
                            'data_s_field', 'remove_parameter_data_code','data_catalog_type'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
                else if ($("#data_type").val() == 'Hinge' && $('#data_operation').val() != 'search') {
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'catalog_code','remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'true', catalog_code,remove_repeat_field), new Array('buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'data_exchange_code',
                            'is_permit', 'remove_connection_id',
                            'remove_resource_name', 'code_data_migr', 'parameter_data_code',
                            'metadata_filed_migr','metadata_filed_sync','data_catalog_type','processor_number'), new Array(
                            'buddle_id', 'catalog_id', 'data_name', 'data_type', 'data_connection_id',
                            'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                            'data_is_permit', 'remove_connection_id_by_db', 'remove_resource_name',
                            'code_data_migr', 'remove_parameter_data_code', 'metadata_filed_migr',
                            'metadata_filed_sync','data_catalog_type','data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'catalog_code','remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', catalog_code,remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'code_data_migr',
                                'parameter_data_code','data_catalog_type'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'code_data_migr', 'remove_parameter_data_code','data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search'))
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','data_s_field_type','data_r_field_type','remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false',data_s_field_type,data_r_field_type,remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'code_data_migr', 'r_identifier',
                                'r_resource_name', 'r_field', 's_field', 'parameter_data_code','data_catalog_type'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit', 'code_data_migr',
                                'data_r_identifier', 'data_r_resource_name',
                                'data_r_field', 'data_s_field', 'remove_parameter_data_code','data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'catalog_code','remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'true', catalog_code,remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'flag_change', 'flag_reset', 'code_data_migr', 'parameter_data_code', 
                                'metadata_filed_migr','metadata_filed_sync','data_catalog_type'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                $('#data_operation_migrate_container').css('display') == 'none'?'data_operation':'data_operation_migr', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression', 'data_is_permit',
                                'data_exchange_flag_field', 'data_exchange_flag_change', 'data_exchange_flag_reset',
                                'code_data_migr', 'remove_parameter_data_code',
                                'metadata_filed_migr','metadata_filed_sync','data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
            }
        }
    }
}

$.extend({
    dataSettingSuccessCallback: function (responseText) {
        // 刷新页面
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#resource_setting_right").hide();
        var obj = eval('(' + responseText + ')');
        onDataSetting(obj.catalog_code, obj.catalog_id);
    }
});
$.extend({
    dataModelSettingSuccessCallback: function (responseText) {
        // flag = 1;
        // 刷新页面
        // console.log(responseText);
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#resource_setting_right").hide();
        onDataSetting($('#catalog_code').val(), $('#catalog_id').val(),$('.' + $('#catalog_code').val()).attr('is_exchange'));
        if ($('.' + $('#catalog_code').val()).attr('is_exchange') == 'true')
            $('.' + $('#catalog_code').val() + ' a.response').show();
    }
});

//验证目录数据条件库表是否添加过
function validateResource(buddle_id,catalog_id,connection_id,resource_name,resource_buddle,type,data_code) {
    $(window).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=data.resource.validate.process&connection_id="
        + connection_id + "&resource_name=" + resource_name
        + "&data_code=" + data_code
        + "&buddle_id=" + buddle_id
        + "&catalog_id=" + catalog_id
        + "&data_type=" + type
        + "&resource_buddle=" + resource_buddle
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                console.log(data);
                hintError("查询目录标识失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if (data == 'yes') {
                    if ($('#code_data').val().length > 0) {
                        var is_confirm = false;
                        var is_db_confirm = false;
                        if ($('#data_type_init').val() != $('#data_type').val()) {
                            is_confirm = true;
                            is_db_confirm = true;
                        } else {
                            if ($('#data_type').val() == 'DB') {
                                if ($('#data_connection_id').val() != $('#remove_connection_id').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_name').val() != $('#remove_resource_name').val()) {
                                    is_confirm = true;
                                } else if ($('#operation_by_db').val() != $('#remove_operation').val()) {
                                    is_confirm = true;
                                    is_db_confirm = true;
                                }
                            } else if ($('#data_type').val() == 'Hinge') {
                                if ($('#data_connection_id').val() != $('#remove_connection_id').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_buddle').val() != $('#resource_buddle_by_hinge').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_name').val() != $('#resource_name_by_hinge').val()) {
                                    is_confirm = true
                                } else if ($('#data_operation').val() != $('#remove_operation_by_db').val()) {
                                    is_confirm = true;
                                    is_db_confirm = true;
                                }
                            } else if ($('#data_type').val() == 'Class' || $('#data_type').val() == 'WS') {
                                if ($('#class_connection_id').val() != $('#remove_connection_id').val()) {
                                    is_confirm = true;
                                } else if ($('#data_connection_id').val() != $('#remove_resource_name').val()) {
                                    is_confirm = true
                                } else if ($('#data_operation').val() != $('#remove_operation').val()) {
                                    is_confirm = true;
                                    is_db_confirm = true;
                                }
                            }
                        }
                        if (is_confirm == true) {
                            $("#now_remove").hide();
                            $("#ajax_loader_remove").hide();
                            var title = '提交后，相关的映射关系会被清除!';
                            if ($('#code_data').val() == $('#data_main_code').val()) {
                                if ($("#data_catalog_type").val() != 'migration' && $("#data_catalog_type").val() != 'synchronization') {
                                    title = '修改后，目录数据，相关的映射关系都会被删除，确定要修改？';
                                } else {
                                    if (is_db_confirm == true) {
                                        title = '修改后，操作名字为查询和保存的目录数据，相关的映射关系都会被删除，确定要修改？';
                                    } else {
                                        title = '修改后，操作名字为查询的目录数据，相关的映射关系都会被删除，确定要修改？';
                                    }
                                }
                            }
                            zdconfirm('提示', title,
                                function (confirm) {
                                    if (confirm) {
                                        $("#now_remove").show();
                                        $("#ajax_loader_remove").show();
                                        processCatalogDataSetting();
                                    }
                                }
                            );
                            if (is_db_confirm == true) {
                                $('#data_is_operation').val('true');
                            }
                            $('#data_is_mapping').val('true');
                        } else
                            processCatalogDataSetting();
                    } else {
                        processCatalogDataSetting();
                    }
                } else{
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                    zdalert('提示','不允许添加重复的库表定义');
                    }
                    
            }
        })
}


//点击新增按钮重置操作名字
function initDataOperation() {
    if ($("#data_catalog_type").val().length > 0)
        $('#data_operation').html('<option value="build">保存</option><option value="search">查询</option>');
    else if ($("#data_type").val() == 'DB' || $("#data_type").val() == 'Metadata')
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option style="display:none" value="upload">上传</option><option style="display:none" value="download">下载</option>');
    else
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option value="upload">上传</option><option value="download">下载</option>');
}

//重置为目录数据初次加载时的页面

function initDataSetting() {
    var data_type_init = $("#data_type_init").val();

    if (data_type_init == 'DB')
        $("#data_type_db").trigger('click');
    else if (data_type_init == 'Class')
        $("#data_type_class").trigger('click');
    else if (data_type_init == 'WS')
        $("#data_type_ws").trigger('click');
    else if (data_type_init == 'Metadata')
        $("#data_type_metadata").trigger('click');
    else if (data_type_init == 'Hinge')
        $("#data_type_hinge").trigger('click');
    else {
        $("#data_type_db").trigger('click');
        // $('#data_exchange_container').html('');
    }
    if (data_type_init == '')
        $("#data_type").val('DB');
    else
        $("#data_type").val(data_type_init);
}


function onDataTypeCheck(select_id, connection_id_by_resource) {
    if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
        var str = new Array();
        $("#data_connection_id option").map(function () {
            if ($(this).val() != '') str.push($(this).val());
        })
        for (var i = 0; i <= str.length - 1; i++) {
            if (str[i] == $('#' + connection_id_by_resource + '').val()) {
                $('#' + select_id + '').val($('#' + connection_id_by_resource + '').val());
                break;
            }
        }
    } else {
        $('#' + select_id + '').val($('#' + connection_id_by_resource + '').val());
    }
    if ($('#data_connection_id').val() != null)
        onResourceStructureSelect($('#data_connection_id').val(),
            'data_resource_name', 'Class', '请选择类方法名',
            'changeDataResourceNameBy()', '');

    $("#data_connection_id_container").show();

    $("#data_resource_buddle_container").hide();


    $("#data_classification").show();

    $("#data_classify_container").show();


    $("#data_resource_buddle").html("<option value=\"\">请选择应用标识</option>");


    // $("#data_resource_name_container").show();

    if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
        $("#data_resource_name_container").hide();
        // $('#data_operation_container').hide();
        $('#data_exchange_container').hide();
        $("#hinge_content_block").hide();
    }

    // if ($("#data_count").val() != '0' && ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && ($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization')) {
    //     $("#data_resource_name_container").hide();
    //     // $('#data_operation_container').hide();
    //     $('#data_exchange_container').hide();
    //     $('#data_operation').html('<option value="build">保存</option><option value="search">查询</option>');
    // }

    if ($("#data_count").val() == '1' && $("#code_data").val() != '' && ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $("#data_catalog_type").val() == 'migration') {
        $("#data_resource_name_container").hide();
        // $('#data_operation_container').hide();
        $('#data_exchange_container').hide();
        $('#data_exchange_processor_number_div').show();
        $('#data_operation').html('<option value="class_migr">程序通用迁移</option>');
    } else if ($("#data_count").val() == '1' && $("#code_data").val() != '' && ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $("#data_catalog_type").val() == 'synchronization') {
        $("#data_resource_name_container").hide();
        // $('#data_operation_container').hide();
        $('#data_exchange_container').hide();
        $('#data_exchange_processor_number_div').show();
        $('#data_operation').html('<option value="class_sync">程序通用同步</option>');
    }

    if (($("#code_data").val().length == 0) && ($("#data_count").val() == '0')
        && ($("#data_catalog_type").val() == 'migration') && ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class')) {
        $('#data_operation').html('<option value="class_migr">程序通用迁移</option>');
        $("#data_operation_migrate_container").hide();
        $('#data_exchange_container').hide();
        $('#data_exchange_processor_number_div').show();
        // if ($("#data_catalog_type").val() == 'synchronization'){
        //     $("#data_operation").val("synchronize");
        // }else if ($("#data_catalog_type").val() == 'migration'){
        //     $("#data_operation").val("migrate");
        // }
    } else if (($("#code_data").val().length == 0) && ($("#data_count").val() == '0')
        && ($("#data_catalog_type").val() == 'synchronization') && ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class')) {
        $('#data_operation').html('<option value="class_sync">程序通用同步</option>');
        $('#data_exchange_processor_number_div').show();
        $("#data_operation_migrate_container").hide();
        $('#data_exchange_container').hide();
    }
    if (($("#data_operation_setting_this").val() == 'synchronize' || $("#data_operation_setting_this").val() == 'migrate' || $("#data_operation_setting_this").val() == 'mysql_sync' || $("#data_operation_setting_this").val() == 'mysql_migrate' || $("#data_operation_setting_this").val() == 'oracle_migr' || $("#data_operation_setting_this").val() == 'oracle_sync' || $("#data_operation_setting_this").val() == 'sql_sync' || $("#data_operation_setting_this").val() == 'sql_migr' || $("#data_operation_setting_this").val() == 'infoinge_sync' || $("#data_operation_setting_this").val() == 'infoinge_migr' || $("#data_operation_setting_this").val() == 'class_sync' || $("#data_operation_setting_this").val() == 'class_migr') && $("#data_catalog_type").val() == 'migration' && ($("#data_type").val() == 'Class' || $("#data_type").val() == 'WS')) {
        $('#data_operation').html('<option value="class_migr">程序通用迁移</option>');
        $('#data_exchange_processor_number_div').show();
        $('#data_exchange_container').hide();
    } else if (($("#data_operation_setting_this").val() == 'synchronize' || $("#data_operation_setting_this").val() == 'migrate' || $("#data_operation_setting_this").val() == 'mysql_sync' || $("#data_operation_setting_this").val() == 'mysql_migrate' || $("#data_operation_setting_this").val() == 'oracle_migr' || $("#data_operation_setting_this").val() == 'oracle_sync' || $("#data_operation_setting_this").val() == 'sql_sync' || $("#data_operation_setting_this").val() == 'sql_migr' || $("#data_operation_setting_this").val() == 'infoinge_sync' || $("#data_operation_setting_this").val() == 'infoinge_migr' || $("#data_operation_setting_this").val() == 'class_sync' || $("#data_operation_setting_this").val() == 'class_migr') && $("#data_catalog_type").val() == 'synchronization' && ($("#data_type").val() == 'Class' || $("#data_type").val() == 'WS')) {
        $('#data_operation').html('<option value="class_sync">程序通用同步</option>');
        $('#data_exchange_processor_number_div').show();
        $('#data_exchange_container').hide();
    }

    if ($('#data_catalog_type').val().length == 0
        && $('#data_is_response_design').val() == '1'
        && $('.' + $('#catalog_code').val()).attr('is_exchange') != 'true') {
        $('#data_operation option:nth-child(5)').show();
        $('#data_operation option:nth-child(6)').show()
    }
    // $("#data_exchange_container").hide();

    $("#data_operation_migrate_container").hide();

    $("#data_operation_container").show();

    $("#data_is_paginate_container").hide();

    $("#data_row_number_container").hide();

    $("#data_uniques_container").hide();

    $("#data_is_for_each_container").hide();

    $("#data_select_expression_container").hide();

    $("#data_resource_name").val("");

    // $("#data_operation").val("search");

    $("#data_select_expression").attr('class', 'validate[maxSize[1024]]');

    onDataOperationChange();

    newModelAddButton();

    dataExchangeFieldMetadata();
}

function onDataTypeHingeCheck(select_id, connection_id_by_resource) {
    $('#' + select_id + '').val($('#' + connection_id_by_resource + '').val());

    onDataConnectionIdChange();

    $("#data_operation_migrate_container").hide();

    $("#data_connection_id_container").show();

    $("#data_resource_buddle_container").show();

    $("#data_classification").hide();

    $("#data_classify_container").hide();

    $("#data_resource_name_container").show();

    $("#data_operation_container").show();

    // $("#data_operation option").show();
    // if ($("#data_count").val() != '0' && $("#data_catalog_type").val() == 'migration' && $("#data_type").val() == 'Hinge') {
    //     $('#data_exchange_container').hide();
    //     $('#data_operation').html('<option value="build">保存</option><option value="search">查询</option>');
    // }
    // if ($("#data_count").val() != '0' && $("#data_catalog_type").val() == 'synchronization' && $("#data_type").val() == 'Hinge') {
    //     $('#data_exchange_container').hide();
    //     $('#data_operation').html('<option value="build">保存</option><option value="search">查询</option>');
    // }
    if ($("#data_count").val() == '1' && $("#code_data").val() != '' && $("#data_type").val() == 'Hinge' && $("#data_catalog_type").val() == 'migration') {
        // $("#data_resource_name_container").hide();
        // $('#data_operation_container').hide();
        $('#data_exchange_container').hide();
        $('#data_operation').html('<option value="infoinge_migr">讯枢通用迁移</option>');
        $('#data_exchange_processor_number_div').show();
    } else if ($("#data_count").val() == '1' && $("#code_data").val() != '' && $("#data_type").val() == 'Hinge' && $("#data_catalog_type").val() == 'synchronization') {
        // $("#data_resource_name_container").hide();
        // $('#data_operation_container').hide();
        $('#data_exchange_container').hide();
        $('#data_exchange_processor_number_div').show();
        $('#data_operation').html('<option value="infoinge_sync">讯枢通用同步</option>');
    }

    // $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option value="upload">上传</option><option value="download">下载</option>');
    if (($("#code_data").val().length == 0) && ($("#data_count").val() == '0')
        && ($("#data_catalog_type").val() == 'migration') && ($("#data_type").val() == 'Hinge')) {
        $('#data_operation').html('<option value="infoinge_migr">讯枢通用迁移</option>');
        $('#data_exchange_processor_number_div').show();
        $('#data_exchange_container').hide();
    } else if (($("#code_data").val().length == 0) && ($("#data_count").val() == '0')
        && ($("#data_catalog_type").val() == 'synchronization') && ($("#data_type").val() == 'Hinge')) {
        $('#data_operation').html('<option value="infoinge_sync">讯枢通用同步</option>');
        $('#data_exchange_processor_number_div').show();
        $('#data_exchange_container').hide();
    }

    if (($("#data_operation_setting_this").val() == 'synchronize' || $("#data_operation_setting_this").val() == 'migrate' || $("#data_operation_setting_this").val() == 'mysql_sync' || $("#data_operation_setting_this").val() == 'mysql_migrate' || $("#data_operation_setting_this").val() == 'oracle_migr' || $("#data_operation_setting_this").val() == 'oracle_sync' || $("#data_operation_setting_this").val() == 'sql_sync' || $("#data_operation_setting_this").val() == 'sql_migr' || $("#data_operation_setting_this").val() == 'infoinge_sync' || $("#data_operation_setting_this").val() == 'infoinge_migr' || $("#data_operation_setting_this").val() == 'class_sync' || $("#data_operation_setting_this").val() == 'class_migr') && $("#data_catalog_type").val() == 'migration' && ($("#data_type").val() == 'Hinge')) {
        $('#data_operation').html('<option value="infoinge_migr">讯枢通用迁移</option>');
        $('#data_exchange_processor_number_div').show();
        $('#data_exchange_container').hide();
    } else if (($("#data_operation_setting_this").val() == 'synchronize' || $("#data_operation_setting_this").val() == 'migrate' || $("#data_operation_setting_this").val() == 'mysql_sync' || $("#data_operation_setting_this").val() == 'mysql_migrate' || $("#data_operation_setting_this").val() == 'oracle_migr' || $("#data_operation_setting_this").val() == 'oracle_sync' || $("#data_operation_setting_this").val() == 'sql_sync' || $("#data_operation_setting_this").val() == 'sql_migr' || $("#data_operation_setting_this").val() == 'infoinge_sync' || $("#data_operation_setting_this").val() == 'infoinge_migr' || $("#data_operation_setting_this").val() == 'class_sync' || $("#data_operation_setting_this").val() == 'class_migr') && $("#data_catalog_type").val() == 'synchronization' && ($("#data_type").val() == 'Hinge')) {
        $('#data_operation').html('<option value="infoinge_sync">讯枢通用同步</option>');
        $('#data_exchange_processor_number_div').show();
        $('#data_exchange_container').hide();
    }
    // $("#data_exchange_container").hide();

    if ($('#data_catalog_type').val().length == 0 && $('#data_is_response_design').val() == '1') {
        $('#data_operation option:nth-child(5)').show();
        $('#data_operation option:nth-child(6)').show()
    }


    $("#data_is_paginate_container").hide();

    $("#data_row_number_container").hide();

    $("#data_uniques_container").hide();

    $("#data_is_for_each_container").hide();

    $("#data_select_expression_container").hide();

    $("#data_resource_name").val("");


    $("#data_select_expression").attr('class', 'validate[maxSize[1024]]');

    newModelAddButton();

    dataExchangeFieldMetadata();

    // onDataOperationChange();
}
function onDataTypeHingeCheckSetting() {
    $("#data_operation_migrate_container").hide();
    $("#data_operation_container").show();
    $("#data_exchange_container").hide();
}


/*********** 目录数据登录开始 ***********/


/*********** 数据引用开始 ***********/
//显示数据引用列表
function onQuoteSetting(elem, data_buddle_id, data_catalog_id, data_code, data_type, data_connection_id, data_resource_name) {
    $(elem).next("tr").children().children("div")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=quote.search.view"
            + "&data_buddle_id=" + data_buddle_id
            + "&data_catalog_id=" + data_catalog_id
            + "&data_code=" + data_code
            + "&data_type=" + data_type
            + "&data_connection_id=" + data_connection_id
            + "&data_resource_name=" + data_resource_name
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入数据引用失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
}

//显示数据引用设置框
function showQuoteSetting(code, buddle_id, catalog_id, data_code, data_type, data_connection_id, data_resource_name) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=quote.setting.view&code="
            + code + "&buddle_id=" + buddle_id
            + "&catalog_id=" + catalog_id
            + "&data_code=" + data_code
            + "&data_type=" + data_type
            + "&data_connection_id=" + data_connection_id
            + "&data_resource_name=" + data_resource_name
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据引用设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
}

//数据引用设置执行
function processQuoteSetting(elem, buddle_id, catalog_id, data_code, data_type, data_connection_id, data_resource_name) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_quote_setting').validationEngine('validate')) {
        if ($(elem).attr("code_quote").length > 0) {
            $.request(httpHeader, '修改数据引用', new Array('buddle.cludove', 'catalog.cludove', 'buddle_id', 'catalog_id', 'data_code',
                'data_type', 'data_connection_id', 'data_resource_name'),
                new Array('diginter', 'quote.setting.process', buddle_id, catalog_id, data_code, data_type, data_connection_id, data_resource_name),
                new Array('code', 'connection_code', 'name', 'expression', 'class', 'text_converter', 'text_handle'),
                new Array('code_quote', 'connection_code_quote', 'quote_name', 'quote_expression',
                    'quote_class', 'quote_text_converter', 'quote_text_handle'), 'text', null, null,
                'quoteSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增数据引用', new Array('buddle.cludove',
                'catalog.cludove', 'buddle_id', 'catalog_id', 'data_code', 'data_type', 'data_connection_id', 'data_resource_name'),
                new Array('diginter', 'quote.setting.process', buddle_id, catalog_id, data_code, data_type, data_connection_id, data_resource_name),
                new Array('name', 'expression', 'class', 'text_converter', 'text_handle'),
                new Array('quote_name', 'quote_expression', 'quote_class', 'quote_text_converter', 'quote_text_handle'),
                'text', null, null, 'quoteSettingSuccessCallback',
                'normalErrorCallback');
        }
        $("#resource_setting_right").hide();
    }
}

$.extend({
    quoteSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        var obj = eval('(' + responseText + ')');
        onQuoteSetting($("." + obj.data_code), obj.data_buddle_id, obj.data_catalog_id, obj.data_code, obj.data_type, obj.data_connection_id, obj.data_resource_name);
    }
});
/*********** 数据引用结束 ***********/


/*设置 重载资源定义按钮*/

function onOverloadResource() {
    if ($("#data_type").val() == 'Class') {
        onResourceConnectionDataSelect("class_connection_id", $("#data_type").val(), $("#class_connection_id_by_class").val(), "请选择资源定义", $("#class_connection_id").val());
        onDataConnectionIdChange();
    } else if ($("#data_type").val() == 'Metadata') {
        onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", $("#connection_id_by_metadata").val(), "");
        onDataConnectionIdChange();
    } else if ($("#data_type").val() == 'Hinge') {
        onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", $("#connection_id_by_hinge").val(), "");
        onDataConnectionIdChange();
    } else if ($("#data_type").val() == 'WS') {
        onResourceConnectionDataSelect("class_connection_id", $("#data_type").val(), $("#class_connection_id_by_class").val(), "请选择资源定义", $("#class_connection_id").val());
        onDataConnectionIdChange();
    } else {
        onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", $("#class_connection_id_by_class").val(), "");
        onDataConnectionIdChange();
    }
}


function onDataTypeDbCheck(select_id, connection_id_by_resource) {
    $('#' + select_id + '').val($('#' + connection_id_by_resource + '').val());

    onDataConnectionIdChange();
    // $("#operation_by_db").val()
    if (($("#data_operation_setting_this").val() == 'synchronize' || $("#data_operation_setting_this").val() == 'migrate' || $("#data_operation_setting_this").val() == 'mysql_sync' || $("#data_operation_setting_this").val() == 'mysql_migrate' || $("#data_operation_setting_this").val() == 'oracle_migr' || $("#data_operation_setting_this").val() == 'oracle_sync' || $("#data_operation_setting_this").val() == 'sql_sync' || $("#data_operation_setting_this").val() == 'sql_migr' || $("#data_operation_setting_this").val() == 'infoinge_sync' || $("#data_operation_setting_this").val() == 'infoinge_migr' || $("#data_operation_setting_this").val() == 'class_sync' || $("#data_operation_setting_this").val() == 'class_migr') && ($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization')) {
        $("#data_operation_migrate_container").show();
        $("#data_operation_container").hide();
    } else {
        if ($("#data_count").val() == '0' && $("#data_operation_setting_this").val() == '' && ($('#data_catalog_type').val() == 'synchronization' || $('#data_catalog_type').val() == 'migration')) {
            $("#data_operation_migrate_container").show();
            $("#data_operation_container").hide();
        } else {
            $("#data_operation_container").show();
            $("#data_operation_migrate_container").hide()
        }
        ;
        if ($("#data_count").val() != '0' && $("#data_type").val() == 'DB' && ($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization')) {
            $("#data_resource_name_container").hide();
            // $('#data_operation_container').hide();
            $('#data_exchange_container').hide();
            $('#data_operation').html('<option value="build">保存</option><option value="search">查询</option>');
        } else {
            $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option style="display:none" value="upload">上传</option><option style="display:none" value="download">下载</option>');
        }
        if ($("#data_count_all").val() == '0' && $('#data_catalog_type').val() != 'synchronization' && $('#data_catalog_type').val() != 'migration' && $('#is_exchange').val()=='true'){
            $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option>');
        }
    }

    if ($("#data_is_for_each").val() == 'true')
        $("#data_select_expression").attr('class', 'validate[required,maxSize[1024]]');
    else
        $("#data_select_expression").attr('class', 'validate[maxSize[1024]]');

    $("#data_classify_container").hide();
    $("#data_connection_id_container").show();

    $("#data_resource_buddle_container").hide();

    $("#data_classification").hide();

    $("#data_resource_buddle").html("<option value=\"\">请选择应用标识</option>");

    $("#data_resource_name_container").show();

    $("#data_is_paginate_container").show();

    $("#data_row_number_container").show();

    $("#data_is_for_each_container").show();

    $("#data_select_expression_container").show();

    $("#data_uniques_container").show();

    $('#data_exchange_processor_number_div').hide();

    if ($("#operation_by_db").val() != "")
        $("#data_operation").val($("#operation_by_db").val());

    $("#hinge_content_block").hide();
}

function onDataTypeMetadataCheck(select_id, connection_id_by_resource) {
    $('#' + select_id + '').val($('#' + connection_id_by_resource + '').val());

    onDataConnectionIdChange();

    $("#data_connection_id_container").show();

    $("#data_resource_buddle_container").hide();

    $("#data_operation_migrate_container").hide();

    $("#data_classification").hide();
    $("#data_classify_container").hide();

    $("#data_resource_buddle").html("<option value=\"\">请选择应用标识</option>");


    $("#data_resource_name_container").show();

    $("#data_operation_container").show();

    $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option style="display:none" value="upload">上传</option><option style="display:none" value="download">下载</option>');

    $("#data_is_paginate_container").hide();

    $("#data_row_number_container").hide();

    $("#data_uniques_container").hide();

    $("#data_is_for_each_container").hide();

    $("#data_select_expression_container").hide();

    $("#data_operation").val("search");

    $("#data_select_expression").attr('class', 'validate[maxSize[1024]]');
}

function onDataConnectionIdChange() {
    if ($('#data_type').val() == 'DB') {
        $('#data_exchange_container').hide();
        if ($('#data_connection_id').val() != '')
            $('#connection_id_by_db').val($('#data_connection_id').val());
        onResourceStructureSelect($('#data_connection_id').val(),
            'data_resource_name', 'DB', '请选择数据库表',
            'changeDataResourceNameBy()', '');
    } else if ($('#data_type').val() == 'Hinge') {
        if ($('#data_connection_id').val() != ''){
            $('#connection_id_by_hinge').val($('#data_connection_id').val());
            if($("input[name='data_type_select']:checked").attr("id") === 'data_type_hinge'){
                if ($('#data_connection_id').val() !='infoinge.cludove'){
                    onDataLogon($("#data_connection_id").val());   //资源节点账号登录
                }else {
                    $("#hinge_content").hide();
                    $("#hinge_content_block").hide();
                    $("#data_resource_buddle").show();
                    onDataConnectionIdHingeChange();
                }
            }

        }
    } else if ($('#data_type').val() == 'WS') {
        if ($('#data_connection_id').val() != '')
            $('#connection_id_by_ws').val($('#data_connection_id').val());

        onProcessorSelect("data_connection_id", "WS", "请选择外部数据类",
            "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");
    } else if ($('#data_type').val() == 'Class') {
        if ($('#data_connection_id').val() != '')
            $('#connection_id_by_class').val($('#data_connection_id').val());

        onProcessorSelect("data_connection_id", "Hinge.Data", "请选择功能数据类",
            "onDataTypeCheck('data_connection_id', 'connection_id_by_class')");
    } else if ($('#data_type').val() == 'Metadata') {
        if ($('#data_connection_id').val() != '')
            $('#connection_id_by_metadata').val($('#data_connection_id').val());

        onResourceStructureSelect($('#data_connection_id').val(),
            'data_resource_name', 'DB', '请选择数据库表',
            'changeDataResourceNameBy()', '');
    } else
        ;
}
function onDataConnectionIdHingeChange() {
    onResourceStructureSelect($('#data_connection_id').val(),
        'data_resource_buddle', 'Hinge', '请选择应用标识',
        'changeDataResourceBuddleBy()', '');
    onDataTypeHingeCheckSetting();
}

function onDataResourceBuddleChange() {
    if ($('#data_type').val() == 'Hinge') {
        if ($('#data_resource_buddle').val() != '') {
            $('#resource_buddle_by_hinge').val($('#data_resource_buddle').val());

            onBuddleStructureSelect($('#data_connection_id').val(),
                'data_resource_name', 'Hinge', '请选择功能目录',
                'changeDataResourceNameBy()', $('#data_resource_buddle').val());
        } else {
            $("#data_resource_name").html('<option value="">请选择功能目录</option>')
        }
    } else
        ;
}

function onBuddleStructureSelect(connection_id, select_id, type,
                                 select_blank, on_resource_structure_select, buddle_id) {

    if (connection_id !='infoinge.cludove'){
        $("#" + select_id + "")
            .load(
                httpHeader
                + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                + '&remoteAccount.cludove=' + $("#data_logon #api_account").val()
                + '&remotePassword.cludove=' + hex_md5($('#data_logon #api_password').val())
                + '&type=' + type + '&connection_id='
                + connection_id + '&buddle_id=' + buddle_id
                + '&isDesign.cludove=1'
                + '&catalog_id=' + $('#catalog_id').val()
                + "&selected_value="
                + $("#" + select_id + "").val() + "&select_blank="
                + $.convertToUnicode(select_blank) + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == 'error') {
                        hintError("在指定位置载入应用结构失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        // console.log(data)
                    }
                    ;

                    if (on_resource_structure_select != "")
                        eval("" + on_resource_structure_select + "");
                });
    }else {
        $("#" + select_id + "")
            .load(
                httpHeader
                + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                + '&type=' + type + '&connection_id='
                + connection_id + '&buddle_id=' + buddle_id
                + '&isDesign.cludove=1'
                + '&catalog_id=' + $('#catalog_id').val()
                + "&selected_value="
                + $("#" + select_id + "").val() + "&select_blank="
                + $.convertToUnicode(select_blank) + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == 'error') {
                        hintError("在指定位置载入应用结构失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        // console.log(data)
                    }
                    ;

                    if (on_resource_structure_select != "")
                        eval("" + on_resource_structure_select + "");
                });
    }

}


function changeDataResourceNameBy() {
    var str = new Array();
    $("#data_resource_name option").map(function () {
        if ($(this).val() != '') str.push($(this).val());
    })
    if ($('#data_type').val() == 'DB') {
        for (var i = 0; i <= str.length - 1; i++) {
            if (str[i] == $('#resource_name_by_db').val()) {
                $('#data_resource_name').val($('#resource_name_by_db').val());
                break;
            }
        }
        onDataOperationChange();
    } else if ($('#data_type').val() == 'Metadata') {
        for (var i = 0; i <= str.length - 1; i++) {
            if (str[i] == $('#resource_name_by_metadata').val()) {
                $('#data_resource_name').val($('#resource_name_by_metadata').val());
                break;
            }
        }
    } else if ($('#data_type').val() == 'Hinge') {
        for (var i = 0; i <= str.length - 1; i++) {
            if (str[i] == $('#resource_name_by_hinge').val()) {
                $('#data_resource_name').val($('#resource_name_by_hinge').val());
                break;
            }
        }
        onDataOperationChange();
    } else if ($('#data_type').val() == 'WS') {
        for (var i = 0; i <= str.length - 1; i++) {
            if (str[i] == $('#resource_name_by_ws').val()) {
                $('#data_resource_name').val($('#resource_name_by_ws').val());
                break;
            }
        }
    } else if ($('#data_type').val() == 'Class') {
        for (var i = 0; i <= str.length - 1; i++) {
            if (str[i] == $('#resource_name_by_class').val()) {
                $('#data_resource_name').val($('#resource_name_by_class').val());
                break;
            }
        }
    }
    else
        ;

    // onDataOperationChange();
}

function changeDataResourceBuddleBy() {
    if ($('#data_type').val() == 'Hinge') {
        $('#data_resource_buddle').val($('#resource_buddle_by_hinge').val());

        onDataResourceBuddleChange();
    }
}

function onDataResourceNameChange() {
        if ($('#data_resource_buddle').val()!='' && $('#data_resource_name').val()!='' && $('#data_operation').val() !='' && ($('#data_catalog_type').val() == 'migration' || $('#data_catalog_type').val() == 'synchronization')) {
             onDataMetadataSearch();
        }
    // if ($('#data_type').val() == 'DB') {
        if ($('#data_operation').val() == 'search' && $('#data_operation_container').css('display') == 'block' && ($('#data_catalog_type').val() == 'migration' || $('#data_catalog_type').val() == 'synchronization')) {
            onDataResourceRelevanceshow();
        } else {
            $('#resource_name_by_db').val($('#data_resource_name').val());
            onDataOperationChange();
        }
    // }
    if ($('#data_type').val() == 'Metadata')
        $('#resource_name_by_metadata').val($('#data_resource_name').val());
    else if ($('#data_type').val() == 'Hinge'){
        $('#resource_name_by_hinge').val($('#data_resource_name').val());
        dataExchangeFieldMetadata();
    }
    else if ($('#data_type').val() == 'WS') {
        $('#resource_name_by_ws').val($('#data_resource_name').val());
        onDataOperationChange();
    }
    else if ($('#data_type').val() == 'Class')
        $('#resource_name_by_class').val($('#data_resource_name').val());
    else
        ;
}
function onDataMetadataSearch() {
    var template_metadata = $('#template_field').val()!='' ? $('#template_field').val() : httpsHeader;
    $(this)
        .load(
            template_metadata
            + "s?buddle.cludove=diginter&catalog.cludove=data.metadata.complete.view&data_operation="
            + $('#data_operation').val()
            + "&resource_name="
            + $("#data_resource_name").val()
            +"&buddle_id="
            + $("#data_resource_buddle").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据交换设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (data == 'false'){
                        if ($('#data_operation').val() != 'build'){
                            $('#metadata_complete').val('no_build');
                        }else {
                            $('#metadata_complete').val('build');
                        }
                    }else {
                        $('#metadata_complete').val('adopt');
                    }
                }
                ;
                // hintMessage("显示数据交换设置界面成功。", false);
            });
}
function dataExchangeFieldMetadata() {
    if ($("#data_resource_name").val() != '' && ($("#data_operation").val() == 'infoinge_sync' || $("#data_operation").val() == 'infoinge_migr')){
        $(this)
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=data.exchange.field.metadata.view&data_code="
                + $("#code_data").val() + "&type="
                + $("#data_type").val() + "&connection_id="
                + $("#data_connection_id").val()
                + "&resource_name="
                + $("#data_resource_name").val()
                +"&buddle_id="
                + $("#data_resource_buddle").val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示数据交换设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if ($("#data_catalog_type").val() == 'migration'){
                            $("#metadata_filed_migr").val(data);
                            $("#metadata_filed_sync").val('');
                        }else if($("#data_catalog_type").val() == 'synchronization'){
                            $("#metadata_filed_sync").val(data);
                            $("#metadata_filed_migr").val('');
                        }
                    }
                    ;
                    // hintMessage("显示数据交换设置界面成功。", false);
                });
    }else if ($("#data_connection_id").val() != '' && ($("#data_operation").val() == 'class_sync' || $("#data_operation").val() == 'class_migr')){
        $(this)
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=data.exchange.field.metadata.view&data_code="
                + $("#code_data").val() + "&type="
                + $("#data_type").val() + "&connection_id="
                + $("#class_connection_id").val()
                + "&resource_name="
                + $("#data_connection_id").val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                       //  console.log(data);
                        hintError("显示数据交换设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if ($("#data_catalog_type").val() == 'migration'){
                            $("#metadata_filed_migr").val(data);
                            $("#metadata_filed_sync").val('');
                        }else if($("#data_catalog_type").val() == 'synchronization'){
                            $("#metadata_filed_sync").val(data);
                            $("#metadata_filed_migr").val('');
                        }
                    }
                    ;
                    // hintMessage("显示数据交换设置界面成功。", false);
                });
    }

}

function onDataOperationChangeForExch(operation) {
    if (operation == "migration") {
        $('#operation_by_db').val($('#data_operation_migr').val());
    } else if (operation == "synchronization") {
        $('#operation_by_db').val($('#data_operation_migr').val());
        dataOperationSyncChange();
    }
}

// 当操作名字改变时执行
function onDataOperationChange() {
    if ($('#data_operation_migrate_container').css('display') == 'block')
        $('#operation_by_db').val($('#data_operation_migr').val());
    else
        $('#operation_by_db').val($('#data_operation').val());

    if ($('#data_operation').val() == 'search' && ($('#data_operation_migrate_container').css('display') == 'none') && ($('#data_catalog_type').val() == 'migration' || $('#data_catalog_type').val() == 'synchronization')){
        onDataResourceRelevanceshow();
    }
    else {
        $("#data_s_association_field").hide();
        $("#data_r_association_field").hide();
    }
    if ($('#data_resource_buddle').val()!='' && $('#data_resource_name').val()!='' && $('#data_operation').val() !='' && ($('#data_catalog_type').val() == 'migration' || $('#data_catalog_type').val() == 'synchronization')) {
        onDataMetadataSearch();
    }

    if ($("#data_operation_migrate_container").css('display') == 'none') {
        if (($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization') && $("#data_operation").val() == 'build') {
            $('#data_position').val('100');
            $('#data_position_validate').attr('class', 'validate[required,custom[zpositives],max[100]]');
            $("#data_position").attr('disabled', 'disabled');
            $('#data_position').spinner({
                max: 100,
                min: 100,
                step: 1
            });
        } else if ($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization') {
            $('#data_position_validate').attr('class', 'validate[required,custom[zpositives],max[100]]');
            $("#data_position").removeAttr('disabled', 'disabled');
            if ($('#data_position').val() == '0') {
                $('#data_position').val('0');
                $('#data_position').spinner({
                    max: 99,
                    min: 0,
                    step: 1
                });
            } else {
                if ($('#code_data').val() == '') {
                    $('#data_position').val($('#data_position_setting').val());
                }else {
                    if (($('#data_operation').val() != $('#remove_operation').val()) && $('#data_operation').val() != 'build'){
                        $('#data_position').val($('#data_position_setting').val());
                    }else {
                        $('#data_position').val($('#data_position_setting_this').val());
                    }
                }
                $('#data_position_validate').attr('class', 'validate[required,custom[PositiveInteger],max[100]]');
                $('#data_position').spinner({
                    max: 99,
                    min: 1,
                    step: 1
                });
            }
        }
    }
    if ($('#data_operation_migrate_container').css('display') == 'block' || ($('#data_operation_container').css('display') == 'block' && ($('#data_operation').val() == 'infoinge_sync' || $('#data_operation').val() == 'infoinge_migr'))) {
        if ($('#data_resource_name').val() != '') {
            var operation = $("#data_operation_migr").val();
            if ($('#data_operation_migrate_container').css('display') == 'none')
                operation = $("#data_operation").val();
            var data_direct = 'output';
            if (operation == 'build')
                data_direct = 'input';
            $("#data_exchange_container")
                .load(
                    httpsHeader
                    + "s?buddle.cludove=diginter&catalog.cludove=data.exchange.field.extract.view&data_code="
                    + $("#code_data").val() + "&type="
                    + $("#data_type").val() + "&connection_id="
                    + $("#data_connection_id").val()
                    + "&resource_buddle="
                    + $("#data_resource_buddle").val()
                    + "&resource_name="
                    + new Base64().encode($("#data_resource_name").val()) + ":decode"
                    + "&operation=" + operation
                    + "&data_direct=" + data_direct
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("显示数据交换设置界面失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else {
                            if ($("#data_exchange_sync_time_field").val() != '') {
                                $("#data_exchange_flag_field").removeClass("validate[required]");
                                $("#data_exchange_flag_change_container").hide();
                                $("#data_exchange_flag_reset_container").hide();
                            }
                            if ($('#data_exchange_flag_field').val() != '') {
                                $("#data_exchange_sync_time_field").removeClass("validate[required]");
                                $('#data_exchange_flag_change_container').css('display', 'block');
                                $('#data_exchange_flag_reset_container').css('display', 'block');
                            } else {
                                $('#data_exchange_flag_change_container').css('display', 'none');
                                $('#data_exchange_flag_reset_container').css('display', 'none');
                            }
                            if ($('#data_operation_migr').val() != 'synchronize') {
                                $('#data_exchange_sync_time_container').css('display', 'none');
                                $('#data_exchange_flag_field_container').css('display', 'none');
                                $('#data_exchange_flag_change_container').css('display', 'none');
                                $('#data_exchange_flag_reset_container').css('display', 'none');
                            }
                        }
                        ;
                        // hintMessage("显示数据交换设置界面成功。", false);

                        $("#data_exchange_container").show();

                        $('#data_exchange_processor_number').spinner({
                            max: 1000,
                            min: 1,
                            step: 1
                        });
                    });
        } else {
            $('#data_exchange_migr_field').html('<option value="">请选择迁移字段</option>');
            $('#data_exchange_sync_field').html('<option value="">请选择同步字段</option>');
            $('#data_exchange_sync_time_field').html('<option value="">请选择同步时间字段</option>');
            $('#data_exchange_flag_field').html('<option value="">请选择标志字段</option>')
        }
    } else
        $("#data_exchange_container").hide();

    if ($('#operation_by_db').val() == 'build' && $('#data_type').val() == 'DB') {
        showValueFieldSelect($('#data_connection_id').val(),$('#data_resource_name').val(),$('#data_resource_buddle').val())
        if ($('#data_connection_id').val() != $('#remove_connection_id_by_db').val()
            || $('#data_resource_name').val() != $('#remove_resource_name_by_db').val())
            $('#tags').html('');
    } else {
        $('#repeat_field_container').hide();
    }
}
function newModelAddButton() {
    if ($("#data_operation_migrate_container").css('display') == 'none') {
        if (($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization') && $("#data_operation").val() == 'build') {
            $('#data_position').val('100');
            $("#data_position").attr('disabled', 'disabled');
            $('#data_position').spinner({
                max: 100,
                min: 100,
                step: 1
            });
        } else if ($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization') {
            $("#data_position").removeAttr('disabled', 'disabled');
            $('#data_position_validate').attr('class', 'validate[required,custom[zpositives],max[100]]');
            if ($('#data_position').val() == '0') {
                $('#data_position').val('0');
                $('#data_position').spinner({
                    max: 99,
                    min: 0,
                    step: 1
                });
            } else {
                if ($('#code_data').val() == '') {
                    $('#data_position').val($('#data_position_setting').val());
                }
                $('#data_position').spinner({
                    max: 99,
                    min: 0,
                    step: 1
                });
            }
            if ($('#data_position').val() == '0') {
                $("#data_position").attr('disabled', 'disabled');
                $('#data_position').spinner({
                    max: 0,
                    min: 0,
                    step: 1
                });
            }
        }
    } else {
        if ($('#data_position').val() == '0') {
            $('#data_position_validate').attr('class', 'validate[required,custom[zpositives],max[100]]');
            $("#data_position").attr('disabled', 'disabled');
            $('#data_position').spinner({
                max: 0,
                min: 0,
                step: 1
            });
        }
    }
}
// 迁移和同步时操作名字为查询时
function onDataResourceRelevanceshow() {
    if ($('#data_resource_name').val() != '') {
        // 为查询时本表字段
        var template_field = $('#template_field').val()!='' ? $('#template_field').val() : httpsHeader;
        $("#data_s_association_field")
            .load(
                template_field
                + "s?buddle.cludove=diginter&catalog.cludove=data.resource.relevance.field.view&data_code="
                + $("#code_data").val() + "&type="
                + $("#data_type").val() + "&connection_id="
                + $("#data_connection_id").val()
                + "&resource_name="
                + new Base64().encode($("#data_resource_name").val()) + ":decode"
                + "&r_resource_name="
                + $("#data_r_resource_name").val()
                + "&buddle_id="
                + $("#buddle_id").val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("显示库表关联失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        $("#data_s_association_field").show();
                    ;
                    // hintMessage("显示数据交换设置界面成功。", false);
                });
        // 选择关联的字段
        if ($("#data_r_identifier").val() !='infoinge.cludove' && $("#data_r_type").val() == 'Hinge'){
            $("#data_logon_relation")
                .load(
                    httpsHeader
                    + "s?buddle.cludove=diginter&catalog.cludove=api.login.view&data_code="
                    + "&resource_identifier=" + $("#data_r_identifier").val()
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            hintError("登录其他节点时失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else{
                            $("#data_r_association_field")
                                .load(
                                    $("#data_logon_relation #template").val()
                                    + "s?buddle.cludove=diginter&catalog.cludove=data.resource.relevance.view&data_code="
                                    + $("#data_r_type").val() + "&connection_id="
                                    + $("#data_r_identifier").val()
                                    + "&resource_name="
                                    + $("#data_r_resource_name").val()
                                    + "&s_resource_name="
                                    + $("#data_resource_name").val()
                                    + "&data_r_type="
                                    + $("#data_r_type").val()
                                    + "&buddle_id="
                                    + $("#buddle_id").val()
                                    + "&t=" + new Date().getTime(),
                                    function (data, textStatus, jqXHR) {
                                        if (textStatus == "error") {
                                            console.log(data);
                                            hintError("显示库表关联失败！", false, "javascript:void(0)");
                                            hintException(data, false, "javascript:void(0)");
                                        } else {
                                            $("#data_r_association_field").show();
                                            $("#data_r_identifier_view").val($('#data_r_identifier').val());
                                            $('#r_resource_name_view').val($('#data_r_resource_name').val());
                                        }
                                        ;
                                        // hintMessage("显示数据交换设置界面成功。", false);
                                    });
                        }
                        ;
                        // hintMessage("显示数据交换设置界面成功。", false);
                    });
        }else {
            $("#data_r_association_field")
                .load(
                    httpsHeader
                    + "s?buddle.cludove=diginter&catalog.cludove=data.resource.relevance.view&data_code="
                    + $("#data_r_type").val() + "&connection_id="
                    + $("#data_r_identifier").val()
                    + "&resource_name="
                    + $("#data_r_resource_name").val()
                    + "&s_resource_name="
                    + $("#data_resource_name").val()
                    + "&data_r_type="
                    + $("#data_r_type").val()
                    + "&buddle_id="
                    + $("#buddle_id").val()
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            console.log(data);
                            hintError("显示库表关联失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else {
                            $("#data_r_association_field").show();
                            $("#data_r_identifier_view").val($('#data_r_identifier').val());
                            $('#r_resource_name_view').val($('#data_r_resource_name').val());
                        }
                        ;
                        // hintMessage("显示数据交换设置界面成功。", false);
                    });
        }
    } else if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
        // 为查询时本表字段
        $("#data_s_association_field")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=data.resource.relevance.field.view&data_code="
                + $("#code_data").val()
                + "&connection_id="
                + $("#data_r_identifier").val()
                + "&type="
                + $("#data_type").val()
                + "&resource_name="
                + $("#data_connection_id").val()
                + "&r_resource_name="
                + $("#data_r_resource_name").val()
                + "&buddle_id="
                + $("#buddle_id").val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("显示库表关联失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        $("#data_s_association_field").show();
                    ;
                    // hintMessage("显示数据交换设置界面成功。", false);
                });
        // 选择关联的字段
        $("#data_r_association_field")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=data.resource.relevance.view&data_code="
                + $("#data_r_type").val() + "&connection_id="
                + $("#data_r_identifier").val()
                + "&resource_name="
                + $("#data_r_resource_name").val()
                + "&s_resource_name="
                + $("#data_connection_id").val()
                + "&data_r_type="
                + $("#data_r_type").val()
                + "&buddle_id="
                + $("#buddle_id").val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        console.log(data);
                        hintError("显示库表关联失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        $("#data_r_association_field").show();
                        $("#data_r_identifier_view").val($('#data_r_identifier').val());
                        $('#r_resource_name_view').val($('#data_r_resource_name').val());
                    }
                    ;
                    // hintMessage("显示数据交换设置界面成功。", false);
                });
    }
}

// 在指定位置载入资源结构
function onResourceStructureSelect(connection_id, select_id, type,
                                   select_blank, on_resource_structure_select, resource_name) {
    if (connection_id == null) {
        $("#" + select_id + "")
            .load(
                httpHeader
                + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                + '&type=' + type + '&resource_name='
                + $.convertToUnicode(resource_name)
                + "&selected_value="
                + $("#" + select_id + "").val() + "&select_blank="
                + $.convertToUnicode(select_blank) + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == 'error') {
                        // console.log(data);
                        hintError("在指定位置载入资源结构失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        ;

                    if (on_resource_structure_select != "")
                        eval("" + on_resource_structure_select + "");
                });
    } else {
        if (type =='Hinge'){
            if ($('#data_connection_id').val() !='infoinge.cludove'){
                // $('#template_field').val('');
                $("#hinge_content").hide();
                $("#hinge_content_block").hide();
                $("#data_resource_buddle").show();
                $("#" + select_id + "")
                    .load(
                        httpHeader
                        + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                        + '&remoteAccount.cludove=' + $("#data_logon #api_account").val()
                        + '&remotePassword.cludove=' + hex_md5($('#data_logon #api_password').val())
                        + '&type=' + type + '&connection_id='
                        + connection_id + '&resource_name='
                        + $.convertToUnicode(resource_name)
                        + "&selected_value="
                        + $("#" + select_id + "").val() + "&select_blank="
                        + $.convertToUnicode(select_blank) + "&t="
                        + new Date().getTime(),
                        function (data, textStatus, jqXHR) {
                            if (textStatus == 'error') {
                                console.log(data);
                                hintError("在指定位置载入资源结构失败！", false, "javascript:void(0)");
                                hintException(data, false, "javascript:void(0)");
                            } else
                                ;

                            if (on_resource_structure_select != "")
                                eval("" + on_resource_structure_select + "");
                        });
            }else {
                $('#template_field').val('');
                $("#hinge_content").hide();
                $("#hinge_content_block").hide();
                $("#data_resource_buddle").show();
                $("#" + select_id + "")
                    .load(
                        httpHeader
                        + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                        + '&type=' + type + '&connection_id='
                        + connection_id + '&resource_name='
                        + $.convertToUnicode(resource_name)
                        + "&selected_value="
                        + $("#" + select_id + "").val() + "&select_blank="
                        + $.convertToUnicode(select_blank) + "&t="
                        + new Date().getTime(),
                        function (data, textStatus, jqXHR) {
                            if (textStatus == 'error') {
                                console.log(data);
                                hintError("在指定位置载入资源结构失败！", false, "javascript:void(0)");
                                hintException(data, false, "javascript:void(0)");
                            } else
                                ;

                            if (on_resource_structure_select != "")
                                eval("" + on_resource_structure_select + "");
                        });
            }

        }else {
            $("#" + select_id + "")
                .load(
                    httpHeader
                    + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                    + '&type=' + type + '&connection_id='
                    + connection_id + '&resource_name='
                    + $.convertToUnicode(resource_name)
                    + "&selected_value="
                    + $("#" + select_id + "").val() + "&select_blank="
                    + $.convertToUnicode(select_blank) + "&t="
                    + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == 'error') {
                            console.log(data);
                            hintError("在指定位置载入资源结构失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else{
                            if (type == 'DB' && $('#data_connection_id').val()!=''){
                                if ($(this).children("option").length == 1) {
                                    $("#alert_content").show().text("该数据库无法连接，请检查连接状态!");
                                } else {
                                    $("#alert_content").hide();
                                }
                            }
                        };

                        if (on_resource_structure_select != "")
                            eval("" + on_resource_structure_select + "");
                    });
        }
    }
}
/*********** 目录数据登录开始 ***********/
//若数据类型为讯枢，则根据相应的资源节点进行登录
function onDataLogon(resource_identifier) {
    $("#data_logon")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=api.login.view"
            + "&resource_identifier=" + resource_identifier
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据引用设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if ($("#data_logon #is_local").val() != 'true') {
                        if ($('#data_logon #api_account').val() == '') {
                            $("#permission").val("false");
                            $("#hinge_content_block").text("由于没有帐号密码，所以只能显示不用权限的符合要求的服务功能！").show();
                            $.request($("#data_logon #template").val(), '正在注销', new Array('buddle.cludove',
                                'catalog.cludove'), new Array('infoinge', 'logout.remove.process'),
                                new Array(), new Array(), 'text', 'hint_error', null,
                                'businessSuccessCallback', 'businessErrorCallback');
                        } else {
                            $.request($("#data_logon #template").val(), '正在登陆', new Array('buddle.cludove', 'catalog.cludove','account.cludove', 'password.cludove'),
                                new Array('infoinge', 'logon.build.process',$("#data_logon #api_account").val(), hex_md5($('#data_logon #api_password').val())),
                                new Array(), new Array(), 'text', 'hint_error', null,
                                'businessSuccessCallback', 'businessErrorCallback');
                        }
                    }else {
                        $("#hinge_content").hide();
                        $("#hinge_content_block").hide();
                        $("#data_resource_buddle").show();
                    }
                }
            });
}
$.extend({
    businessSuccessCallback: function (responseText) {
        //$("#permission").val("true");
        $("#hinge_content_block").hide();
        $("#data_resource_buddle").show();
        $('#template_field').val($("#data_logon #template").val());
        dataPermissionSearch($("#data_logon #template").val(),$('#data_logon #api_account').val());
    },
    businessErrorCallback: function (responseText) {
        // hintException(responseText, false, '');
        // $("#hinge_content_block").text("添加目录数据失败，由于账号或密码错误，无法访问该节点！").show();
        // $("#data_resource_name").html('<option value="">查询失败！</option>');
        // $('#data_resource_buddle').html('<option value="">查询失败！</option>').hide();
        $("#hinge_content_block").hide();
        $("#data_resource_buddle").show();
        $('#template_field').val($("#data_logon #template").val());
        $("#hinge_content_block").text("由于账号或密码错误，所以只能显示不用权限的符合要求的服务功能！").show();
        dataPermissionSearch($("#data_logon #template").val(),$('#data_logon #api_account').val());
    }
});
//  添加目录数据时查询权限
function dataPermissionSearch(template_permission,account_permission) {
    $(this)
        .load(
            template_permission
            + 's?buddle.cludove=diginter&catalog.cludove=data.permission.search.view'
            + "&account.cludove=" + account_permission
            + '&remoteAccount.cludove=' + $("#data_logon #api_account").val()
            + '&remotePassword.cludove=' + hex_md5($('#data_logon #api_password').val())
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == 'error') {
                    // console.log(data);
                    $("#hinge_content_block").text("该帐号权限查询失败！").show();
                    $("#data_resource_name").html('<option value="">查询失败！</option>');
                    $('#data_resource_buddle').html('<option value="">查询失败！</option>').hide();
                    hintError("在指定位置载入资源结构失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if (data == 'false'){
                        $("#hinge_content_block").text("由于该帐号无权限，所以只能显示不用权限的符合要求的服务功能！").show();
                        onDataConnectionIdHingeChange()
                    }else {
                        $("#hinge_content_block").hide();
                        $("#data_resource_buddle").show();
                        onDataConnectionIdHingeChange()
                    }
                };
            });
}


function onResourceConnectionDataSelect(select_id, type, connection_id, select_blank, select_content) {
    $("#" + select_id + "")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.data.select.view"
            + "&type=" + type + "&selected_code="
            + $("#" + select_id + "").val() + "&connection_id="
            + connection_id + "&select_blank="
            + $.convertToUnicode(select_blank) + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == 'error') {
                    console.log(data);
                    hintError("载入资源连接列表失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入资源连接列表成功。", false);

            });
}

// 在指定位置载入驱动处理
function onProcessorSelect(select_id, type, select_blank, on_processor_select) {
    $("#alert_content").hide();
    $("#hinge_content").hide();
    if ($("#data_type").val() == 'Class' || $("#data_type").val() == 'WS') {
        if ($("#data_type").val() == 'WS') {
            select_blank = "请选择外部数据类";
            type = 'WS';
        }
        $("#" + select_id + "")
            .load(
                httpHeader
                + "s?buddle.cludove=diginter&catalog.cludove=model.data.setting.processor.select.view&type="
                + type + "&selected_value="
                + $("#remove_resource_name").val()
                + "&classify=" + $("#data_classify").val()
                + "&data_catalog_type=" + $("#data_catalog_type").val()
                + "&select_blank="
                + $.convertToUnicode(select_blank) + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("载入驱动处理列表失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        $("#" + select_id + "").click(function () {
                            if ($(this).children("option").length == 1) {
                                $("#alert_content").show().text("提供数据映射的功能目录需要为其定义数据元数据 !");
                            } else {
                                $("#alert_content").hide();
                            }
                        });
                    }
                    if (on_processor_select != "")
                        eval("" + on_processor_select + "");
                });
    } else {
        $("#" + select_id + "")
            .load(
                httpHeader
                + "s?buddle.cludove=diginter&catalog.cludove=model.data.setting.processor.select.view&type="
                + type + "&selected_value="
                + $("#" + select_id + "").val() + "&select_blank="
                + $.convertToUnicode(select_blank) + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("载入驱动处理列表失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else;
                    if (on_processor_select != "")
                        eval("" + on_processor_select + "");
                });
    }
}

// 在指定位置载入资源定义 原来=resource.decomposing.select.view
function onResourceDecomposingSelect(select_id, type, select_blank,
                                     select_column, on_resource_decomposing_select) {
    if (type == 'Hinge') {
        $("#" + select_id + "")
            .load(
                httpHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.data.select.view&type="
                + type + "&selected_value="
                + $("#" + select_id + "").val() + "&select_blank="
                + $.convertToUnicode(select_blank)
                + "&select_column=" + select_column
                + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("载入资源定义列表失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if($("input[name='data_type_select']:checked").attr("id") === 'data_type_hinge'){
                            if ($("#data_connection_id").val() !='' && $('#data_connection_id').val() !='infoinge.cludove'){
                                onDataLogon($("#data_connection_id").val());   //资源节点账号登录
                            }
                        }
                        // $(this).change(function () {
                            // if($("input[name='data_type_select']:checked").attr("id") === 'data_type_hinge'){
                            //     if ($("#data_connection_id").val() !='' && $('#data_connection_id').val() !='infoinge.cludove'){
                            //         onDataLogon($("#data_connection_id").val());   //资源节点账号登录
                            //     }else {
                            //         $("#hinge_content").hide();
                            //         $("#hinge_content_block").hide();
                            //         $("#data_resource_buddle").show();
                            //     }
                            // }
                        // });
                        $("#data_setting #data_resource_name").click(function () {
                            if ($(this).children("option").length == 1) {
                                $("#hinge_content").show().text("提供数据映射的功能目录需要为其定义数据元数据 !");
                            } else {
                                $("#hinge_content").hide();
                            }
                        });
                        dataExchangeFieldMetadata();
                    }
                    if (on_resource_decomposing_select != "")
                        eval("" + on_resource_decomposing_select + "");
                });
    } else {
        $("#" + select_id + "")
            .load(
                httpHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=resource.decomposing.select.view&type="
                + type + "&selected_value="
                + $("#" + select_id + "").val() + "&select_blank="
                + $.convertToUnicode(select_blank)
                + "&select_column=" + select_column
                + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("载入资源定义列表失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        $("#data_setting #data_resource_name").click(function () {
                            if ($(this).children("option").length == 1) {
                                $("#hinge_content").show().text("提供数据映射的功能目录需要为其定义数据元数据 !");
                            } else {
                                $("#hinge_content").hide();
                            }
                        });
                    }
                    if (on_resource_decomposing_select != "")
                        eval("" + on_resource_decomposing_select + "");
                });
    }
}

function resetData() {
    $(".reset_data").click();
}


/**********跳转模型设计界面***********/

function onModelEdit(buddle_id, catalog_id, type) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=model.edit.view"
        + "&buddle_id=" + buddle_id + "&catalog_id=" + catalog_id + "&type=" + type; //转向网页的地址;
    var name = "功能设计"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.96; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.86; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

// 功能返回
function onCatalogReturnEdit(buddle_id, catalog_id) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=catalog.return.edit.view"
        + "&buddle_id=" + buddle_id + "&catalog_id="
        + catalog_id; //转向网页的地址;
    var name = "编辑功能返回"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.75; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.75; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 50 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function processCatalogReturnSetting() {
    var base64 = new Base64();
    var content = base64.encode(UE.getEditor('return_content').getContent());

    if ($('#code_catalog_return').val().length > 0) {
        $.request(httpHeader, '修改功能返回', new Array('buddle.cludove',
            'catalog.cludove', 'content'), new Array('diginter',
            'catalog.return.setting.process', content), new Array('code',
            'connection_code', 'buddle_id', 'catalog_id'),
            new Array('code_catalog_return', 'connection_code_catalog_return', 'buddle_id',
                'catalog_id'), 'text',
            null, null, 'catalogReturnSettingSuccessCallback', 'normalErrorCallback');
    } else {
        $.request(httpHeader, '新增功能返回', new Array('buddle.cludove',
            'catalog.cludove', 'content'), new Array('diginter',
            'catalog.return.setting.process', content), new Array('buddle_id',
            'catalog_id'), new Array('buddle_id', 'catalog_id'), 'text',
            null, null, 'catalogReturnSettingSuccessCallback', 'normalErrorCallback');
    }
}

$.extend({
    catalogReturnSettingSuccessCallback: function (responseText) {
        $('#code_catalog_return').val(responseText);
    }
});

//跳转功能参数页面
function onCatalogInfoapiSetting(buddle_id, catalog_id) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=parameter.edit.view"
        + "&buddle_id=" + buddle_id + "&catalog_id=" + catalog_id; //转向网页的地址;
    var name = "编辑功能参数说明"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.75; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.75; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 50 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function onCatalogInfoapiSearch() {
    setRemoveSelectRecordButton('block', '数据参数', 'diginter',
        'parameter.catalog.remove.process', 'catalog_parameter_record_code',
        'catalog_parameter_check_select', 'catalog_parameter_select', 'removeSelectRecordParamemter');
    $("#parameter_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=parameter.catalog.search.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据参数失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                hintMessage("载入目录样式单成功。", false);
                checkAll('span_check_catalog_parameter',
                    'span_check_select_catalog_parameter',
                    'catalog_parameter_check_select',
                    'check_all_catalog_parameter');

            });
}

function showCatalogParameterSetting(code) {
    $("#parameter_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=parameter.catalog.setting.view&code="
            + code + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据参数设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $('#parameter_setting_right').show();
                ;
                // hintMessage("显示数据参数设置界面成功。", false);
                $('#catalog_parameter_parameter_length').spinner({
                    max: 99999999999999,
                    min: 0,
                    step: 1
                });

                $('#catalog_parameter_parameter_length_spinner').spinner({
                    max: 99999999999999,
                    min: 0,
                    step: 1
                });

            });
}

function processCatalogParameterSetting() {
    if ($('#validate_catalog_parameter_setting').validationEngine('validate')) {
        if ($('#code_catalog_parameter').val().length > 0) {
            $.request(httpHeader, '修改功能参数', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'parameter.catalog.setting.process'), new Array('code', 'buddle_id', 'catalog_id',
                'parameter_name', 'parameter_length', 'is_must', 'is_parameter'),
                new Array('code_catalog_parameter', 'buddle_id', 'catalog_id', 'catalog_parameter_paramter_name', 'catalog_parameter_parameter_length',
                    'catalog_parameter_is_must', 'catalog_parameter_is_parameter'), 'text',
                null, null, 'catalogCatalogParameterSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增功能参数', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'parameter.catalog.setting.process'),
                new Array('buddle_id', 'catalog_id', 'parameter_name', 'parameter_length', 'is_must', 'is_parameter'),
                new Array('buddle_id', 'catalog_id', 'catalog_parameter_paramter_name', 'catalog_parameter_parameter_length',
                    'catalog_parameter_is_must', 'catalog_parameter_is_parameter'), 'text',
                null, null, 'catalogCatalogParameterSuccessCallback', 'normalErrorCallback');
        }
    }
}

$.extend({
    catalogCatalogParameterSuccessCallback: function (responseText) {
        // 刷新页面
        onCatalogInfoapiSearch();
        $('#parameter_setting_right').hide();
        // onCatalogInfoapiSetting(responseText);
    }
});
function onCatalogParameterEdit(code, buddle_id, catalog_id) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=parameter.catalog.edit.view&code="
        + code + "&buddle_id=" + buddle_id + "&catalog_id="
        + catalog_id; //转向网页的地址;
    var name = "功能参数内容"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.75; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.75; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 50 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function processCatalogParameterEdit() {
    var base64 = new Base64();
    var requirement = base64.encode(UE.getEditor('catalog_parameter_requirement').getContent());
    $.request(httpHeader, '修改功能参数内容', new Array('buddle.cludove',
        'catalog.cludove', 'requirement'), new Array('diginter',
        'parameter.catalog.edit.process', requirement), new Array('code',
        'buddle_id', 'catalog_id'),
        new Array('code_catalog_parameter', 'buddle_id', 'catalog_id'), 'text',
        null, null, 'catalogReturnSettingSuccessCallback', 'normalErrorCallback');
}


/************ 数据元数据开始 ***********/
//跳转到数据元数据页面
function onCatalogMetadataSetting(buddle_id, catalog_id,is_exchange) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=metadata.edit.view"
        + "&buddle_id=" + buddle_id + "&catalog_id=" + catalog_id
        + "&is_exchange=" + is_exchange; //转向网页的地址;
    var name = "编辑数据元数据说明"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.75; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.75; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 50 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

//数据元数据显示
function onCatalogMetadataSearch() {
    onMetadataRemoveSelectRecordButton('block', 'diginter', 'metadata.catalog.remove.process', 'code',
        'catalog_metadata_check_select', 'catalog_metadata_check', 'removeSelectRecordMetadata');
    $("#metadata_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=metadata.catalog.search.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_direct=" + $("#data_direct").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据元数据失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    hintMessage("载入目录样式单成功。", false);
                    checkAll('span_check_catalog_metadata',
                        'span_check_select_catalog_metadata',
                        'catalog_metadata_check_select',
                        'check_all_catalog_metadata');
                    if ($('#is_exchange').val() != 'true')
                        processMetadataCatalogSetting($("#buddle_id").val(), $("#catalog_id").val(), $("#metadata_list").val())
                }
            });
}

//批量删除
function onMetadataRemoveSelectRecordButton(display, buddle_id, catalog_id,
                                            record_code_name, resource_check_select_class, select_input_name, remove_name) {
    $("#" + remove_name).css("display", display);
    if (display == "block") {
        $("#" + remove_name).attr("title", "停用所选数据元数据");

        $("#" + remove_name).attr(
            "onclick",
            "zdconfirm('提示','\"确认停用已选数据元数据吗？\"',function(confirm){if (confirm) {removeSelectRecordCatalogMetadata(this, '"
            + resource_check_select_class + "', '" + buddle_id + "', '" + catalog_id
            + "', '" + record_code_name + "');} })");
    } else
        $("#" + remove_name).removeAttr("onclick");
}

function removeSelectRecordCatalogMetadata(check_input, class_name, buddle_id, catalog_id,
                                           record_code_name) {
    var records = $('.' + class_name);
    var record_code = '';
    var connection_code = '';
    var is_exits = 0;
    for (var i = 0; i < records.length; i++) {
        if (records.eq(i).parent().parent().hasClass("on")) {
            is_exits = 1;
            break;
        }
    }
    console.log(is_exits)
    if (is_exits == 0) {
        zdconfirm("提示", "未选中!");
    } else {
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];
                records.eq(i).parent().parent().attr("id", record_code);
                $.request(httpHeader, '', new Array('buddle.cludove',
                    'catalog.cludove', 'is_active', record_code_name,
                    'connection_code'), new Array(buddle_id, catalog_id,
                    'false', record_code, connection_code), new Array(),
                    new Array(), 'text', null, null, 'onMetadataRecordRemoveCallBack',
                    'normalErrorCallback');
            }
        }
        is_exits = 0;
    }
}

// 在列表上完成内容停用
$.extend({
    onMetadataRecordRemoveCallBack: function (responseText) {
        //删除连接标识返回触发
        if ($("." + responseText + "").next().attr('is-subordinate') == 'true' || $("#" + responseText + "").next().attr('is-subordinate') == 'true') {
            $("." + responseText + "").next().css("display", "none");
            $("#" + responseText + "").next().css("display", "none");
        }
        $("." + responseText + "").css("display", "none");
        $("#" + responseText + "").css("display", "none");
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        onCatalogMetadataSearch();
    }
});

//根据数据元数据是否有数据设置功能目录is_metadata
function processMetadataCatalogSetting(buddle_id, catalog_id, metadata_lists_length) {
    if (metadata_lists_length > 0) {
        $.request(httpHeader, '修改功能目录', new Array('buddle.cludove', 'catalog.cludove', 'is_metadata', 'buddle_id', 'catalog_id'),
            new Array('diginter', 'metadata.catalog.metadata.setting.process', 'true', buddle_id, catalog_id),
            new Array(), new Array(), 'text', null, null, '', 'normalErrorCallback');
        localStorage.setItem('hasMetadata', true);
    } else {
        $.request(httpHeader, '修改功能目录', new Array('buddle.cludove', 'catalog.cludove', 'is_metadata', 'buddle_id', 'catalog_id'),
            new Array('diginter', 'metadata.catalog.metadata.setting.process', 'false', buddle_id, catalog_id),
            new Array(), new Array(), 'text', null, null, '', 'normalErrorCallback');
        localStorage.setItem('hasMetadata', false);
    }
}

$.extend({
    catalogMetadataRemoveSuccessCallback: function (responseText) {
        // 刷新页面
        onCatalogMetadataSearch();
        $('#metadata_setting_right').hide();
    }
});

//数据元数据设置显示
function showCatalogMetadataSetting(code, position) {
    $("#metadata_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=metadata.catalog.setting.view&code=" + code
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据元数据设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $('#metadata_setting_right').show();
                    //若修改第一条数据，主键字段跟着修改
                    if (parseFloat(position) == 1 || $("#metadata_table tr").length == 1) {  //没有数据元数据的时候
                        $("#catalog_metadata_metadata_name").keyup(function () {
                            $("#catalog_metadata_primary_name").val($(this).val());
                        });
                    } else {
                        if ($("#data_direct").val() == 'input') {
                            $("#catalog_metadata_primary_name").val($("#catalog_input_primary_name").val());
                        } else {
                            $("#catalog_metadata_primary_name").val($("#catalog_output_primary_name").val());
                        }
                    }
                    $("#catalog_metadata_primary_name").keyup(function () {
                        if ($("#data_direct").val() == 'input') {
                            $("#catalog_input_primary_name").val($(this).val());
                        } else {
                            $("#catalog_output_primary_name").val($(this).val());
                        }
                    })

                    if ($("#deleting_hidden").css('display') == 'none') {
                        $("#metadata_submit").hide();
                        $("#metadata_cancel").hide();
                    } else {
                        $("#metadata_submit").show();
                        $("#metadata_cancel").show();
                    }
                }
                // hintMessage("显示数据参数设置界面成功。", false);
                $('#catalog_metadata_metadata_length').spinner({
                    max: 99999999999999,
                    min: 1,
                    step: 1
                });

                $('#catalog_metadata_metadata_length_spinner').spinner({
                    max: 99999999999999,
                    min: 1,
                    step: 1
                });

            });
}

//数据元数据设置执行
function processCatalogMetadataSetting() {
    $("#metadata_submit").attr("disabled", "disabled");
    var data_id = "[" + $("#buddle_id").val() + "].[" + $("#catalog_id").val() + "]";
    if ($('#validate_catalog_metadata_setting').validationEngine('validate')) {
        if ($('#code_catalog_metadata').val().length > 0) {
            $.request(httpHeader, '修改数据元数据', new Array('buddle.cludove',
                'catalog.cludove', 'data_id', 'type'), new Array('diginter', 'metadata.catalog.setting.process', data_id, 'String'),
                new Array('code', 'name', 'length', 'primary_name', 'remark', 'data_direct', 'buddle_id', 'catalog_id'),
                new Array('code_catalog_metadata', 'catalog_metadata_metadata_name', 'catalog_metadata_metadata_length',
                    'catalog_metadata_primary_name', 'catalog_metadata_remark', 'data_direct', 'buddle_id', 'catalog_id'), 'text',
                null, null, 'catalogCatalogMetadataSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增数据元数据', new Array('buddle.cludove',
                'catalog.cludove', 'data_id', 'type'), new Array('diginter', 'metadata.catalog.setting.process', data_id, 'String'),
                new Array('name', 'length', 'primary_name', 'remark', 'data_direct', 'buddle_id', 'catalog_id'),
                new Array('catalog_metadata_metadata_name', 'catalog_metadata_metadata_length',
                    'catalog_metadata_primary_name', 'catalog_metadata_remark', 'data_direct', 'buddle_id', 'catalog_id'), 'text',
                null, null, 'catalogCatalogMetadataSuccessCallback', 'normalErrorCallback');
        }
        $("validate_catalog_metadata_setting").hide();
    }else{
        $("#metadata_submit").removeAttr("disabled");
    }
}

$.extend({
    catalogCatalogMetadataSuccessCallback: function (responseText) {
        // 刷新页面
        $("#metadata_submit").removeAttr("disabled");
        if (responseText == 'success') {
            onCatalogMetadataSearch();
            $('#metadata_setting_right').hide();
        } else {
            zdconfirm("提示", responseText);
        }
    }
});

//删除数据元数据
function onMetadataDelete(code,name,primary_name,data_id,catalog_id) {
    var is_primary = 'false';
    if (name == primary_name)
        is_primary = 'true';
    $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'name','primary_name','data_id','catalog_id'),
        new Array('diginter', 'metadata.catalog.remove.process', code, name,primary_name,data_id,catalog_id),
        new Array(), new Array(),
        'text', null, null, 'catalogMetadataRemoveSuccessCallback', 'normalErrorCallback');
    $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'catalog_parameter_record_code', 'is_primary','primary_name'),
        new Array('diginter', 'parameter.catalog.remove.process', code, is_primary,primary_name),
        new Array('buddle_id','catalog_id'),
        new Array('buddle_id','catalog_id'), 'text', null, null,
        'catalogMetadataRemoveSuccessCallback', 'normalErrorCallback');
}
/************ 数据元数据结束 ***********/


/************ 异常响应开始 ***********/
function onExceptionResponseSearch(record_code) {
    setRemoveSelectRecordButton('block', '异常响应', 'diginter',
        'response.exception.remove.process',
        'exception_response_record_code',
        'exception_response_check_select', '', 'removeSelectRecordBusiness');

    $("#resource_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=response.exception.search.view"
            + "&buddle_id=exchange" + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入异常响应失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                checkAll('span_check_exception_response',
                    'span_check_select_exception_response',
                    'exception_response_check_select',
                    'check_all_exception_response');
            });
}

function onExceptionResponseSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=response.exception.setting.view&code="
            + code + "&buddle_id=exchange"
            + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示异常响应设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;

                $('#exception_response_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            }).show();
}

function processExceptionResponseSetting() {
    if ($('#exception_response_is_for_each').val() == 'true') {
        $('#exception_response_select_expression').addClass("validate[required]");
    } else {
        $('#exception_response_select_expression').removeClass("validate[required]");
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_exception_response_setting').validationEngine('validate')) {
        if ($('#code_exception_response').val().length > 0) {
            $.request(httpHeader, '修改异常响应', new Array('buddle.cludove',
                'catalog.cludove', 'buddle_id'), new Array('diginter',
                'response.exception.setting.process', 'exchange'), new Array('code',
                'connection_code', 'position', 'test_expression', 'is_for_each', 'select_expression',
                'response_format', 'start_symbol', 'end_symbol'),
                new Array('code_exception_response',
                    'connection_code_exception_response',
                    'exception_response_position',
                    'exception_response_test_expression',
                    'exception_response_is_for_each',
                    'exception_response_select_expression',
                    'exception_response_response_format',
                    'exception_response_start_symbol',
                    'exception_response_end_symbol'), 'text', null,
                null, 'exceptionResponseSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增异常响应', new Array('buddle.cludove',
                'catalog.cludove', 'buddle_id'), new Array('diginter',
                'response.exception.setting.process', 'exchange'), new Array(
                'position', 'test_expression',
                'is_for_each', 'select_expression', 'response_format',
                'start_symbol', 'end_symbol'), new Array(
                'exception_response_position',
                'exception_response_test_expression',
                'exception_response_is_for_each',
                'exception_response_select_expression',
                'exception_response_response_format',
                'exception_response_start_symbol',
                'exception_response_end_symbol'), 'text', null, null,
                'exceptionResponseSettingSuccessCallback',
                'normalErrorCallback');
        }
        $("#resource_setting_right").hide();
    }
}

$.extend({
    exceptionResponseSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onExceptionResponseSearch('');
    }
});
/************ 异常响应结束 ***********/

/************ 判断功能目录是否被使用 ***********/
function catalogWhetherUseSearch(type, identifier, name, code, buddle_id, connection_code, job_catalog) {
    $(this).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=catalog.remove.use.search.process&identifier="
        + identifier + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                console.log(data);
                hintError("查询目录标识失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if (data == 'true')
                    zdconfirm("提示", "该功能目录被使用为 迁移/同步 的目录数据，无法删除!");
                else {
                    if (job_catalog == 1) {
                        zdconfirm('提示', '删除该功能目录后，使用过该功能目录的目录数据也会被一起删除，同时也会把相关的作业功能一起删除，确定吗？', function (confirm) {
                            if (confirm) {
                                $("#now_remove").show();
                                $("#ajax_loader_remove").show();
                                $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove',
                                    'catalog_record_code', 'buddle_id', 'identifier', 'type', 'connection_code'),
                                    new Array('infoinge', 'catalog.remove.process', code,
                                        buddle_id, identifier, type, connection_code),
                                    new Array(), new Array(), 'text', null, null, 'onRecordSearchRemoveCallBack', 'normalErrorCallback');
                            }
                        })
                    } else {
                        zdconfirm('提示', '删除该功能目录后，使用过该功能目录的目录数据也会被一起删除，确定吗？', function (confirm) {
                            if (confirm) {
                                $("#now_remove").show();
                                $("#ajax_loader_remove").show();
                                $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove',
                                    'catalog_record_code', 'buddle_id', 'identifier', 'type', 'connection_code'),
                                    new Array('infoinge', 'catalog.remove.process', code,
                                        buddle_id, identifier, type, connection_code),
                                    new Array(), new Array(), 'text', null, null, 'onRecordSearchRemoveCallBack', 'normalErrorCallback');
                            }
                        })
                    }
                }
                ;
            }
        })
}

/************ 标识验证函数 ***********/
function validateIdentifier(val, reg, reg1) {
    var isRight = true;
    if (reg.test(val.substring(0, 1)) && reg.test(val.substring(val.length - 1))) {
        for (var i = 0, j = Math.floor(val.length / 20); i <= j; i++) {
            if (isRight) {
                if (val.substring(20 * i, 20 * i + 20) != '') {
                    if (reg1.test(val.substring(20 * i, 20 * i + 20))) {
                        isRight = true;
                    } else {
                        isRight = false;
                    }
                }
            } else {
                break;
            }
        }
    } else {
        isRight = false;
    }
    return isRight;
}