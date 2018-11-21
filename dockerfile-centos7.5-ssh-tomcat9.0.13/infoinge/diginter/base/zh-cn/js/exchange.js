/**
 * Created by Administrator on 2017/12/4 0004.
 */

// 数字立交功能目录
function onCatalogSearch(record_code, is_check_or_click) {

    // setRemoveSelectRecordButtonCatalog('block', '功能目录','infoinge', 'catalog.remove.process',
    //     'catalog_record_code', 'catalog_check_select', 'catalog_select','true');

    $("#resource_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=exchange&catalog.cludove=catalog.search.view"
            + "&buddle_id=exchange" + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    // tableStyleSetting();
                    ;
                // hintMessage("载入功能目录成功。", false);

            });
}
// 数字立交功能目录设置界面
function onCatalogSetting(code,is_locate_record) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=exchange&catalog.cludove=catalog.setting.view&code="
            + code + "&buddle_id=exchange" + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示功能目录设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if($("#catalog_frequentness").val() == 'month'){
                        $("#catalog_frequentness_year_true").attr('disabled','disabled')
                    }else if($("#catalog_frequentness").val() == 'day') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled')
                    }else if($("#catalog_frequentness").val() == 'hour') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_day_true").attr('disabled', 'disabled')
                    }else if($("#catalog_frequentness").val() == 'minute') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_day_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_hour_true").attr('disabled', 'disabled')
                    }else if($("#catalog_frequentness").val() == 'second') {
                        $("#catalog_frequentness_year_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_month_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_day_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_hour_true").attr('disabled', 'disabled');
                        $("#catalog_frequentness_minute_true").attr('disabled', 'disabled')
                    }

                    $(this).show();
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                }
                ;
                // hintMessage("显示功能目录设置界面成功。", false);

                $('#catalog_identifier').focus();
                // console.log(is_locate_record);
                // console.log(is_locate_record > 0);
                // if (is_locate_record > 0){
                //     locateNavigate(code, 'resource_setting_left');
                // }
            });
}

//监听类型改变判断是否显示发布总线
function onCatalogTypeChange() {
    var type = $("#catalog_type").val();
    var is_issue_dsb = $("#is_is_issue_dsb").val();
    if (is_issue_dsb == 'is_issue_dsb_true'){
        if (type == 'function'){
            $("#catalog_is_issue_dsb_container").show();
            $("#catalog_is_issue_dsb_true").removeProp('checked');
            $("#catalog_is_issue_dsb_false").prop('checked','checked');
            $("#catalog_is_issue_dsb").val('false');
        }else{
            $("#catalog_is_issue_dsb_container").hide();
            $("#catalog_is_issue_dsb").val('false');
        }
    }else if (is_issue_dsb != 'is_issue_dsb_false'){
        if (type == 'function'){
            $("#catalog_is_issue_dsb_container").show();
            $("#catalog_is_issue_dsb_false").removeProp('checked');
            $("#catalog_is_issue_dsb_true").removeProp('checked');
            if (is_issue_dsb == 'true'){
                $("#catalog_is_issue_dsb_true").prop('checked','checked');
                $("#catalog_is_issue_dsb").val('true');
            }else{
                $("#catalog_is_issue_dsb_false").prop('checked','checked');
                $("#catalog_is_issue_dsb").val('false');
            }

        }else{
            $("#catalog_is_issue_dsb_container").hide();
            $("#catalog_is_issue_dsb").val('false');
        }
    }

}

//功能目录调用日期插件
function onCatalogDate() {
    var timer={
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
    var iTop = (window.screen.height - 80- iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}
/* 文件上传 */
function uploadBuddleFile(style_name, language_name, file_input_id, resource_name,catalog_id) {
    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "exchange",
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
            if (data.indexOf("success") >= 0){
                hintMessage("上传" + resource_name + "成功！", false)
                window.location.reload();
            }
            else {
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
    var iTop = (window.screen.height - 80- iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - iWidth) / 2; //获得窗口的水平位置;

    var is_execute = true;

    if ($('#exchange_code_catalog_input').val() == '') {
        alert('请输入交换记录主键值');
        return;
    }

    if (is_confirm)
        is_execute = confirm("确定要对 " + $("#exchange_code_catalog_input").val() + " 执行手工交换吗？");

    if (is_execute)
        window.open(url + '&exchange_code=' + $('#exchange_code_catalog_input').val(), name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
            + iWidth + ',top=' + iTop + ',left=' + iLeft
            + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}


//  点击提交按钮查询目录标识
function validatecatalogSetting() {
    console.log($('#catalog_identifier').val())
    if(validateIdentifier($('#catalog_identifier').val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/)){
        var identifier2 = $('#catalog_identifier').val();
        var name = $("#catalog_name").val();
        if ($('#validate_catalog_setting').validationEngine('validate')) {
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=catalog.identifer.validate.process&identifier="
                + identifier2 + "&name=" + encodeURI(encodeURI(name))
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_code" + $("#code_catalog").val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        console.log(data);
                        hintError("查询目录标识失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if (data == '1') {
                            alert('目录标识已存在')
                        } else if (data == '2') {
                            alert('目录名字已存在')
                        } else if (data == 'ok') {
                            processCatalogSetting();
                        }
                    }
                })
        }
    }else{
        alert("标识必须为*字母或数字可加.分隔");
        $("#catalog_identifier").focus();
    }
}

function processCatalogSetting() {
    // 开始时间和结束时间判断
    if  ($("#catalog_run_start_minute").val() != '' && $("#catalog_run_start_hour").val() == '') {
        alert("开始时间无效！");
    } else if ($("#catalog_run_finish_minute").val() != '' && $("#catalog_run_finish_hour").val() == '') {
        alert("结束时间无效！");
    } else if($("#catalog_run_start_hour").val() != '' && $("#catalog_run_finish_hour").val() == '') {
        alert("请输入结束时间！");
    } else if ($("#catalog_run_finish_hour").val() != '' && $("#catalog_run_start_hour").val() == '') {
        alert("请输入开始时间！");
    } else {
        if ($("#catalog_run_start_hour").val() != '' && $("#catalog_run_start_minute").val() == '')
            $("#catalog_run_start_minute").val('00');
        if ($("#catalog_run_finish_hour").val() != '' && $("#catalog_run_finish_minute").val() == '')
            $("#catalog_run_finish_minute").val('00');
        // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
        if ($('#validate_catalog_setting').validationEngine('validate')) {
            disabledButton();
            var is_synced_dsb = ' ';
            if ($('#catalog_type').val() != 'function') {
                is_synced_dsb = 'true';
            } else if ($('#code_catalog').val().length > 0) {
                is_synced_dsb = 'false';
            }

            if ($('#code_catalog').val().length > 0) {
                $.request(httpHeader, '修改功能目录', new Array('buddle.cludove',
                    'catalog.cludove', 'is_synced_dsb'), new Array('exchange',
                    'catalog.setting.process', is_synced_dsb), new Array('code',
                    'connection_code', 'buddle_id', 'identifier', 'name',
                    'type', 'content_type', 'is_permit', 'is_home', 'is_pause',
                    'is_for_each', 'is_log', 'select_expression', 'is_running',
                    'frequentness', 'interval_time', 'join_time', 'run_start_hour',
                    'run_start_minute', 'run_finish_hour',
                    'run_finish_minute', 'description', 'is_issue_dsb'), new Array('code_catalog',
                    'connection_code_catalog', 'buddle_id',
                    'catalog_identifier', 'catalog_name', 'catalog_type',
                    'catalog_content_type', 'catalog_is_permit',
                    'catalog_is_home', 'catalog_is_pause',
                    'catalog_is_for_each', 'catalog_is_log', 'catalog_select_expression',
                    'catalog_is_running', 'catalog_frequentness',
                    'catalog_interval_time', 'catalog_join_time',
                    'catalog_run_start_hour', 'catalog_run_start_minute', 'catalog_run_finish_hour', 'catalog_run_finish_minute', 'catalog_description', 'catalog_is_issue_dsb'), 'text',
                    null, null, 'catalogSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '新增功能目录', new Array('buddle.cludove',
                    'catalog.cludove', 'is_synced_dsb'), new Array('exchange',
                    'catalog.setting.process', is_synced_dsb), new Array('buddle_id',
                    'identifier', 'name', 'type', 'content_type', 'is_permit',
                    'is_home', 'is_pause', 'is_for_each', 'is_log', 'select_expression',
                    'is_running', 'frequentness', 'interval_time', 'join_time', 'run_start_hour',
                    'run_start_minute', 'run_finish_hour',
                    'run_finish_minute', 'description', 'is_issue_dsb'), new Array('buddle_id',
                    'catalog_identifier', 'catalog_name', 'catalog_type',
                    'catalog_content_type', 'catalog_is_permit',
                    'catalog_is_home', 'catalog_is_pause',
                    'catalog_is_for_each', 'catalog_is_log', 'catalog_select_expression',
                    'catalog_is_running', 'catalog_frequentness',
                    'catalog_interval_time', 'catalog_join_time',
                    'catalog_run_start_hour', 'catalog_run_start_minute', 'catalog_run_finish_hour', 'catalog_run_finish_minute', 'catalog_description', 'catalog_is_issue_dsb'), 'text',
                    null, null, 'catalogSettingSuccessCallback',
                    'normalErrorCallback');
            }
        }
    }
}
//新增功能目录后
$.extend({
    catalogSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        enableButton();
        // onCatalogManage(responseText);
        onCatalogSearch('','','');
    }
});


function catalogDatadisplay(TagName,catalog_id){
    var obj = document.getElementById(TagName);
    if(obj.style.display==""){
        obj.style.display = "none";
    }else{
        obj.style.display = "";
        onDataSetting(TagName,catalog_id);
    }
}
// 目录数据data查看界面
function onDataSetting(data_code,catalog_id) {
    // setRemoveSelectRecordButtonData('block', '目录数据','infoinge', 'data.remove.process',
    //     'data_record_code', 'data_check_select', 'data_select');

    $("#" + data_code + "_data_search")
        .load(
            httpHeader
            + "s?buddle.cludove=exchange&catalog.cludove=data.search.view"
            + "&buddle_id=exchange"
            + "&catalog_id=" + catalog_id + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入目录数据失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入目录数据成功。", false);

                // checkAll('span_check_data', 'span_check_select_data',
                //     'data_check_select', 'check_all_data');
                
                // showDataSetting(record_code);

            });
}
function showDataSetting(code,catalog_id) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=exchange&catalog.cludove=data.setting.view&code="
            + code + "&buddle_id=exchange"
            + "&catalog_id=" + catalog_id + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                // console.log(data);
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if ($("#data_catalog_type").val().length > 0)
                        $('input:radio[name="data_type_select"]').attr('disabled','disabled');

                    if ( $("#data_catalog_type").val() == 'synchronization' ||   $("#data_catalog_type").val() == 'migration') {
                        if ($('#code_data').val().length > 0 && (($('#data_operation_migr').val() != undefined && $('#data_operation_migr').val() != "" && $('#data_operation_migr').val() != null) || ($('#data_operation_sync').val() != undefined && $('#data_operation_sync').val() != '' && $('#data_operation_sync').val() != null))) {
                            $("#data_position").attr('disabled','disabled');
                            $('#data_position').spinner({
                                max: 0,
                                min: 0,
                                step: 1
                            });
                            $("#data_type_ws").attr('disabled','disabled');
                        }else if ($("#data_count").val() == 0){
                            $("#data_position").attr('disabled','disabled');
                            $('#data_position').spinner({
                                max: 0,
                                min: 0,
                                step: 1
                            });
                        }else
                            $('#data_position').spinner({
                                max: 100,
                                min: 1,
                                step: 1
                            });
                    }else {
                        $('#data_position').spinner({
                            max: 100,
                            min: 0,
                            step: 1
                        });
                    }

                    if($("#data_is_for_each").val() == 'true')
                        $("#data_select_expression").attr('class','validate[required,maxSize[1024]]');
                    else
                        $("#data_select_expression").attr('class','validate[maxSize[1024]]');


                    // if ($('#data_operation_migrate_container').is(':hidden')){
                    //     $('#data_exchange_flag_change').hide();
                    //     $('#data_exchange_flag_reset_container').hide();
                    // }else {
                    //     $('#data_exchange_flag_change').show();
                    //     $('#data_exchange_flag_reset_container').show();
                    // };
                    if ($("#data_exchange_sync_time_field").val()!=''){
                        $("#data_exchange_flag_field").removeClass("validate[required]");
                        $("#data_exchange_flag_change_container").hide();
                        $("#data_exchange_flag_reset_container").hide();
                    }

                }
                ;
                // hintMessage("显示目录数据设置界面成功。", false);

                $('#data_name').focus();
                if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class')
                    onResourceConnectionDataSelect("class_connection_id", $("#data_type").val(),$("#class_connection_id_by_class").val(), "请选择资源定义");

                onDataConnectionIdChange();


                $('#data_row_number').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
            });
}
function processDataSetting() {
    if ($("#data_exchange_flag_field").val()!=''){
        $("#data_exchange_sync_time_field").removeClass("validate[required]");
    }
    if ($("#data_exchange_sync_time_field").val()!=''){
        $("#data_exchange_flag_field").removeClass("validate[required]");
        $("#data_exchange_flag_change").removeClass("validate[required]");
        $("#data_exchange_flag_reset").removeClass("validate[required]");
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#data_type").val() == 'DB'){
        $("#data_resource_name").attr('class','validate[required]')
    }else {
        $("#data_resource_name").removeAttr('class','validate[required]');
        $("#data_is_for_each").val('false');
    }

    if( $("#data_is_for_each").val() == 'false')
        $("#data_select_expression").val('');


    if (($("#data_catalog_type").val() != '') && ($("#data_count_right").val() >= 1 ) && ($('#code_data').val().length == 0) && ($('#data_operation').val() == 'build') && ($('#data_type').val() == 'DB')){
        alert('选择功能为迁移或同步时，保存操作必须唯一');
    }else {
        if ($('#validate_data_setting').validationEngine('validate')) {

            if ($("#data_operation_migrate_container").css('display') == 'none'){
                $('#data_exchange_migr_field').val('');
                $('#data_exchange_sync_field').val('');
                $('#data_exchange_sync_time_field').val('');
                $('#data_exchange_flag_field').val('');
                $('#data_exchange_flag_change').val('');
            }

            disabledButton();
            if ($('#code_data').val().length > 0) {
                if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb'),
                        new Array('exchange', 'data.setting.process',
                            'false', 'false', 'false'), new Array('code',
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify'), new Array('code_data',
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit', 'data_classify'), 'text', null, null,
                        'dataSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb'),
                            new Array('exchange', 'data.setting.process',
                                'false', 'false','false'), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id', 'remove_resource_name','code_data_migr'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit', 'remove_connection_id_by_db', 'remove_resource_name_by_db','code_data_migr'), 'text', null, null,
                            'dataSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb'),
                            new Array('exchange', 'data.setting.process',
                                'false', 'false','true'), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'flag_change', 'flag_reset', 'remove_connection_id',
                                'remove_resource_name','code_data_migr'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name','data_operation_migr',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression',
                                'data_is_permit', 'data_exchange_flag_field', 'data_exchange_flag_change',
                                'data_exchange_flag_reset', 'remove_connection_id_by_db', 'remove_resource_name_by_db','code_data_migr'), 'text', null, null,
                            'dataSettingSuccessCallback', 'normalErrorCallback');
                }
            } else {
                if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend'),
                        new Array('exchange', 'data.setting.process',
                            'false', 'false'), new Array(
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify'), new Array(
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit', 'data_classify'), 'text', null, null,
                        'dataSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend'),
                            new Array('exchange', 'data.setting.process',
                                'false', 'false'), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit','code_data_migr'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit','code_data_migr'), 'text', null, null,
                            'dataSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb'),
                            new Array('exchange', 'data.setting.process',
                                'false', 'false','true'), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'flag_change', 'flag_reset','code_data_migr'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation_migr', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression', 'data_is_permit',
                                'data_exchange_flag_field', 'data_exchange_flag_change', 'data_exchange_flag_reset','code_data_migr'), 'text', null, null,
                            'dataSettingSuccessCallback', 'normalErrorCallback');
                }
            }
        }
    }
}

$.extend({
    dataSettingSuccessCallback: function (responseText) {
        // 刷新页面
        var obj = eval('(' + responseText + ')');
        onDataSetting(obj.data_code,obj.catalog_id);
        enableButton();
    }
});




//点击新增按钮重置操作名字
function initDataOperation() {
    if ($("#data_catalog_type").val().length > 0)
        $('#data_operation').html('<option value="build">保存</option>');
    else if ($("#data_type").val() == 'DB' || $("#data_type").val() == 'Metadata')
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option style="display:none" value="upload">上传</option><option style="display:none" value="download">下载</option>');
    else
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option value="upload">上传</option><option value="download">下载</option>');
}

//重置为目录数据初次加载时的页面

function initDataSetting() {

    var data_type_init = $("#data_type_init").val();

    if(data_type_init =='DB')
        $("#data_type_db").trigger('click');
    else if (data_type_init =='Class')
        $("#data_type_class").trigger('click');
    else if (data_type_init =='WS')
        $("#data_type_ws").trigger('click');
    else if (data_type_init =='Metadata')
        $("#data_type_metadata").trigger('click');
    else if (data_type_init =='Hinge')
        $("#data_type_hinge").trigger('click');
    else{
        $("#data_type_db").trigger('click');
        // $('#data_exchange_container').html('');
    }


    if (data_type_init == '')
        $("#data_type").val('DB');
    else
        $("#data_type").val(data_type_init);

}


function onDataTypeCheck(select_id, connection_id_by_resource) {
    if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class'){
        var str=new Array();
        $("#data_connection_id option").map(function(){if($(this).val() != '') str.push($(this).val()) ;})
        for (var i = 0 ;i <= str.length-1;i++){
            if(str[i] == $('#' + connection_id_by_resource + '').val()){
                $('#' + select_id + '').val($('#' + connection_id_by_resource + '').val());
                break;
            }
        }
    }else {
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


    $("#data_resource_name_container").show();


    if(($("#code_data").val().length == 0) && ($("#data_count").val() == '0')
        &&  ($("#data_catalog_type").val().length > 0) && ($("#data_type").val() == 'WS')){
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option value="upload">上传</option><option value="download">下载</option><option value="migrate">迁移</option><option value="synchronize">同步</option>');
        // if ($("#data_catalog_type").val() == 'synchronization'){
        //     $("#data_operation").val("synchronize");
        // }else if ($("#data_catalog_type").val() == 'migration'){
        //     $("#data_operation").val("migrate");
        // }
    }else {
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option value="upload">上传</option><option value="download">下载</option>');
        $("#data_operation").val("search");
    }
    $("#data_operation_migrate_container").hide();

    $("#data_operation_container").show();

    $("#data_is_paginate_container").hide();

    $("#data_row_number_container").hide();

    $("#data_uniques_container").hide();

    $("#data_is_for_each_container").hide();

    $("#data_select_expression_container").hide();

    $("#data_resource_name").val("");

    $("#data_operation").val("search");

    $("#data_select_expression").attr('class','validate[maxSize[1024]]');
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

    $("#data_operation option").show();

    $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option value="upload">上传</option><option value="download">下载</option>');

    $("#data_is_paginate_container").hide();

    $("#data_row_number_container").hide();

    $("#data_uniques_container").hide();

    $("#data_is_for_each_container").hide();

    $("#data_select_expression_container").hide();

    $("#data_resource_name").val("");


    $("#data_select_expression").attr('class','validate[maxSize[1024]]');
}

/*设置 重载资源定义按钮*/

function onOverloadResource() {
    if($("#data_type").val() == 'Class'){
        onResourceConnectionDataSelect("class_connection_id", $("#data_type").val(),$("#class_connection_id_by_class").val(), "请选择资源定义",$("#class_connection_id").val());
        onDataConnectionIdChange();
    }else if($("#data_type").val() == 'Metadata') {
        onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", $("#connection_id_by_metadata").val(), "");
        onDataConnectionIdChange();
    }else if($("#data_type").val() == 'Hinge') {
        onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", $("#connection_id_by_hinge").val(), "");
        onDataConnectionIdChange();
    }else if($("#data_type").val() == 'WS') {
        onResourceConnectionDataSelect("class_connection_id", $("#data_type").val(),$("#class_connection_id_by_class").val(), "请选择资源定义",$("#class_connection_id").val());
        onDataConnectionIdChange();
    }else {
        onResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", $("#class_connection_id_by_class").val(), "");
        onDataConnectionIdChange();
    }
}


function onDataTypeDbCheck(select_id, connection_id_by_resource) {
    $('#' + select_id + '').val($('#' + connection_id_by_resource + '').val());

    onDataConnectionIdChange();
    if( ($("#operation_by_db").val() == 'synchronize' || $("#operation_by_db").val() == 'migrate' || $("#operation_by_db").val() == 'mysql_sync' || $("#operation_by_db").val() == 'mysql_migrate' || $("#operation_by_db").val() == 'oracle_migr' || $("#operation_by_db").val() == 'oracle_sync' || $("#operation_by_db").val() == 'sql_sync' || $("#operation_by_db").val() == 'sql_migr') && ($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization')){
        $("#data_operation_migrate_container").show();
        $("#data_operation_container").hide();
    }else {
        $("#data_operation_container").show();
        $("#data_operation_migrate_container").hide();
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option style="display:none" value="upload">上传</option><option style="display:none" value="download">下载</option>');
    }





    if($("#data_is_for_each").val() == 'true')
        $("#data_select_expression").attr('class','validate[required,maxSize[1024]]');
    else
        $("#data_select_expression").attr('class','validate[maxSize[1024]]');

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

    if ($("#operation_by_db").val() != "")
        $("#data_operation").val($("#operation_by_db").val());

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

    $("#data_select_expression").attr('class','validate[maxSize[1024]]');
}

function onDataConnectionIdChange() {
    if ($('#data_type').val() == 'DB') {
        if ($('#data_connection_id').val() != '')
            $('#connection_id_by_db').val($('#data_connection_id').val());

        onResourceStructureSelect($('#data_connection_id').val(),
            'data_resource_name', 'DB', '请选择数据库表',
            'changeDataResourceNameBy()', '');
    } else if ($('#data_type').val() == 'Hinge') {
        if ($('#data_connection_id').val() != '')
            $('#connection_id_by_hinge').val($('#data_connection_id').val());

        onResourceStructureSelect($('#data_connection_id').val(),
            'data_resource_buddle', 'Hinge', '请选择应用标识',
            'changeDataResourceBuddleBy()', '');
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

function onDataResourceBuddleChange() {
    if ($('#data_type').val() == 'Hinge') {
        if ($('#data_resource_buddle').val() != '') {
            $('#resource_buddle_by_hinge').val($('#data_resource_buddle').val());

            onBuddleStructureSelect($('#data_connection_id').val(),
                'data_resource_name', 'Hinge', '请选择功能目录',
                'changeDataResourceNameBy()', $('#data_resource_buddle').val());
        }else {
            $("#data_resource_name").html('<option value="" >请选择功能目录<option>')
        }
    } else
        ;
}




function changeDataResourceNameBy() {
    var str=new Array();
    $("#data_resource_name option").map(function(){if($(this).val() != '') str.push($(this).val()) ;})
    if ($('#data_type').val() == 'DB') {
        for (var i = 0 ;i <= str.length-1;i++){
            if (str[i] == $('#resource_name_by_db').val()){
                $('#data_resource_name').val($('#resource_name_by_db').val());
                break;
            }
        }
        onDataOperationChange();
    } else if ($('#data_type').val() == 'Metadata'){
        for (var i = 0 ;i <= str.length-1;i++){
            if (str[i] == $('#resource_name_by_metadata').val()){
                $('#data_resource_name').val($('#resource_name_by_metadata').val());
                break;
            }
        }
    } else if ($('#data_type').val() == 'Hinge'){
        for (var i = 0 ;i <= str.length-1;i++){
            if (str[i] == $('#resource_name_by_hinge').val()){
                $('#data_resource_name').val($('#resource_name_by_hinge').val());
                break;
            }
        }
    } else if ($('#data_type').val() == 'WS'){
        for (var i = 0 ;i <= str.length-1;i++){
            if (str[i] == $('#resource_name_by_ws').val()){
                $('#data_resource_name').val($('#resource_name_by_ws').val());
                break;
            }
        }
    } else if ($('#data_type').val() == 'Class'){
        for (var i = 0 ;i <= str.length-1;i++){
            if (str[i] == $('#resource_name_by_class').val()){
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
    if ($('#data_type').val() == 'DB'){
        $('#resource_name_by_db').val($('#data_resource_name').val());
        onDataOperationChange();
    }
    else if ($('#data_type').val() == 'Metadata')
        $('#resource_name_by_metadata').val($('#data_resource_name').val());
    else if ($('#data_type').val() == 'Hinge')
        $('#resource_name_by_hinge').val($('#data_resource_name').val());
    else if ($('#data_type').val() == 'WS'){
        $('#resource_name_by_ws').val($('#data_resource_name').val());
        onDataOperationChange();
    }
    else if ($('#data_type').val() == 'Class')
        $('#resource_name_by_class').val($('#data_resource_name').val());
    else
        ;
}

function onDataOperationChangeForExch(operation){
    if(operation == "migration"){
        $('#operation_by_db').val($('#data_operation_migr').val());
    } else if(operation == "synchronization"){
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


    if ($('#data_operation_migrate_container').css('display') == 'block') {
        if ($('#data_resource_name').val() != '') {
            $("#data_exchange_container")
                .load(
                    httpsHeader
                    + "s?buddle.cludove=infoinge&catalog.cludove=data.exchange.field.extract.view&data_code="
                    + $("#code_data").val() + "&type="
                    + $("#data_type").val() + "&connection_id="
                    + $("#data_connection_id").val()
                    + "&resource_name="
                    + $("#data_resource_name").val()
                    + "&operation=" + $("#data_operation_migr").val()
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("显示数据交换设置界面失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else
                            ;
                        // hintMessage("显示数据交换设置界面成功。", false);

                        $("#data_exchange_container").show();

                        $('#data_exchange_processor_number').spinner({
                            max: 1000,
                            min: 1,
                            step: 1
                        });
                    });
        }else {
            $('#data_exchange_migr_field').html('<option value="">请选择迁移字段</option>');
            $('#data_exchange_sync_field').html('<option value="">请选择同步字段</option>');
            $('#data_exchange_sync_time_field').html('<option value="">请选择同步时间字段</option>');
            $('#data_exchange_flag_field').html('<option value="">请选择标志字段</option>')
        }
    } else
        $("#data_exchange_container").hide();
}

// 在指定位置载入资源结构
function onResourceStructureSelect(connection_id, select_id, type,
                                   select_blank, on_resource_structure_select, resource_name) {
    if (connection_id == null){
        $("#" + select_id + "")
            .load(
                httpHeader
                + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                + '&type=' + type +  '&resource_name='
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
                        // console.log(data);
                        hintError("在指定位置载入资源结构失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        ;

                    if (on_resource_structure_select != "")
                        eval("" + on_resource_structure_select + "");
                });
    }
}

function onResourceConnectionDataSelect(select_id, type, connection_id,select_blank,select_content) {
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
    if($("#data_type").val() == 'Class' || $("#data_type").val() == 'WS'){
        if ($("#data_type").val() == 'WS'){
            select_blank="请选择外部数据类";
            type = 'WS';
        }
        $("#" + select_id + "")
            .load(
                httpHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=processor.select.view&type="
                + type + "&selected_value="
                + $("#" + select_id + "").val()
                + "&classify=" + $("#data_classify").val()
                + "&select_blank="
                + $.convertToUnicode(select_blank) + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("载入驱动处理列表失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        ;
                    // hintMessage("载入驱动处理列表成功。", false);

                    if (on_processor_select != "")
                        eval("" + on_processor_select + "");
                });
    }else {
        $("#" + select_id + "")
            .load(
                httpHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=processor.select.view&type="
                + type + "&selected_value="
                + $("#" + select_id + "").val() + "&select_blank="
                + $.convertToUnicode(select_blank) + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("载入驱动处理列表失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        ;
                    // hintMessage("载入驱动处理列表成功。", false);

                    if (on_processor_select != "")
                        eval("" + on_processor_select + "");
                });
    }
}

// 在指定位置载入资源定义
function onResourceDecomposingSelect(select_id, type, select_blank,
                                     select_column, on_resource_decomposing_select) {
    $("#" + select_id + "")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.decomposing.select.view&type="
            + type + "&selected_value="
            + $("#" + select_id + "").val() + "&select_blank="
            + $.convertToUnicode(select_blank)
            + "&select_column=" + select_column + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入资源定义列表失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入资源定义列表成功。", false);

                if (on_resource_decomposing_select != "")
                    eval("" + on_resource_decomposing_select + "");
            });
}

/*设置提交按钮，提交之后按钮变灰,并禁止提交*/

function disabledButton() {
    $('.submit_btn').css('display','none');
    $('.disable_btn').css('display','block');
}

/*恢复按钮*/

function enableButton() {
    $('.submit_btn').css('display','block');
    $('.disable_btn').css('display','none');
}



/************ 标识验证函数 ***********/
function validateIdentifier(val,reg){
    var isRight = true;
    for(var i=0, j=Math.floor(val.length/10); i<=j;i++){
        if(isRight){
            if(val.substring(10*i,10*i+10)!=''){
                if(reg.test(val.substring(10*i,10*i+10))){
                    isRight=true;
                }else{
                    isRight=false;
                }
            }
        }else{
            break;
        }
    }
    return isRight;
}

