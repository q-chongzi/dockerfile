
/**
 * auther:lsq
 */
var flag = 0;

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

/* 全选事件 */
function checkAll(span_check_resource, span_check_select_resource,
                  resource_check_select, check_all_resource) {
    $("." + span_check_resource + "").eq(0).click(function () {
        $(this).parent().parent().toggleClass("on");
        // 载入点击事件
        var check = $("#" + check_all_resource + "").parent().parent();
        // 如果全选按钮被选中，则所有的按钮都被选中
        if (check.attr("class") == "on") {
            check.siblings('tr').addClass('on');
        } else {
            check.siblings('tr').removeClass('on');
        }
    });

    $("." + span_check_select_resource + "").click(function () {
        // 载入点击事件
        $(this).parent().parent().toggleClass("on");
    });
}

/*
 * 点击重置的时候点击一下隐藏的重置按钮
 */
function resetData() {
    $(".reset_data").click();
}

/* 单击修改按钮 */
function editData(e) {
    $(e).parent().parent().parent().find("input").eq(0).click();
}

/* 列表选中指定记录并定位 */
function locateRecord(record_code, resource_check, resource_select,
                      show_resource_setting, is_check_or_click) {
    if (flag == 1) {
        // 找到id相同的点一下
        // 1.循环先找到value中有response的元素
        $("." + resource_check + "").each(
            function (i) {
                // 切割
                var id = $(this).val().split(",")[0];
                // console.log(id + ":" + record_code);
                if (id == record_code) {
                    if (typeof(is_check_or_click) == "undefined" || is_check_or_click) {
                        $(this).parent().prev().children().attr("checked", true);
                    }else {
                        $(this).parent().prev().children().attr("checked", true);
                        //使用双击事件代替单击事件取消input被checked选中的触发单击事件的定位
                        // $(this).parent().prev().children().trigger("ondblclick");
                    }
                    // 当前内容距离容器顶部的高度
                    var distance_con_height = $(this).parent().parent()
                            .height()
                        * (i + 1);
                    // 获得容器的高度
                    var con_height = $(".main1 .item").height();
                    // 滚动条需要滚动的距离
                    var scroll_top = distance_con_height - con_height / 2;
                    // 设置滚动高度
                    $(".main1 .item").scrollTop(scroll_top);
                    return false;
                }
            });
        // 将flag置为0
        flag = 0;
        eval("" + show_resource_setting + "");
    } else {
        // if ($('input[name="' + resource_select + '"]').length > 0)
            // 载入完成默认点击第一个单选按钮，这样就可以直接显示出右边的表单
            // $('input[name="' + resource_select + '"]').eq(0).attr("checked", true);

        eval("" + show_resource_setting + "");
    }
}

function locateNavigate(record_code, resource_check) {
    $('#' + resource_check + '').animate({
        scrollTop: 0
    }, 0);

    if (record_code != '') {
        $('#' + resource_check + '').animate({
            scrollTop: $('li[class="' + record_code + '"]').offset().top - 80
        }, 0);
        $('li[class="' + record_code + '"]').siblings('li').children('a').css('color',"#fff");
        $('li[class="' + record_code + '"] a').css('color',"#ff633b");
    }
}

/*
 * 单击基本设置图标后：1。去除onclick事件 2.并将图标颜色改变（方法:更换calss） 调用：在每个图标的单击事件中调用
 */
function setBasicsSettingIcon(id) {
    if (id == "vocabulary") {
        $("#vocabulary").attr("class", "img img31");
        $("#vocabulary").parent().parent().removeAttr("onclick");
    } else {
        $("#vocabulary").attr("class", "img img3");
        $("#vocabulary").parent().parent().attr("onclick",
            "onVocabularySetting()");
    }
    if (id == "processor") {
        $("#processor").attr("class", "img img41");
        // $("#processor").parent().parent().removeAttr("onclick");
    } else {
        $("#processor").attr("class", "img img4");
        // $("#processor").parent().parent().attr("onclick",
        //     "onProcessorSetting()");
    }
    if (id == "trusting_host") {
        $("#trusting_host").attr("class", "img img51");
        $("#trusting_host").parent().parent().removeAttr("onclick");
    } else {
        $("#trusting_host").attr("class", "img img5");
        $("#trusting_host").parent().parent().attr("onclick",
            "onTrustingHostSetting()");
    }
    if (id == "release") {
        $("#release").attr("class", "img img61");
        $("#release").parent().parent().removeAttr("onclick");
    } else {
        $("#release").attr("class", "img img6");
        $("#release").parent().parent().attr("onclick",
            "onReleaseHostSetting()");
    }
    if (id == "style") {
        $("#style").attr("class", "img img11");
        $("#style").parent().parent().removeAttr("onclick");
    } else {
        $("#style").attr("class", "img img1");
        $("#style").parent().parent().attr("onclick", "onStyleSetting()");
    }
    if (id == "language") {
        $("#language").attr("class", "img img21");
        $("#language").parent().parent().removeAttr("onclick");
    } else {
        $("#language").attr("class", "img img2");
        $("#language").parent().parent().attr("onclick", "onLanguageSetting()");
    }
    if (id == "clean_out") {
        $("#clean_out").attr("class", "img img71");
        $("#clean_out").parent().parent().removeAttr("onclick");
    } else {
        $("#clean_out").attr("class", "img img7");
        $("#clean_out").parent().parent().attr("onclick", "onCleanoutSetting()");
    }
    if (id == "verify") {
        $("#verify").attr("class", "img img4");
        $("#verify").parent().parent().removeAttr("onclick");
    } else {
        $("#verify").attr("class", "img img41");
        $("#verify").parent().parent().attr("onclick", "onVerifySetting()");
    }
}

/* excel文件上传 */
function uploadExcelFile(style_name, language_name, file_input_id, excel_name) {

    var buddle_id = $("#buddle_id").val();
    var catalog_id = $("#catalog_id").val();
    var resource_name=$("#validate_resource_name").val();
    var connection_id=$("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "infoinge",
            "catalog.cludove": "excel.table.import.process",
            "buddle_id": buddle_id,
            "catalog_id": catalog_id,
            "style_name": style_name,
            "language_name": language_name,
            "connection_id": connection_id,
            "resource_name": resource_name
        },
        secureuri: false,
        fileElementId: file_input_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0){
                hintMessage("上传" + excel_name + "成功！", false)
                window.location.reload();
            }
            else {
                try {
                    hintException(data, false, '');
                } catch (e) {
                    hintError("上传" + excel_name + "失败：" + data + "！", false,
                        "javascript:void(0)");
                }
            }
        },
        error: function (data, status, e) {
            try {
                hintException(data, false, '');
            } catch (e) {
                hintError("上传" + excel_name + "失败：" + data + "！", false,
                    "javascript:void(0)");
            }
        }
    });
    return true;
}

/* 导出excel*/
function ExportExcelFile(style_name, language_name, file_output_id) {

    var resource_name=$("#validate_resource_name").val().toLowerCase( );
    var connection_id=$("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "infoinge",
            "catalog.cludove": "excel.table.export.process",
            "style_name": style_name,
            "language_name": language_name,
            "connection_id": connection_id,
            "resource_name": resource_name
        },
        secureuri: false,
        fileElementId: file_output_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0)
                hintMessage("导出excel成功！", false)
            else {
            	 hintError("导出excel失败：" + data + "！", false,
                 "javascript:void(0)");
                console.log("导出excel失败：" + data + "！");
            }
        },
        error: function (data, status, e) {
            try {
                hintException(data, false, '');
                console.log(data);
            } catch (e) {
                hintError("导出excel失败：" + data + "！", false,
                    "javascript:void(0)");
                console.log("导出excel失败：" + data + "！");
            }
        }
    });
    return true;
}


/* xml文件上传 */
function uploadXmlFile(style_name, language_name, file_input_id, xml_name) {

    var buddle_id = $("#buddle_id").val();
    var catalog_id = $("#catalog_id").val();
    var resource_name=$("#validate_resource_name").val();
    var connection_id=$("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "infoinge",
            "catalog.cludove": "xml.import.process",
            "buddle_id": buddle_id,
            "catalog_id": catalog_id,
            "style_name": style_name,
            "language_name": language_name,
            "connection_id": connection_id,
            "resource_name": resource_name
        },
        secureuri: false,
        fileElementId: file_input_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0){
                hintMessage("上传" + xml_name + "成功！", false);
                window.location.reload();
            }
            else {
                try {
                    hintException(data, false, '');
                } catch (e) {
                    hintError("上传" + xml_name + "失败：" + data + "！", false,
                        "javascript:void(0)");
                }
            }
        },
        error: function (data, status, e) {
            try {
                hintException(data, false, '');
            } catch (e) {
                hintError("上传" + excel_name + "失败：" + data + "！", false,
                    "javascript:void(0)");
            }
        }
    });
    return true;
}

/* 云抽检文件上传 */
function uploadDataCheckFile(style_name, language_name, file_input_id, excel_name) {
    var buddle_id = $("#buddle_id").val();
    var catalog_id = $("#catalog_id").val();
    var resource_name=$("#validate_resource_name").val();
    var connection_id=$("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "infoinge",
            "catalog.cludove": "check.data.import.process",
            "buddle_id": buddle_id,
            "catalog_id": catalog_id,
            "style_name": style_name,
            "language_name": language_name,
            "connection_id": connection_id,
            "resource_name": resource_name
        },
        secureuri: false,
        fileElementId: file_input_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0){
                hintMessage("上传" + excel_name + "成功！", false)
                window.location.reload();
            }
            else {
                try {
                    hintException(data, false, '');
                } catch (e) {
                    hintError("上传" + excel_name + "失败：" + data + "！", false,
                        "javascript:void(0)");
                }
            }
        },
        error: function (data, status, e) {
            try {
                hintException(data, false, '');
            } catch (e) {
                hintError("上传" + excel_name + "失败：" + data + "！", false,
                    "javascript:void(0)");
            }
        }
    });
    return true;
}
/* 文件上传 */
function uploadBuddleFile(style_name, language_name, file_input_id, resource_name,type) {
    var buddle_id = $("#buddle_id").val();
    var catalog_id = $("#catalog_id").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "infoinge",
            "catalog.cludove": "buddle.upload.process",
            "buddle_id": buddle_id,
            "catalog_id": catalog_id,
            "style_name": style_name,
            "language_name": language_name
        },
        secureuri: false,
        fileElementId: file_input_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0){
                hintMessage("上传" + resource_name + "成功！", false);
                alert("上传文件成功 !");
            }
            else {
                alert("上传文件失败，文件只能以.buddle、.jar、.xsl作为后缀 !");
                try {
                    hintException(data, false, '',type);
                } catch (e) {
                    hintError("上传" + resource_name + "失败：" + data + "！", false,
                        "javascript:void(0)",type);
                }
            }
        },
        error: function (data, status, e) {
            try {
                hintException(data, false, '',type);
            } catch (e) {
                hintError("上传" + resource_name + "失败：" + data + "！", false,
                    "javascript:void(0)",type);
            }
        }
    });
    return false;
}

/* 设置批量删除按钮 */
function setRemoveSelectRecordButton(display, title,buddle_id,catalog_id,
                                     record_code_name, resource_check_select_class, select_input_name) {
    $("#removeSelectRecord").css("display", display);
    if (display == "block") {
        $("#removeSelectRecord a span").attr("title", "停用所选" + title);

        $("#removeSelectRecord a span").attr(
            "onclick",
            "if (confirm(\"确认停用已选" + title
            + "吗？\")) {removeSelectRecord(this, '"
            + resource_check_select_class + "', '" + buddle_id + "', '" + catalog_id
            + "', '" + record_code_name + "');}");

        $('#remove_input_name').val(select_input_name);
    } else
        $("#removeSelectRecord a span").removeAttr("onclick");
}

function removeSelectRecord(check_input, class_name,buddle_id,catalog_id,
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
    if (is_exits == 0) {
        alert("未选中");
    } else {
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];

                records.eq(i).parent().parent().attr("id", record_code);

                if (catalog_id == 'resource.connection.infoinge.remove.process' && ($("#resource_connection_template_search").val() == record_code)){
                    alert('本机资源连接不允许删除')
                }else {
                    if (catalog_id == 'resource.connection.remove.process'){
                        $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove', record_code_name,
                            'connection_code'), new Array('infoinge', catalog_id,
                            record_code, connection_code), new Array(),
                            new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                            'normalErrorCallback');
                    }
                    else{
                        $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove', 'is_active', record_code_name,
                            'connection_code'), new Array(buddle_id, catalog_id,
                            'false',record_code, connection_code), new Array(),
                            new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                            'normalErrorCallback');
                    }
                }
            }
        }
        is_exits = 0;
    }

}

//位置 功能目录设置单独的删除按钮
function setRemoveSelectRecordButtonCatalog(display, title,buddle_id, catalog_id,
                                     record_code_name, resource_check_select_class, select_input_name, is_varchar) {
    $("#removeSelectRecord").css("display", display);

    if (display == "block") {
        $("#removeSelectRecord a span").attr("title", "停用所选" + title);

        $("#removeSelectRecord a span").attr(
            "onclick",
            "if (confirm(\"确认停用已选" + title
            + "吗？\")) {removeBatchRecord(this, '"
            + resource_check_select_class + "', '" + buddle_id + "', '" + catalog_id
            + "', '" + record_code_name + "', '" + is_varchar + "');}");

        $('#remove_input_name').val(select_input_name);
    } else
        $("#removeSelectRecord a span").removeAttr("onclick");
}

function removeBatchRecord(check_input, class_name,buddle_id, catalog_id,
                                record_code_name,is_varchar) {
    var records = $('.' + class_name);
    var record_code = '';
    var connection_code = '';
    var is_exits = 0;
    var record_code_value = null;
    for (var i = 0; i < records.length; i++) {
        if (records.eq(i).parent().parent().hasClass("on")) {
            is_exits = 1;
            break;
        }
    }
    if (is_exits == 0) {
        alert("未选中");
    } else {
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];
                records.eq(i).parent().parent().attr("id", record_code);
                record_code_value = is_varchar ? "'" + record_code + "'," :  record_code + ",";
                var lenths = record_code_value.length-1;
                if( record_code_value.charAt(lenths) === ',' ){
                    record_code_value = record_code_value.substring(0,lenths);
                }
                if (record_code_value.length>8192){
                    $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove', 'is_active', record_code_name,
                            'connection_code'), new Array(buddle_id, catalog_id,
                            'false', record_code_value, connection_code), new Array(),
                        new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                        'normalErrorCallback');
                }
                $.request(httpHeader, '', new Array('buddle.cludove',
                    'catalog.cludove', 'is_active', record_code_name,
                    'connection_code'), new Array(buddle_id, catalog_id,
                    'false', record_code, connection_code), new Array(),
                    new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                    'normalErrorCallback');
            }
        }
        is_exits = 0;
    }
}




//位置 目录数据设置单独的删除按钮
function setRemoveSelectRecordButtonData(display, title,buddle_id, catalog_id,
                                     record_code_name, resource_check_select_class, select_input_name) {
    $("#removeSelectRecord").css("display", display);

    if (display == "block") {
        $("#removeSelectRecord a span").attr("title", "停用所选" + title);

        $("#removeSelectRecord a span").attr(
            "onclick",
            "if (confirm(\"确认停用已选" + title
            + "吗？\")) {removeSelectRecordData(this, '"
            + resource_check_select_class + "', '" + buddle_id + "', '" + catalog_id
            + "', '" + record_code_name + "');}");

        $('#remove_input_name').val(select_input_name);
    } else
        $("#removeSelectRecord a span").removeAttr("onclick");
}

function removeSelectRecordData(check_input, class_name, buddle_id, catalog_id,
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
    if (is_exits == 0) {
        alert("未选中");
    } else {
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];

                records.eq(i).parent().parent().attr("id", record_code);
                if (record_code == $("#data_migrate_code").val())
                    alert('不允许删除迁移或同步数据');
                else
                    $.request(httpHeader, '', new Array('buddle.cludove',
                    'catalog.cludove', 'is_active', record_code_name,
                    'connection_code'), new Array(buddle_id, catalog_id,
                    'false', record_code, connection_code), new Array(),
                    new Array(), 'text', null, null, 'onRecordSearchRemoveCallBack',
                    'normalErrorCallback');
            }
        }
        is_exits = 0;
    }

}


function setRemoveSelectRecordButtonDecomposing(display, title, catalog_id,
                                     record_code_name, resource_check_select_class, select_input_name) {
    $("#removeSelectRecord").css("display", display);

    if (display == "block") {
        $("#removeSelectRecord a span").attr("title", "停用所选" + title);

        $("#removeSelectRecord a span").attr(
            "onclick",
            "if (confirm(\"确认停用已选" + title
            + "吗？\")) {removeSelectRecordDecomposing(this, '"
            + resource_check_select_class + "', '" + catalog_id
            + "', '" + record_code_name + "');}");

        $('#remove_input_name').val(select_input_name);
    } else
        $("#removeSelectRecord a span").removeAttr("onclick");
}


function removeSelectRecordDecomposing(check_input, class_name, catalog_id,
                            record_code_name) {
    var records = $('.' + class_name);
    var record_code = '';
    var connection_code = '';
    var is_exits = 0 ;
    for (var i = 0; i < records.length; i++) {
        if (records.eq(i).parent().parent().hasClass("on")) {
            is_exits = 1;
            break;
        }
    }
    if (is_exits == 0){
        alert("未选中");
    }else{
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];

                records.eq(i).parent().parent().attr("id", record_code);

                if (catalog_id == 'resource.decomposing.infoinge.remove.process' && $("#resource_decomposing_template_search").val() == record_code){
                    alert('本机资源定义不允许删除')
                }else {
                    $.request(httpHeader, '', new Array('buddle.cludove',
                        'catalog.cludove', record_code_name,
                        'connection_code'), new Array('infoinge', catalog_id,
                         record_code, connection_code), new Array(),
                        new Array(), 'text', null, null, 'onDecomposingRemoveCallBack',
                        'normalErrorCallback');
                }
            }
        }
        is_exits = 0;
    }

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

/* 开始载入资源设置中间部分 */
function onResourceSetting(type) {
    changeDisplayZone('resource_setting');
    $("#removeSelectRecord").css('display','none');
    if (type != '' && type != 'NONE') {
        onResourceDecomposingSetting(type, '');

        $('#resource_setting_load').val(1);
    }
}
/* 开始资源定义设置 */
function onResourceDecomposingSetting(type, record_code) {
    var http_host = httpHeader;
    $("#decomposing_code").attr("disabled", true);
    if  ($("#resource_type_select").val() == 'Hinge'){
        setRemoveSelectRecordButtonDecomposing('block', '资源定义',
            'resource.decomposing.infoinge.remove.process',
            'resource_decomposing_record_code',
            'resource_decomposing_check_select', 'resource_decomposing_select');
    }else {
        setRemoveSelectRecordButtonDecomposing('block', '资源定义',
            'resource.decomposing.remove.process',
            'resource_decomposing_record_code',
            'resource_decomposing_check_select', 'resource_decomposing_select');
    }


    $("#resource_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.decomposing.search.view&type="
            + type +"&http_host=" + http_host + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入资源定义失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入资源定义成功。", false);

                checkAll('span_check_resource_decomposing',
                    'span_check_select_resource_decomposing',
                    'resource_decomposing_check_select',
                    'check_all_resource_decomposing');

                locateRecord(record_code, 'resource_decomposing_check',
                    'resource_decomposing_select',
                    'showResourceDecomposingSetting(\''+record_code+'\')');

                // 替换下面的下拉菜单
                onResourceDecomposingSelect('decomposing_code', type,
                    '请选择资源定义', 'code', 'disableDecomposingCode()');
            });
}

function disableDecomposingCode() {
    $("#decomposing_code").val('');

    $("#decomposing_code").removeAttr("disabled");
    $("#resource_decomposing_name").attr('disabled','disabled')
}

// 显示资源定义设置界面,右边表格页面
function showResourceDecomposingSetting(code,v_identifier,v_template) {
    var http_host = httpHeader;
    $("#v_identifier").val(v_identifier);
    $("#v_template").val(v_template);
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.decomposing.setting.view&code="
            + code + "&type="
            + $("#resource_type_select").val() +"&http_host=" + http_host + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示资源定义设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{

                    if ($("#resource_decomposing_is_dsb").val()=='true'){
                        $("#resource_decomposing_is_dsb_true").attr("disabled",false)
                    };

                    // $("#decomposing_div_btn").hide();
                    if ($("#code_resource_decomposing").val()==''){
                        $("#decomposing_div_btn").show();
                    }
                    /*// 选择DB后，选择驱动处理后自动选择服务端口的值
                    if ($("#resource_type_select").val() == 'DB'){
                        $("#resource_decomposing_port").val("3306");
                    }*/
                    $("#resource_decomposing_driver").change(function() {
                        switch($("#resource_decomposing_driver").val()){
                            case "com.mysql.jdbc.Driver":
                                $("#resource_decomposing_port").val("3306");
                                $("#resource_decomposing_template").val("jdbc:mysql://HOST:PORT/INSTANCE");
                                break;
                            case "com.microsoft.sqlserver.jdbc.SQLServerDriver":
                                $("#resource_decomposing_port").val("1433");
                                $("#resource_decomposing_template").val("jdbc:sqlserver://HOST:PORT;databaseName=INSTANCE");
                                break;
                            case "oracle.jdbc.driver.OracleDriver":
                                $("#resource_decomposing_port").val("1521");
                                $("#resource_decomposing_template").val("jdbc:oracle:thin:@HOST:PORT:INSTANCE");
                                break;
                            case "org.postgresql.Driver":
                                $("#resource_decomposing_port").val("5432");
                                $("#resource_decomposing_template").val("jdbc:postgresql://HOST:PORT/INSTANCE");
                                break;
                        }
                    });
                    if (code.length == 0)
                        $("#resource_decomposing_driver").trigger('change')
                    $("#removeSelectRecord").hide();

                };
                // hintMessage("显示资源定义设置界面成功。", false);

                $('#resource_decomposing_name').focus();
            });
}


//  点击提交按钮查询资源标识
function validateDecomposingSetting() {
    var y_identifier = $("#v_identifier").val();
    var z_identifier = $('#resource_decomposing_identifier').val();
    var reg_start = /^[a-z0-9]+(\.{0,1}[a-z0-9]+){0,}$/;
    var reg_end = /^([a-z0-9]{0,})+((\.{0,1}[a-z0-9]+){0,})+\.{0,1}$/;
    var type = $('#resource_type_select').val();
    if (type == 'DB') {
        reg_start = /^[a-z]+(\.{0,1}[a-z]+){0,}$/;
        reg_end = /^([a-z]{0,})+((\.{0,1}[a-z]+){0,})+\.{0,1}$/;
    }
    if(validateIdentifier($("#resource_decomposing_identifier").val(), reg_start, reg_end)) {
        if ($('#validate_resource_decomposing_setting')
                .validationEngine('validate')) {
            if ($('#resource_decomposing_identifier').val() == 'cludove.crest.journal') {
                alert('系统标识cludove.crest.journal不允许添加');
            } else {
                disabledButton();

                if ($('#code_resource_decomposing').val() == "") {
                    if ($("#resource_type_select").val() == 'DB') {
                        $(this).load(
                            httpsHeader
                            + "s?buddle.cludove=infoinge&catalog.cludove=decomposing.identifer.validate.process&identifier="
                            + z_identifier + "&instance=" + $('#resource_decomposing_instance').val()
                            + "&type=" + $("#resource_type_select").val()
                            + "&t=" + new Date().getTime(),
                            function (data, textStatus, jqXHR) {
                                if (textStatus == "error") {
                                    // console.log(data);
                                    hintError("查询资源标识失败！", false, "javascript:void(0)");
                                    hintException(data, false, "javascript:void(0)");
                                } else if (data == "identifier_repeat") {
                                    alert('该资源标识已存在');
                                    enableButton();
                                    // } else if (data == "instance_repeat") {
                                    //     alert('该实例标识已存在');
                                    //     enableButton();
                                } else {
                                    processResourceDecomposingSetting();
                                }
                            })
                    } else {
                        $(this).load(
                            httpsHeader
                            + "s?buddle.cludove=infoinge&catalog.cludove=decomposing.identifer.validate.process&identifier="
                            + z_identifier + "&template=" + $('#resource_decomposing_template').val()
                            + "&type=" + $("#resource_type_select").val()
                            + "&t=" + new Date().getTime(),
                            function (data, textStatus, jqXHR) {
                                if (textStatus == "error") {
                                    // console.log(data);
                                    hintError("查询资源标识失败！", false, "javascript:void(0)");
                                    hintException(data, false, "javascript:void(0)");
                                } else if (data == "identifier_repeat") {
                                    alert('该资源标识已存在');
                                    enableButton();
                                } else if (data == "template_repeat") {
                                    alert('该连接模板已存在');
                                    enableButton();
                                } else {
                                    processResourceDecomposingSetting();
                                }
                            })
                    }
                } else {
                    processResourceDecomposingSetting();
                }
            }
        }
    }else{
        if (type == 'DB')
            alert("资源标识必须为小写字母可加.分隔");
        else
            alert("资源标识必须为小写字母或数字可加.分隔");
        $("#resource_decomposing_identifier").focus();
    }
}

// 提交按钮事件
function processResourceDecomposingSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_resource_decomposing_setting')
            .validationEngine('validate')) {
        if ($('#code_resource_decomposing').val().length > 0) {
            $.request(httpHeader, '修改资源定义', new Array('buddle.cludove', 'catalog.cludove'),
                new Array('infoinge', 'resource.decomposing.setting.process'),
                new Array('decomposing_code', 'connection_code', 'name', 'identifier', 'type', 'driver',
                'host', 'port', 'account', 'password', 'template', 'pattern', 'instance', 'max_number',
                'is_locked','is_dsb', 'timeout', 'buffer_pool_size', 'year_id', 'month_id',
                'day_id','telephone','email'),
                new Array('code_resource_decomposing',
                'connection_code_resource_decomposing',
                'resource_decomposing_name',
                'resource_decomposing_identifier', 'resource_type_select',
                'resource_decomposing_driver', 'resource_decomposing_host',
                'resource_decomposing_port',
                'resource_decomposing_account',
                'resource_decomposing_password',
                'resource_decomposing_template',
                'resource_decomposing_pattern',
                'resource_decomposing_instance',
                'resource_decomposing_max_number',
                'resource_decomposing_is_locked',
                'resource_decomposing_is_dsb',
                'resource_decomposing_timeout',
                'resource_decomposing_buffer_pool_size',
                'resource_decomposing_year_id',
                'resource_decomposing_month_id',
                'resource_decomposing_day_id','resource_decomposing_telephone',
                'resource_decomposing_email'), 'text', null, null,
                'resourceDecomposingSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增资源定义', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'resource.decomposing.setting.process'), new Array('name',
                'identifier', 'type', 'driver', 'host', 'port', 'account',
                'password', 'template', 'pattern', 'instance',
                'max_number', 'is_locked','is_dsb', 'timeout', 'buffer_pool_size',
                'year_id', 'month_id', 'day_id','telephone','email'), new Array(
                'resource_decomposing_name',
                'resource_decomposing_identifier', 'resource_type_select',
                'resource_decomposing_driver', 'resource_decomposing_host',
                'resource_decomposing_port',
                'resource_decomposing_account',
                'resource_decomposing_password',
                'resource_decomposing_template',
                'resource_decomposing_pattern',
                'resource_decomposing_instance',
                'resource_decomposing_max_number',
                'resource_decomposing_is_locked',
                'resource_decomposing_is_dsb',
                'resource_decomposing_timeout',
                'resource_decomposing_buffer_pool_size',
                'resource_decomposing_year_id',
                'resource_decomposing_month_id',
                'resource_decomposing_day_id','resource_decomposing_telephone','resource_decomposing_email'), 'text', null, null,
                'resourceDecomposingSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    resourceDecomposingSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        // enableButton();
        onResourceDecomposingSetting($('#resource_type_select').val(),
            responseText);
    }
});
// 删除资源定义
$.extend({
    onDecomposingRemoveCallBack: function (responseText) {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();

        flag = 1;
        // 刷新页面
        if ($('#resource_type_select').val() == 'Hinge'){
            if (responseText == 'success')
                onResourceDecomposingSetting($('#resource_type_select').val(),
                    responseText);
            else
                alert(responseText)
        }else {
            onResourceDecomposingSetting($('#resource_type_select').val(),
                responseText);
        }
    }
});
// 功能目录数据类型为迅枢在指定位置载入资源连接
function onDataResourceDecomposingSelect(select_id, type, select_blank,
                                     select_column, on_resource_decomposing_select) {
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
                } else
                    ;
                if (on_resource_decomposing_select != "")
                    eval("" + on_resource_decomposing_select + "");
            });
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

// 当数据类型为XML时，在指定位置载入资源结构
function onResourceStructureXML(connection_id, select_id, type,
                                select_blank, on_resource_structure_select, resource_name, data_type) {
    if (connection_id == null){
        $("#" + select_id + "")
            .load(
                httpHeader
                + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
                + '&type=' + type + '&data_type=' + data_type +  '&resource_name='
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
                + '&type=' + type + '&data_type=' + data_type + '&connection_id='
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

function onBuddleStructureSelect(connection_id, select_id, type,
                                   select_blank, on_resource_structure_select, buddle_id) {
    $("#" + select_id + "")
        .load(
            httpHeader
            + 's?buddle.cludove=infoinge&catalog.cludove=resource.structure.view'
            + '&type=' + type + '&connection_id='
            + connection_id + '&buddle_id='
            + buddle_id
            + '&catalog_id=' + $('#catalog_id').val()
            + "&selected_value="
            + $("#" + select_id + "").val() + "&select_blank="
            + $.convertToUnicode(select_blank) + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == 'error') {
                    hintError("在指定位置载入应用结构失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;

                if (on_resource_structure_select != "")
                    eval("" + on_resource_structure_select + "");
            });
}

//在指定位置载入资源字段类型
function onResourceStructureTypeShow(type, connection_id, resource_name,
                                     field_name, show_id) {
    $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove',
        'type', 'connection_id', 'resource_name', 'field_name', 'show_id'),
        new Array('infoinge', 'resource.structure.types.view', type,
            connection_id, resource_name, field_name, show_id),
        new Array(), new Array(), 'text', null, null,
        'resourceStructureTypeShowSuccessCallback', 'normalErrorCallback');
}

$
    .extend({
        resourceStructureTypeShowSuccessCallback: function (responseText) {
            if (responseText.indexOf(':') > 0)
                $(
                    '#'
                    + responseText.substring(0, responseText
                        .indexOf(':')) + '').val(
                    responseText
                        .substring(responseText.indexOf(':') + 1));
        }
    });

$.extend({
    onRecordConnectionRemoveCallBack: function (responseText) {
        // 刷新页面
        onResourceConnectionSetting();
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});

/* 开始资源连接设置 */
function onResourceConnectionSetting(record_code) {
    var http_host = httpHeader;
    //如果选择空值，则返回上一级界面
    if($("#decomposing_code").val() == ''){
      $("#resource_type_select").trigger('onchange')
    } else {
        if  ($("#resource_type_select").val() == 'Hinge'){
            setRemoveSelectRecordButton('block', '资源连接',
                'infoinge',
                'resource.connection.infoinge.remove.process',
                'resource_connection_record_code',
                'resource_connection_check_select', 'resource_connection_select');
        }else {
            setRemoveSelectRecordButton('block', '资源连接',
                'infoinge',
                'resource.connection.remove.process',
                'resource_connection_record_code',
                'resource_connection_check_select', 'resource_connection_select');
        }

        $("#resource_setting_main")
            .load(
                httpHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.search.view&type="
                + $("#resource_type_select").val()
                + "&decomposing_code="
                + $("#decomposing_code").val()
                +"&http_host=" +http_host
                + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("载入资源连接失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        ;
                    // hintMessage("载入资源连接成功。", false);

                    checkAll('span_check_resource_connection',
                        'span_check_select_resource_connection',
                        'resource_connection_check_select',
                        'check_all_resource_connection');

                    locateRecord(record_code, 'resource_connection_check',
                        'resource_connection_select',
                        'showResourceConnectionSetting(\''+record_code+'\')');
                });
    }
}

// 显示资源连接设置界面,右边表格页面
function showResourceConnectionSetting(code,v_identifier,v_template,v_instance,host) {
    var http_host = httpHeader;
    $("#v_identifier").val(v_identifier);
    $("#v_template").val(v_template);
    $("#v_instance").val(v_instance);

    var link;
    if (host == undefined || host == '')
        link = '';
    else
        link = "&host=" + host;

    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.setting.view&code="
            + code + "&decomposing_code="
            + $("#decomposing_code").val() + link +  "&type="
            + $("#resource_type_select").val() + "&http_host=" +http_host + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示资源连接设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    $("#resource_connection_port").attr('class','class="validate[required,custom[onlyNumberSp],maxSize[8]]"');
                    // $("#connection_div_btn").hide();
                    // if ($("#code_resource_connection").val()==''){
                    //     $("#connection_div_btn").show();
                    // }
                    // 选择DB后，选择驱动处理后自动选择服务端口的值
                    // if ($("#resource_type_select").val() == 'DB'){
                    //     $("#resource_connection_port").val("3306");
                    // }
                    $("#resource_connection_driver").change(function() {
                        switch($("#resource_connection_driver").val()){
                            case "com.mysql.jdbc.Driver":
                                $("#resource_connection_port").val("3306");
                                break;
                            case "com.microsoft.sqlserver.jdbc.SQLServerDriver":
                                $("#resource_connection_port").val("1433");
                                break;
                            case "oracle.jdbc.driver.OracleDriver":
                                $("#resource_connection_port").val("1521");
                                break;
                            case "org.postgresql.Driver":
                                $("#resource_connection_port").val("5432");
                                break;
                        }
                    });

                    // if (code.length == 0)
                    //     $("#resource_connection_driver").trigger('change')
                    $("#removeSelectRecord").hide();
                }
                    ;
                // hintMessage("显示资源连接设置界面成功。", false);

                $('#resource_connection_name').focus();
            });
}

//  点击提交按钮查询资源连接连接模板

function validateConnectiontemplate() {
    var d_template = $("#v_template").val();
    var s_template = $('#resource_connection_template').val();
    var s_instance = $('#resource_connection_instance').val();
    if ($('#validate_resource_connection_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_resource_connection').val().length > 0 || $('#resource_connection_backup_host').val().length > 0){
            processResourceConnectionSetting();
        } else {
            if ($("#resource_type_select").val() == 'DB') {
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=infoinge&catalog.cludove=connection.instance.validate.process&instance="
                    + s_instance + "&identifier=" + $("#resource_connection_identifier").val() + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("查询实例标识失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else if (data != "") {
                            alert('该实例标识已存在');
                            enableButton();
                        } else {
                            processResourceConnectionSetting();
                        }
                    })
            } else if ($("#resource_type_select").val() == 'Hinge') {
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=infoinge&catalog.cludove=connection.template.validate.process&template="
                    + s_template + "&identifier=" + $("#resource_connection_identifier").val() + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("查询连接模板失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else if (data != "") {
                            alert('该连接模板已存在');
                            enableButton();
                        } else {
                            processResourceConnectionSetting();
                        }
                    })
            } else {
                processResourceConnectionSetting();
            }
        }
    }
}

// 提交按钮事件
function processResourceConnectionSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_resource_connection_setting').validationEngine('validate')) {
        if ($('#resource_connection_backup_host').val().length > 0 && $('#resource_connection_backup_host').val() == $('#resource_connection_host').val()) {
            zdalert('提示', '服务地址不能与正极数据相同');
            enableButton();
        } else {
            if ($('#code_resource_connection').val().length > 0) {
                $.request(httpHeader, '修改资源连接', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'resource.connection.setting.process'), new Array('code',
                    'connection_code', 'name', 'identifier', 'type', 'driver',
                    'host', 'port', 'account', 'password', 'template',
                    'pattern', 'instance', 'max_number', 'is_locked', 'is_dsb',
                    'timeout', 'buffer_pool_size', 'decomposing_code', 'run_id'),
                    new Array('code_resource_connection',
                        'connection_code_resource_connection',
                        'resource_connection_name',
                        'resource_connection_identifier',
                        'resource_type_select',
                        'resource_connection_driver',
                        'resource_connection_host',
                        'resource_connection_port',
                        'resource_connection_account',
                        'resource_connection_password',
                        'resource_connection_template',
                        'resource_connection_pattern',
                        'resource_connection_instance',
                        'resource_connection_max_number',
                        'resource_connection_is_locked',
                        'resource_connection_is_dsb',
                        'resource_connection_timeout',
                        'resource_connection_buffer_pool_size',
                        'decomposing_code', 'run_method'), 'text', null, null,
                    'resourceConnectionSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '新增资源连接', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'resource.connection.setting.process'), new Array('name',
                    'identifier', 'type', 'driver', 'host', 'port', 'account',
                    'password', 'template', 'pattern', 'instance',
                    'max_number', 'is_locked', 'is_dsb', 'timeout', 'buffer_pool_size',
                    'decomposing_code', 'run_id'),
                    new Array('resource_connection_name',
                        'resource_connection_identifier',
                        'resource_type_select',
                        'resource_connection_driver',
                        'resource_connection_host',
                        'resource_connection_port',
                        'resource_connection_account',
                        'resource_connection_password',
                        'resource_connection_template',
                        'resource_connection_pattern',
                        'resource_connection_instance',
                        'resource_connection_max_number',
                        'resource_connection_is_locked',
                        'resource_connection_is_dsb',
                        'resource_connection_timeout',
                        'resource_connection_buffer_pool_size',
                        'decomposing_code', 'run_method'), 'text', null, null,
                    'resourceConnectionSettingSuccessCallback',
                    'normalErrorCallback');
            }
        }
    }
}

$.extend({
    resourceConnectionSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        // enableButton();
        onResourceConnectionSetting(responseText);
    }
});

// 在指定位置载入资源连接
function onResourceConnectionSelect(select_id, type, select_blank,
                                    on_resource_connection_select) {
    $("#" + select_id + "")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.select.view"
            + "&type=" + type + "&selected_code="
            + $("#" + select_id + "").val() + "&select_blank="
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

                if (on_resource_connection_select != "")
                    eval("" + on_resource_connection_select + "");
            });
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

/* 开始基本设置 */
function onBasicsSetting() {
    changeDisplayZone('basics_setting');
    $("#removeSelectRecord").css('display','block');
    if ($('#basics_setting_load').val() == 0) {
        // 开始基本设置操作时默认载入处理类数据
        onProcessorSetting();

        $('#basics_setting_load').val(1);
    }
}

/* 开始驱动处理设置 */
function onProcessorSetting(record_code) {
    setRemoveSelectRecordButton('block', '驱动处理','infoinge', 'processor.remove.process',
        'processor_record_code', 'processor_check_select',
        'processor_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=processor.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入驱动处理失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入驱动处理成功。", false);

                checkAll('span_check_processor',
                    'span_check_select_processor',
                    'processor_check_select', 'check_all_processor');

                locateRecord(record_code, 'processor_check',
                    'processor_select',
                    'showProcessorSetting(\''+record_code+'\')');
            });

    setBasicsSettingIcon('processor');
}

function onProcessorSearch() {
    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=processor.search.view&classify="
            +$("#processor_classify").val()
            +"&type="+$("#type_processor").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入驱动处理失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                checkAll('span_check_processor',
                    'span_check_select_processor',
                    'processor_check_select', 'check_all_processor');

                // locateRecord(record_code, 'processor_check',
                //     'processor_select',
                //     'showProcessorSetting(\''+record_code+'\')');
                // hintMessage("载入驱动处理成功。", false);
                
            });

}
// 显示驱动处理设置界面
function showProcessorSetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=processor.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示驱动处理设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示驱动处理设置界面成功。", false);

                $('#class_processor').focus();
            });
}

// 点击提交按钮,修改或者新增驱动处理 需求：不同的页面可以多次调用
function processProcessorSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if(validateIdentifier($("#class_processor").val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)){
        if ($("#processor_telephone_list").css('display') == "none"){
            if ($('#validate_processor_setting').validationEngine('validate')) {
                if ($('#code_processor').val().length > 0) {
                    $.request(httpHeader, '修改驱动处理', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'processor.setting.process'), new Array('code',
                        'connection_code', 'class', 'name', 'type', 'description','classify'),
                        new Array('code_processor', 'connection_code_processor',
                            'class_processor', 'name_processor',
                            'type_processor', 'description_processor','processor_classify'), 'text',
                        null, null, 'processorSettingSuccessCallback',
                        'normalErrorCallback');
                } else {
                    $(this).load(
                        httpsHeader
                        + "s?buddle.cludove=infoinge&catalog.cludove=processor.setting.validate.process&class="
                        + $("#class_processor").val()
                        + "&t=" + new Date().getTime(),
                        function (data, textStatus, jqXHR) {
                            if (textStatus == "error") {
                                console.log(data);
                                hintError("查询目录标识失败！", false, "javascript:void(0)");
                                hintException(data, false, "javascript:void(0)");
                            } else {
                                if (data) {
                                    alert('处理标识已存在');
                                    $("#class_processor").focus();
                                }else{
                                    disabledButton();
                                    $.request(httpHeader, '新增驱动处理', new Array('buddle.cludove',
                                        'catalog.cludove'), new Array('infoinge',
                                        'processor.setting.process'), new Array('class', 'name',
                                        'type', 'description','classify'),
                                        new Array('class_processor', 'name_processor',
                                            'type_processor', 'description_processor','processor_classify'), 'text',
                                        null, null, 'processorSettingSuccessCallback',
                                        'normalErrorCallback');
                                }
                            }
                        })
                }
            }
        }else {
            if ($('#validate_processor_setting').validationEngine('validate')) {
                if ($('#code_processor').val().length > 0) {
                    $.request(httpHeader, '修改驱动处理', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'processor.setting.process'), new Array('code',
                        'connection_code', 'class', 'name', 'type', 'description','telephone','email','classify'),
                        new Array('code_processor', 'connection_code_processor',
                            'class_processor', 'name_processor',
                            'type_processor', 'description_processor','processor_telephone','processor_email','processor_classify'), 'text',
                        null, null, 'processorSettingSuccessCallback',
                        'normalErrorCallback');
                } else {
                    $.request(httpHeader, '新增驱动处理', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'processor.setting.process'), new Array('class', 'name',
                        'type', 'description','telephone','email','classify'),
                        new Array('class_processor', 'name_processor',
                            'type_processor', 'description_processor','processor_telephone','processor_email','processor_classify'), 'text',
                        null, null, 'processorSettingSuccessCallback',
                        'normalErrorCallback');
                }
            }
        }
    }else{
        alert("驱动标识必须为字母可加.分隔");
        $("#class_processor").focus();
    }
}

$.extend({
    processorSettingSuccessCallback: function (responseText) {
        // 新增成功时刷新载入处理类记录
        flag = 1;
        enableButton();
        onProcessorSetting(responseText);
    }
});

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

/* 开始系统词表设置 */
function onVocabularySetting(record_code) {
    setRemoveSelectRecordButton('block', '系统词表','infoinge', 'vocabulary.remove.process',
        'vocabulary_record_code', 'vocabulary_check_select',
        'vocabulary_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=vocabulary.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入系统词表失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入系统词表成功。", false);

                checkAll('span_check_vocabulary',
                    'span_check_select_vocabulary',
                    'vocabulary_check_select',
                    'check_all_vocabulary');

                locateRecord(record_code, 'vocabulary_check',
                    'vocabulary_select',
                    'showVocabularySetting(\''+record_code+'\')');
            });

    setBasicsSettingIcon("vocabulary");
    $("#removeSelectRecord").css('display','none');
}

// 显示系统词表设置界面
function showVocabularySetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=vocabulary.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示系统词表设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示系统词表设置界面成功。", false);

                $('#vocabulary_identifier').focus();
            });
}

// 点击提交按钮,修改或者新增系统词表
function processVocabularySetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if(validateIdentifier($("#vocabulary_identifier").val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)) {
        if(validateIdentifier($("#vocabulary_keyword").val(), /^[A-Z]+(\_{0,1}[A-Z]+){0,}$/, /^([A-Z]{0,})+((\_{0,1}[A-Z]+){0,})+\_{0,1}$/)) {
            if ($('#validate_vocabulary_setting').validationEngine('validate')) {
                disabledButton();
                if ($('#code_vocabulary').val().length > 0) {
                    $.request(httpHeader, '修改系统词表', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'vocabulary.setting.process'), new Array('code',
                        'connection_code', 'identifier', 'keyword', 'content'),
                        new Array('code_vocabulary', 'connection_code_vocabulary',
                            'vocabulary_identifier', 'vocabulary_keyword',
                            'vocabulary_content'), 'text', null, null,
                        'vocabularySettingSuccessCallback', 'normalErrorCallback');
                } else {
                    $.request(httpHeader, '新增系统词表', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'vocabulary.setting.process'), new Array('identifier',
                        'keyword', 'content'), new Array('vocabulary_identifier',
                        'vocabulary_keyword', 'vocabulary_content'), 'text', null,
                        null, 'vocabularySettingSuccessCallback',
                        'normalErrorCallback');
                }
            }
        }else{
            alert("配置项必须为大写字母可加_分隔");
            $("#vocabulary_keyword").focus();
        }
    }else{
        alert("参数标识必须为字母可加.分隔");
        $("#vocabulary_identifier").focus();
    }
}
$.extend({
    vocabularySettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        onVocabularySetting(responseText);
    }
})

/* 开始信任主机设置 */
function onTrustingHostSetting(record_code) {
    setRemoveSelectRecordButton('block', '信任主机','infoinge',
        'trusting.host.remove.process', 'trusting_host_record_code',
        'trusting_host_check_select', 'trusting_host_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=trusting.host.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入信任主机失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入信任主机成功。", false);

                checkAll('span_check_trusting_host',
                    'span_check_select_trusting_host',
                    'trusting_host_check_select',
                    'check_all_trusting_host');

                locateRecord(record_code, 'trusting_host_check',
                    'trusting_host_select',
                    'showTrustingHostSetting(\''+record_code+'\')');
            });

    setBasicsSettingIcon("trusting_host");
}

// 显示信任主机设置界面
function showTrustingHostSetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=trusting.host.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示信任主机设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示信任主机设置界面成功。", false);

                $('#trusting_host_address').focus();
            });
}

// 点击提交按钮,修改或者新增信任主机
function processTrustingHostSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_trusting_host_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_trusting_host').val().length > 0) {
            $
                .request(httpHeader, '修改信任主机', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'trusting.host.setting.process'), new Array('code',
                    'connection_code', 'address', 'host_name', 'name',
                    'description'), new Array('code_trusting_host',
                    'connection_code_trusting_host',
                    'trusting_host_address', 'trusting_host_host_name',
                    'trusting_host_name', 'trusting_host_description'),
                    'text', null, null,
                    'trustingHostSettingSuccessCallback',
                    'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增信任主机', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'trusting.host.setting.process'), new Array('address',
                'host_name', 'name', 'description'), new Array(
                'trusting_host_address', 'trusting_host_host_name',
                'trusting_host_name', 'trusting_host_description'), 'text',
                null, null, 'trustingHostSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}
$.extend({
    trustingHostSettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        // 执行并将trusting.host.setting.process.xsl文件中获取的code传给responseText
        onTrustingHostSetting(responseText);
    }
})

/* 开始发布主机设置 */
function onReleaseHostSetting(record_code) {
    setRemoveSelectRecordButton('block', '发布主机', 'infoinge','release.host.remove.process',
        'release_host_record_code', 'release_host_check_select',
        'release_host_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=release.host.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入发布主机失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入发布主机成功。", false);

                checkAll('span_check_release_host',
                    'span_check_select_release_host',
                    'release_host_check_select',
                    'check_all_release_host');

                locateRecord(record_code, 'release_host_check',
                    'release_host_select',
                    'showReleaseHostSetting(\''+record_code+'\')');
            });

    setBasicsSettingIcon("release");
}

// 显示发布主机设置界面
function showReleaseHostSetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=release.host.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示发布主机设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示发布主机设置界面成功。", false);

                $('#release_host_address').focus();
            });
}

// 点击提交按钮,修改或者新增发布主机
function processReleaseHostSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_release_host_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_release_host').val().length > 0) {
            $.request(httpHeader, '修改发布主机', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'release.host.setting.process'), new Array('code',
                'connection_code', 'address', 'host_name', 'name',
                'description'), new Array('code_release_host',
                'connection_code_release_host', 'release_host_address',
                'release_host_name', 'release_host_name',
                'release_host_description'), 'text', null, null,
                'releaseHostSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增发布主机', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'release.host.setting.process'), new Array('address',
                'host_name', 'name', 'description'), new Array(
                'release_host_address', 'release_host_name',
                'release_host_name', 'release_host_description'), 'text',
                null, null, 'releaseHostSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    releaseHostSettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        onReleaseHostSetting(responseText);
    }
})

/* 开始界面风格设置 */
function onStyleSetting(record_code) {
    setRemoveSelectRecordButton('block', '界面风格','infoinge', 'style.remove.process',
        'style_record_code', 'style_check_select', 'style_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=style.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入界面风格失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入界面风格成功。", false);

                checkAll('span_check_style', 'span_check_select_style',
                    'style_check_select', 'check_all_style');

                locateRecord(record_code, 'style_check',
                    'style_select', 'showStyleSetting(\''+record_code+'\')');
            });

    setBasicsSettingIcon("style");
}

// 显示界面风格设置界面
function showStyleSetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=style.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示界面风格设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示界面风格设置界面成功。", false);

                $('#style_identifier').focus();
            });
}

// 点击提交按钮,修改或者新增界面风格
function processStyleSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    // console.log("code:"+$('#code_processor').val());
    if ($('#validate_style_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_style').val().length > 0) {
            $.request(httpHeader, '修改界面风格', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'style.setting.process'), new Array('code',
                'connection_code', 'identifier', 'name', 'description'),
                new Array('code_style', 'connection_code_style',
                    'style_identifier', 'style_name',
                    'style_description'), 'text', null, null,
                'styleSettingSuccessCallback', 'normalErrorCallback');
        } else {
            // console.log("新增");
            $.request(httpHeader, '新增界面风格', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'style.setting.process'), new Array('identifier', 'name',
                'description'), new Array('style_identifier', 'style_name',
                'style_description'), 'text', null, null,
                'styleSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}

$.extend({
    styleSettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        onStyleSetting(responseText);
    }
});

/* 开始语言支持设置 */
function onLanguageSetting(record_code) {
    setRemoveSelectRecordButton('block', '语言支持','infoinge', 'language.remove.process',
        'language_record_code', 'language_check_select', 'language_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=language.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入语言支持失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入语言支持成功。", false);

                checkAll('span_check_language',
                    'span_check_select_language',
                    'language_check_select', 'check_all_language');

                locateRecord(record_code, 'language_check',
                    'language_select', 'showLanguageSetting(\''+record_code+'\')');
            });

    setBasicsSettingIcon("language");
}

// 显示语言支持设置界面
function showLanguageSetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=language.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示语言支持设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示语言支持设置界面成功。", false);

                $('#language_name').focus();
            });
}

// 点击提交按钮,修改或者新增语言支持
function processLanguageSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_language_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_language').val().length > 0) {
            $.request(httpHeader, '修改语言支持', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'language.setting.process'), new Array('code',
                'connection_code', 'name', 'encoding', 'mapping'),
                new Array('code_language', 'connection_code_language',
                    'language_name', 'language_encoding',
                    'language_mapping'), 'text', null, null,
                'languageSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增语言支持', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'language.setting.process'), new Array('name', 'encoding',
                'mapping'), new Array('language_name', 'language_encoding',
                'language_mapping'), 'text', null, null,
                'languageSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}

$.extend({
    languageSettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        onLanguageSetting(responseText);
    }
});


/*********** 开始清洗规则设置 ***********/
function onCleanoutSetting(record_code) {
    setRemoveSelectRecordButton('block', '清洗规则','infoinge', 'cleanout.remove.process',
        'code', 'cleanout_check_select', 'cleanout_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=cleanout.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入清洗规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else

                checkAll('span_check_cleanout', 'span_check_select_cleanout',
                    'cleanout_check_select', 'check_all_cleanout');

                locateRecord(record_code, 'cleanout_check',
                    'cleanout_select', 'showCleanoutSetting(\''+record_code+'\')');
            });

    setBasicsSettingIcon("cleanout");
    // $("#removeSelectRecord").css('display','none');
}

// 显示清洗规则设置界面
function showCleanoutSetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=cleanout.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                }
                $('#cleanout_identifier').focus();
            });
    $("#removeSelectRecord").css("display","block");
}

// 点击提交按钮,修改或者新增清洗规则,验证清洗标识是否存在
function processCleanoutSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if(validateIdentifier($("#cleanout_identifier").val(), /^[a-z]+(\.{0,1}[a-z]+){0,}$/, /^([a-z]{0,})+((\.{0,1}[a-z]+){0,})+\.{0,1}$/)){
        if ($('#validate_cleanout_setting').validationEngine('validate')) {
            var class_cleanout=$("#class_cleanout").val();
            if ($('#code_cleanout').val().length > 0) {
                $.request(httpHeader, '修改清洗规则', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'cleanout.setting.process'), new Array('code',
                    'connection_code', 'identifier', 'regulation_name','description'),
                    new Array('code_cleanout', 'connection_code_cleanout',
                        'cleanout_identifier', 'cleanout_name','cleanout_description'), 'text', null, null,
                    'cleanoutSettingSuccessCallback', 'normalErrorCallback');
            } else {
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=infoinge&catalog.cludove=cleanout.setting.validate.process&identifier="
                    + $("#cleanout_identifier").val()
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            console.log(data);
                            hintError("查询目录标识失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else {
                            if (data){
                                alert('清洗规则标识已存在');
                                $("#cleanout_identifier").focus();
                            }else{
                                disabledButton();
                                $.request(httpHeader, '新增清洗规则', new Array('buddle.cludove',
                                    'catalog.cludove','class'), new Array('infoinge',
                                    'cleanout.setting.process',class_cleanout), new Array('identifier', 'regulation_name',
                                    'class','description'), new Array('cleanout_identifier', 'cleanout_name',
                                    'cleanout_class','cleanout_description'), 'text', null, null,
                                    'cleanoutSettingSuccessCallback', 'normalErrorCallback');
                            }
                        }
                    })
            }
        }
    }else{
        alert("标识必须为小写字母可加.分隔");
        $("#cleanout_identifier").focus();
    }
}

$.extend({
    cleanoutSettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        onCleanoutSetting(responseText);
    }
});
/*********** 清洗规则设置结束 ***********/


/*********** 开始验证规则设置 ***********/
function onVerifySetting(record_code) {
    setRemoveSelectRecordButton('block', '验证规则','infoinge', 'verify.remove.process',
        'verify_record_code', 'verify_check_select', 'verify_select');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=verify.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入验证规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入验证规则成功。", false);

                checkAll('span_check_verify',
                    'span_check_select_verify',
                    'verify_check_select', 'check_all_verify');

                locateRecord(record_code, 'verify_check',
                    'verify_select', 'showVerifySetting(\''+record_code+'\')');
                // showVerifySetting('');
            });

    setBasicsSettingIcon("verify");
    $("#removeSelectRecord").css('display','block');
}
// 显示验证规则设置界面
function showVerifySetting(code) {
    $("#basics_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=verify.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示验证规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    verifyClassRegulation();
                    verifyRegulationClass();
                }
                    ;
                // hintMessage("显示验证规则设置界面成功。", false);

                $('#verify_name').focus();
            });
}
function verifyClassRegulation() {
    if($('#class_verify').val()!=''){
        $('#regulation_verify').removeAttr('class','validate[required,maxSize[256]]');
    } else if($('#class_verify').val()=='' && $('#regulation_verify').val()==''){
        $('#class_verify').attr('class','validate[required]');
        $('#regulation_verify').attr('class','validate[required,maxSize[256]]');
    }
}
function verifyRegulationClass() {
    if($('#regulation_verify').val()!=''){
        $('#class_verify').removeAttr('class','validate[required]');
    } else if($('#class_verify').val()=='' && $('#regulation_verify').val()==''){
        $('#class_verify').attr('class','validate[required]');
        $('#regulation_verify').attr('class','validate[required,maxSize[256]]');
    }
}

// 点击提交按钮,修改或者新增验证规则时判断标识是否存在
function processVerifyValidate() {
    if(validateIdentifier($("#identifier_verify").val(), /^[a-z]+(\.{0,1}[a-z]+){0,}$/, /^([a-z]{0,})+((\.{0,1}[a-z]+){0,})+\.{0,1}$/)){
        if ($('#validate_verify_setting').validationEngine('validate')) {
            if ($('#code_verify').val() == "") {
                var identifier_verify = $('#identifier_verify').val();
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=infoinge&catalog.cludove=verify.setting.validate.process&identifier=" + identifier_verify
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("查询验证标识重复失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else if (data != "") {
                            alert('该验证标识已存在！');
                        } else {
                            processVerifySetting()
                        }
                    })
            } else {
                processVerifySetting()
            }
        }
    }else{
        alert("标识必须为小写字母可加.分隔");
        $("#identifier_verify").focus();
    }
}
// 点击提交按钮,修改或者新增验证规则
function processVerifySetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_verify_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_verify').val().length > 0) {
            $.request(httpHeader, '修改验证规则', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'verify.setting.process'), new Array('code',
                'connection_code', 'regulation_name',
                'identifier', 'class','regulation','description'),
                new Array('code_verify', 'connection_code_verify',
                    'regulation_name_verify', 'identifier',
                    'class_verify','regulation_verify','description_verify'), 'text', null, null,
                'verifySettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证规则', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'verify.setting.process'), new Array('regulation_name',
                'identifier', 'class', 'regulation','description'),
                new Array('regulation_name_verify',
                'identifier_verify', 'class_verify',
                'regulation_verify','description_verify'), 'text', null, null,
                'verifySettingSuccessCallback', 'normalErrorCallback');
        }
    }
}
$.extend({
    verifySettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        onVerifySetting(responseText)
    }
});

function verifyCleanoutdisplay(TagName){
    var obj = document.getElementById(TagName);
    if(obj.style.display==""){
        obj.style.display = "none";
    }else{
        obj.style.display = "";
        onCleanoutRegulationSearch(TagName);
        $('.cleanout_setting_display').css('display','none');
    }
}
// 开始验证规则下清洗规则表
function onCleanoutRegulationSearch(verify_code) {
    $("#" + verify_code + "_cleanout_search")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=verify.cleanout.search.view&verify_code=" +verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入验证规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入验证规则成功。", false);
            });
}
// 开始验证规则下清洗规则设置
function onCleanoutRegulationSetting(verify_code,verify_cleanout_code) {
    $("#" + verify_code + "_cleanout_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=verify.cleanout.setting.view&verify_cleanout_code="
            + verify_cleanout_code
            + "&verify_code=" +verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                //input上下按钮
                $(".cleanout_position_spinner").on("click",".icon-input",function(){
                    var val=$(this).parent("div").children("input").val();
                    if($(this).attr("title")=="+"){
                        val++;
                    }else if(val>0){
                        val--;
                    }
                    $("#cleanout_position").val(val);
                })
            });
}
function processVerifyCleanoutValidate(elem,cleanout_verify_code) {
    var verify_code = $("#" + cleanout_verify_code + "_verify_code").val();
    var cleanout_code = $(elem).parent().parent().parent("div").prev().prev().prev().prev().children().children().children("select").val();
    if ($("#" + cleanout_verify_code + "_regulation_setting").validationEngine('validate')) {
        if ($(elem).parent().parent().parent("div").next("#code_verify_cleanout").val() == "") {
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=verify.cleanout.class.validate.process&verify_code="
                + verify_code
                + "&cleanout_code=" + cleanout_code
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("查询清洗规则重复失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "true") {
                        alert('该验证规则已添加此清洗规则！');
                    } else {
                        processVerifyCleanoutSetting(elem,cleanout_code,cleanout_verify_code)
                    }
                })
        } else {
            processVerifyCleanoutSetting(elem,cleanout_code,cleanout_verify_code)
        }
    }
}
// 验证规则下点击提交按钮,修改或者新增清洗规则
function processVerifyCleanoutSetting(elem,cleanout_code,cleanout_verify_code) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#" + cleanout_verify_code + "_regulation_setting").validationEngine('validate')) {
        disabledButton();
        var verify_code = $("#" + cleanout_verify_code + "_verify_code").val();
        var first_content = $(elem).parent().parent().parent("div").prev().prev().prev().children().children().children("input").val();
        var second_content = $(elem).parent().parent().parent("div").prev().children().children().children("input").val();
        var position=$(elem).parent().parent().parent("div").prev().prev().children().children("input").val();
        var code=$(elem).parent().parent().parent("div").next("input").val();
        var connection_code=$(elem).parent().parent().parent("div").next().next("input").val();
        if (code.length > 0) {
            $.request(httpHeader, '修改验证清洗', new Array('buddle.cludove',
                'catalog.cludove','verify_code','code',
                'connection_code','cleanout_code', 'first_content','second_content','position'),
                new Array('infoinge', 'verify.cleanout.setting.process',verify_code,code,connection_code,
                    cleanout_code,first_content,second_content,position),
                new Array(), new Array(), 'text', null, null,
                'verifyCleanoutSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证清洗', new Array('buddle.cludove',
                'catalog.cludove','verify_code','cleanout_code','first_content','second_content','position'),
                new Array('infoinge', 'verify.cleanout.setting.process',
                    verify_code,cleanout_code,first_content,second_content,position), new Array(),
                new Array(), 'text', null, null,
                'verifyCleanoutSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}
$.extend({
    verifyCleanoutSettingSuccessCallback: function (responseText) {
        flag = 1;
        enableButton();
        onCleanoutRegulationSearch(responseText);
        $("#" + responseText + "_cleanout_setting").hide();
    }
});
/*********** 验证规则设置结束 ***********/


/* 开始数据库结构导航 */
function onDBPatternNaviagate(record_code, identifier, host, port, instance,
                              pattern, account, password, driver, template,name) {
    $("#resource_navigation")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.pattern.navigate.view"
            + "&record_code=" + record_code + "&identifier="
            + identifier + "&host=" + host + "&port=" + port
            + "&instance=" + instance + "&pattern=" + pattern
            + "&account=" + account + "&password=" + password
            + "&driver=" + driver + "&template=" + template
            +"&name=" +encodeURI(encodeURI(name))
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航数据库方案失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                }
                else ;
                // console.log(this);
            });

}

function onDBTableNaviagate(container_id, navigater_id, record_code,
                            identifier, host, port, instance, account, password, driver, template,
                            catalog, schema) {

    $("#resource_navigation").off("click");
    $("#" + container_id + "")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.table.navigate.view"
            + "&record_code=" + record_code + "&identifier="
            + identifier + "&host=" + host + "&port=" + port
            + "&instance=" + instance + "&account=" + account
            + "&password=" + password + "&driver=" + driver
            + "&template=" + template + "&catalog=" + catalog
            + "&schema=" + schema
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航数据库库表失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    $('#resource_navigation a').css('color','#fff');
                    $(this).prev().css('color',"#ff633b");
                    $("#" + container_id + "").slideToggle();
                    // $("#"+ resource_navigation +"").off("click");
                    $("#" + navigater_id + "").removeAttr("onclick");
                    $("#" + navigater_id + "").on("click",
           			    function(){
                            $("#" + container_id + "").slideToggle()}
                    );
                    $("#resource_navigation").on('click','a',function () {
                        $('#resource_navigation a').css('color','#fff');
                        $(this).css('color',"#ff633b");
                    })

                }
                // hintMessage("导航数据库库表成功。", false);
            });
}
function onDBColumnSearch(record_code, identifier, host, port, instance,
                          account, password, driver, template, catalog, schema, table_name) {
    $("#table_id").val(host+"_"+port+"_"+instance+"_"+catalog+"_"+schema+"_"+table_name+"_navigater");
    $("#resource_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.search.view"
            + "&record_code=" + record_code + "&identifier="
            + identifier + "&host=" + host + "&port=" + port
            + "&instance=" + instance + "&account=" + account
            + "&password=" + password + "&driver=" + driver
            + "&template=" + template + "&catalog=" + catalog
            + "&schema=" + schema + "&table_name=" + table_name
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据库字段失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    //$("#column_field_label").on('click','tr>td:nth-child(1)',onFieldLabelSetting);
                }
                    ;
                // hintMessage("载入数据库字段成功。", false);
            });
    if (flag == 1){
        flag=0;

    } else {
        onDBColumnSetting(table_name,identifier,record_code);
    }
}



/************ 库表字段验证开始 ************/
//字段验证规则模块的显示
function fieldVerifyDisplay(field_name,resource_name){
    var obj = document.getElementById(field_name);
    if(obj.style.display==""){
        obj.style.display = "none";
    }else{
        obj.style.display = "";
        onFieldRegulationSearch(field_name,resource_name.toUpperCase());
    }
}

// 字段验证规则表查询显示
function onFieldRegulationSearch(field_name,resource_name) {
    $("#" + field_name + "_verify_search")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.search.view&field_name=" +field_name
            + "&resource_name=" + resource_name
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入验证规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
}

// 开始验证规则下验证规则设置
function onFieldVerifyRegulationSetting(elem,field_name,resource_name,verify_code) {
    $("#" + elem + "")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.setting.view&resource_name="
            + resource_name.toUpperCase()
            + "&field_name=" +field_name
            + "&verify_code=" +verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    $("#field_verify_code").val(verify_code);

                    $(".verify_position_spinner").on("click",".icon-input",function(){
                        var val=$(this).parent("div").children("input").val();
                        if($(this).attr("title")=="+"){
                            val++;
                        }else if(val>0){
                            val--;
                        }
                        $(this).parent("div").children("input").val(val);
                    })
                }
            });
}

//判断该字段下验证规则是否存在
function processFieldVerifyValidate(elem) {
    var resource_name=$("#column_field_label").attr("table_name");
    var field_name=$(elem).parent().parent().parent("div").next("#field_name_field_verify").val().toUpperCase();
    var field_verify_code=$(elem).parent().parent().parent("div").prev().prev("div").children().children().children("select").val();
    var code=$(elem).parent().parent().parent("div").next().next("input").val();
    if ($(elem).parents("form").validationEngine('validate')) {
        if(code.length > 0){
            processFieldVerifySetting(elem,field_verify_code,code);
        }else{
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.validate.process&verify_code="
                + field_verify_code
                + "&field_name=" + field_name
                + "&resource_name=" + resource_name
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("查询清洗规则重复失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "true") {
                        alert('该字段已添加此验证规则！');
                    } else {
                        processFieldVerifySetting(elem,field_verify_code,code);
                    }
                });
        }
    }
}

// 验证规则下点击提交按钮,修改或者新增验证规则
function processFieldVerifySetting(elem,field_verify_code,code) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($(elem).parents("form").validationEngine('validate')) {
        disabledButton();
        var resource_name=$("#column_field_label").attr("table_name").toUpperCase();
        var field_name=$(elem).parents("form").parent().parent().parent().attr("id");
        var position=$(elem).parent().parent().parent("div").prev().children().children("input").val();
        if (code.length > 0) {
            $.request(httpHeader, '修改验证规则', new Array('buddle.cludove',
                'catalog.cludove','resource_name', 'field_name','verify_code','position','code'), new Array('infoinge',
                'db.column.verify.setting.process',resource_name, field_name, field_verify_code, position,code),
                new Array('connection_code','identifier'),
                new Array('code_field_verify', 'connection_code_verify_cleanout',
                'column_field_label_identifier'), 'text', null, null,
                'fieldVerifySettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证规则', new Array('buddle.cludove',
                'catalog.cludove','resource_name', 'field_name','verify_code','position'),
                new Array('infoinge', 'db.column.verify.setting.process',resource_name, field_name,field_verify_code, position),
                new Array('identifier'),new Array('column_field_label_identifier'),
                'text', null, null, 'fieldVerifySettingSuccessCallback', 'normalErrorCallback');
        }
    }
    $(elem).parents("form").parent("div").hide();
}

$.extend({
    fieldVerifySettingSuccessCallback: function (responseText) {
        enableButton();
        var obj = eval('(' + responseText + ')');
        flag = 1;
        onFieldRegulationSearch(obj.field_name,obj.resource_name);
    }
});
/************ 库表字段验证结束 ************/



/************ 库表字段验证清洗开始 ************/
//字段验证清洗规则模块的显示
function fieldCleanoutDisplay(elem,field_verify_code){
    var obj = $(elem).parent("tr").next();
    var verify_code=$(elem).parent("tr").attr("verify_code");
    if(obj.attr("style")=="display"){
        $(obj).attr("style","display:none");
    }else{
        $(obj).attr("style","display");
        onFieldCleanoutRegulationSearchValidate(verify_code, field_verify_code);
    }
}

// 字段验证下清洗规则表查询有数据
function onFieldCleanoutRegulationSearchValidate(verify_code, field_verify_code) {
    $(this)
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.cleanout.search.validate.process&field_verify_code=" +field_verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入验证规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if(data != "true"){
                        onFieldCleanoutRegulationDefaultSearch(verify_code, field_verify_code);
                    }else{
                        onFieldCleanoutRegulationSearch(field_verify_code);
                    }
                }
            });
}

// 字段验证下清洗规则表未设置时默认显示
function onFieldCleanoutRegulationDefaultSearch(verify_code, field_verify_code) {
    $("#" + field_verify_code + "_cleanout_search")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.cleanout.search.default.view&verify_code=" + verify_code
            + "&field_verify_code=" + field_verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入清洗规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
}

// 字段验证下清洗规则表查询显示
function onFieldCleanoutRegulationSearch(field_verify_code) {
    $("#" + field_verify_code + "_cleanout_search")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.cleanout.search.view&field_verify_code=" +field_verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入清洗规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
}

// 开始验证规则下清洗规则设置
function onFieldCleanoutRegulationSetting(field_verify_code,elem,field_cleanout_code) {
    var verify_code=$(elem).parents("table").parents("tr").attr("verify_code");
    $("#" + field_verify_code + "_cleanout_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.cleanout.setting.view&verify_code="
            + verify_code + "&field_cleanout_code=" + field_cleanout_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{

                    $(".db_cleanout_position_spinner").on("click",".icon-input",function(){
                        var val=$(this).parent("div").children("input").val();
                        if($(this).attr("title")=="+"){
                            val++;
                        }else if(val>0){
                            val--;
                        }
                        $(this).parent("div").children("input").val(val);
                    });

                    if($("#cleanout_code_field_cleanout").val()==""){
                        $("#first_content_field_cleanout").val("");
                        $("#second_content_field_cleanout").val("");
                    }
                }
            });
}

//验证字段清洗规则是否已存在
function processFieldCleanoutValidate(elem) {
    var field_verify_code = $(elem).parents("form").parent("div").attr("id").substring(0,16);
    var cleanout_code=$(elem).parent().parent().parent("div").prev().prev().prev().prev().children().children().children("select").val();
    var code=$(elem).parent().parent().parent("div").next("input").val();
    if ($(elem).parents("form").validationEngine('validate')) {
        if(code.length>0){
            processFieldCleanoutSetting(elem,field_verify_code,cleanout_code);
        }else{
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=db.column.verify.cleanout.validate.process&field_verify_code="
                + field_verify_code + "&field_cleanout_code=" + $("#field_cleanout_code").val()
                + "&cleanout_code=" + cleanout_code
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("查询清洗规则重复失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "true") {
                        alert('该验证规则已添加此清洗规则！');
                    } else {
                        processFieldCleanoutSetting(elem,field_verify_code,cleanout_code);
                    }
                });
        }
    }
}

// 验证规则下点击提交按钮,修改或者新增清洗规则
function processFieldCleanoutSetting(elem,field_verify_code,cleanout_code) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($(elem).parents("form").validationEngine('validate')) {
        disabledButton();
        var first_content = $(elem).parent().parent().parent("div").prev().prev().prev().children().children().children("input").val();
        var second_content = $(elem).parent().parent().parent("div").prev().prev().children().children().children("input").val();
        var position = $(elem).parent().parent().parent("div").prev().children().children("input").val();
        var code=$(elem).parent().parent().parent("div").next("input").val();
        if (code.length > 0) {
            $.request(httpHeader, '修改验证清洗', new Array('buddle.cludove',
                'catalog.cludove', 'field_verify_code','code',  'cleanout_code', 'first_content', 'second_content','position'),
                new Array('infoinge', 'db.column.verify.cleanout.setting.process', field_verify_code, code,
                    cleanout_code, first_content, second_content,position), new Array(), new Array(), 'text', null, null,
                'fieldCleanoutSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证规则', new Array('buddle.cludove',
                'catalog.cludove', 'field_verify_code','cleanout_code',
                'first_content', 'second_content','position'), new Array('infoinge',
                'db.column.verify.cleanout.setting.process', field_verify_code, cleanout_code,first_content ,second_content,position),
                new Array(), new Array(), 'text', null, null,
                'fieldCleanoutSettingSuccessCallback', 'normalErrorCallback');
        }
    }
    $(elem).parents("form").parent("div").hide();
}

$.extend({
    fieldCleanoutSettingSuccessCallback: function (responseText) {
        enableButton();
        flag = 1;
        onFieldCleanoutRegulationSearch(responseText);
    }
});
/************ 库表字段验证清洗结束 ************/



function onFieldLabelSetting(elem) {
    $("#resource_setting_right")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.field.setting.view&resource_name="
            +$("#column_field_label_resource_name").val()
            +"&s_identifier="+$("#column_field_label_identifier").val()
            +"&field_name="+$(elem).attr('column_field_name')
            +"&connection_code="+$("#column_field_label_connection_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据库字段失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据库字段成功。", false);
            });
}

function processFieldLabelSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_field_label_setting').validationEngine('validate')) {
        if ($('#code_field_label').val().length > 0) {
            $.request(httpHeader, '修改字段标注', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'db.field.setting.process'), new Array('code',
                'connection_code', 'field_label'),
                new Array('code_field_label', 'connection_code_field_label',
                    'field_label_field_label'), 'text', null, null,
                "fieldLabelSettingSuccessCallback", 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增字段标注', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'db.field.setting.process'), new Array('connection_code', 'field_label', 'field_name','resource_name','identifier'),
                new Array('connection_code_field_label','field_label_field_label','field_label_field_name',
                    'field_label_resource_name','field_label_identifier'), 'text', null, null,
                "fieldLabelSettingSuccessCallback", 'normalErrorCallback');
        }
    }
}

$.extend({
    fieldLabelSettingSuccessCallback: function (responseText) {
        flag = 1;
        $("#code_field_label").val(responseText);
        $("#"+$("#table_id").val()+"").trigger("click");
        $("#choice").click();
    }
});

function onDBColumnSetting(table_name,identifier,connection_code) {
    $("#resource_setting_right")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.column.setting.view&resource_name="
            +table_name
            +"&identifier="+identifier
            +"&connection_code="+connection_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据库字段失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据库字段成功。", false);
            });
}

//开始资源标注设置
function resourceLabelSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_resource_label_setting').validationEngine('validate')) {
        if ($('#code_resource_label').val().length > 0) {
            $.request(httpHeader, '修改资源标注', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'db.column.setting.process'), new Array('code',
                'connection_code', 'resource_label'),
                new Array('code_resource_label', 'connection_code_resource_label',
                    'resource_label_resource_label'), 'text', null, null,
                "resourceLabelSettingSuccessCallback", 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增资源标注', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'db.column.setting.process'), new Array('connection_code', 'resource_label','resource_name','identifier'),
                new Array('connection_code_resource_label','resource_label_resource_label',
                    'resource_label_resource_name','resource_label_identifier'), 'text', null, null,
                "resourceLabelSettingSuccessCallback", 'normalErrorCallback');
        }
    }
}

$.extend({
    resourceLabelSettingSuccessCallback: function (responseText) {
        flag = 1;
        $("#code_resource_label").val(responseText);
    }
});

//跳转依赖关系界面
function onDbTableEdit(s_resource_name,s_identifier) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=db.table.edit.view"
        + "&s_resource_name="+s_resource_name.toUpperCase()+"&s_identifier="+s_identifier; //转向网页的地址;
    var name = "编辑功能返回"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.85; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

//开始绘制依赖关系图表
var db = {
    myDiagram:null,
    nodeData:null,
    fieldTemplate:null,
    g:null,
    remove_resource_name:null,
    remove_identifier:null,
    remove_s_field:null,
    remove_r_field:null,
    init:function () {
        db.g = go.GraphObject.make;  // for conciseness in defining templates
        db.myDiagram =
            db.g(go.Diagram, "myDiagramDiv",
                {
                    initialContentAlignment: go.Spot.Center,
                    validCycle: go.Diagram.CycleNotDirected,  // don't allow loops
                    "LinkRelinked": function (data) {
                        var  r_resource_name;
                        var r_identifier;
                        for (var i = 0;i <= db.nodeData.length-1;i++){
                            if (db.nodeData[i].key == data.subject.data.to){
                                r_resource_name = db.nodeData[i].r_resource_name;
                                r_identifier = db.nodeData[i].r_identifier;
                                break;
                            }
                        }
                        db.onDblink(r_resource_name,r_identifier,data.subject.data.fromPort,data.subject.data.toPort,db.remove_resource_name,db.remove_identifier,db.remove_s_field,db.remove_r_field);
                        db.remove_s_field = data.subject.data.fromPort;
                        db.remove_r_field = data.subject.data.toPort;
                        for (var i = 0;i <= db.nodeData.length-1;i++){
                            if (db.nodeData[i].key == data.subject.data.to){
                                db.remove_resource_name = db.nodeData[i].r_resource_name;
                                db.remove_identifier = db.nodeData[i].r_identifier;
                                break;
                            }
                        }
                    },
                    "LinkDrawn":function (data) {
                        var  r_resource_name;
                        var r_identifier;
                        for (var i = 0;i <= db.nodeData.length-1;i++){
                            if (db.nodeData[i].key == data.subject.data.to){
                                r_resource_name = db.nodeData[i].r_resource_name;
                                db.remove_resource_name = db.nodeData[i].r_resource_name;
                                r_identifier = db.nodeData[i].r_identifier;
                                db.remove_identifier = db.nodeData[i].r_identifier
                                break;
                            }
                        }

                        db.remove_s_field = data.subject.data.fromPort;
                        db.remove_r_field = data.subject.data.toPort;
                        db.onDblink(r_resource_name,r_identifier,data.subject.data.fromPort,data.subject.data.toPort,'','','','');
                    },
                    "SelectionDeleted":function (obj,a) {
                        //设置允许删除
                      db.onDbRemovelink($('#s_resource_name').val(),$('#s_identifier').val(),db.remove_s_field,db.remove_identifier,db.remove_resource_name,db.remove_r_field)
                    },
                    "undoManager.isEnabled": true
                });
        db.fieldTemplate =
            db.g(go.Panel, "TableRow",  // this Panel is a row in the containing Table
                new go.Binding("portId", "name"),  // this Panel is a "port"
                {
                    background: "transparent",  // so this port's background can be picked by the mouse
                    fromSpot: go.Spot.Right,  // links only go from the right side to the left side
                    toSpot: go.Spot.Left,
                    // allow drawing links from or to this port:
                    fromLinkable: true, toLinkable: true
                },
                db.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 1, font: "bold 13px sans-serif",
                        alignment: go.Spot.Left,
                        // and disallow drawing links from or to this text:
                        fromLinkable: false, toLinkable: false },
                    new go.Binding("text", "name")),
                db.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 2, font: "13px sans-serif", alignment: go.Spot.Left },
                    new go.Binding("text", "info"))
            );
        // This template represents a whole "record".
        db.myDiagram.nodeTemplate =
            db.g(go.Node, "Auto",
                {"click":function (a,data) {
                    var   r_resource_name = data.data.r_resource_name;
                    var   r_identifier = data.data.r_identifier;
                    db.showDbSetting(r_resource_name,r_identifier);
                }},
                { movable: false,
                    copyable: false,
                    deletable: false },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // this rectangular shape surrounds the content of the node
                db.g(go.Shape,
                    { fill: "#EEEEEE" }),
                // the content consists of a header and a list of items
                db.g(go.Panel, "Vertical",
                    // this is the header for the whole node
                    db.g(go.Panel, "Auto",
                        { stretch: go.GraphObject.Horizontal },  // as wide as the whole node
                        db.g(go.Shape,
                            { fill: "#1570A6", stroke: null }),
                        db.g(go.TextBlock,
                            {
                                alignment: go.Spot.Center,
                                margin: 3,
                                stroke: "white",
                                textAlign: "center",
                                font: "bold 16px sans-serif"
                            },
                            new go.Binding("text", "key"))),
                    // this Panel holds a Panel for each item object in the itemArray;
                    // each item Panel is defined by the itemTemplate to be a TableRow in this Table
                    db.g(go.Panel, "Table",
                        {
                            padding: 2,
                            minSize: new go.Size(100, 10),
                            defaultStretch: go.GraphObject.Horizontal,
                            itemTemplate: db.fieldTemplate
                        },
                        new go.Binding("itemArray", "fields")
                    )  // end Table Panel of items
                )  // end Vertical Panel
            );  // end Node

        db.myDiagram.linkTemplate =
            db.g(go.Link,
                {"click":function (a,obj) {
                    db.remove_s_field = obj.data.fromPort;
                    db.remove_r_field = obj.data.toPort;
                    for (var i = 0;i <= db.nodeData.length-1;i++){
                        if (db.nodeData[i].key == obj.data.to){
                            db.remove_resource_name = db.nodeData[i].r_resource_name;
                            db.remove_identifier = db.nodeData[i].r_identifier;
                            break;
                        }
                    }
                }},
                {
                    relinkableFrom: true, relinkableTo: true, // let user reconnect links
                    toShortLength: 4,  fromShortLength: 2
                },
                db.g(go.Shape, { strokeWidth: 1.5 }),
                db.g(go.Shape, { toArrow: "Standard", stroke: null })
            );
        // db.Drawing();

        db.showDbSetting('','');
        db.onDbdata();
        function  isValid(a,b,c,d) {
            return a.data.key == $("#s_identifier").val()+"."+$("#s_resource_name").val()
        }

        db.myDiagram.toolManager.linkingTool.linkValidation =isValid;

        db.myDiagram.toolManager.relinkingTool.linkValidation =isValid;
    },
    showDbSetting:function (r_resource_name,r_identifier) {
        $("#db_data_setting").load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.table.data.setting.view"
            +"&s_resource_name=" + $("#s_resource_name").val()
            +"&s_identifier=" + $("#s_identifier").val()
            +"&r_resource_name=" + r_resource_name
            +"&r_identifier=" + r_identifier
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                $('#data_name').focus();
                onDataConnectionIdChange();
                $('#data_position').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });

                $('#data_row_number').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
            }
        )
    },
    onDbdata:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge',
            'db.table.data.search.view'), new Array('s_resource_name','s_identifier'), new Array('s_resource_name','s_identifier'), 'text', null, null,
            'showDbDataSettingSuccessCallback', 'normalErrorCallback');
    },
    onDblink:function (r_resource_name,r_identifier,s_field,r_field,remove_resource_name,remove_identifier,remove_s_field,remove_r_field) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove','r_resource_name','r_identifier','s_field',
            'r_field','remove_resource_name','remove_identifier','remove_s_field','remove_r_field'), new Array('infoinge',
            'db.table.data.link.process',r_resource_name,r_identifier,s_field,r_field,remove_resource_name,remove_identifier,remove_s_field,remove_r_field),
            new Array('s_resource_name','s_identifier'),
            new Array('s_resource_name','s_identifier'), 'text', null, null,
            null, 'normalErrorCallback');
    },
    onDbRemovelink:function (s_resource_name,s_identifier,s_field,r_identifier,r_resource_name,r_field) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove','s_resource_name','s_identifier','s_field',
            'r_identifier','r_resource_name','r_field'), new Array('infoinge',
            'db.table.data.link.remove.process',s_resource_name,s_identifier,s_field,r_identifier,r_resource_name,r_field),
            new Array(),
            new Array(), 'text', null, null,
            null, 'normalErrorCallback');
    },
    Drawing:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var data=obj[0];
        var styleHeight = 0;
        var height = 0;
        for (var i = 0;i <= data.length-1;i++){
            data[i].loc = new Array();
            if (i == 0){
                data[i].loc = "0 0";
                styleHeight = (data[i].fields.length)* 18+150;
            }else {

                data[i].loc = "650" + " " + height ;
                height+=(data[i].fields.length)* 18+150;
            }
        }
        if (height > styleHeight)
            styleHeight = height;
        db.nodeData = data;
        for (var i = 0; i <= data.length-1;i++) {
            for (var r = 0; r <= data[i].fields.length - 1; r++) {
                var length = data[i].fields[r].info.length;
                data[i].fields[r].info ="[" + length +"] " + data[i].fields[r].info.substring(0,16);
            }
        }
        $("#myDiagramDiv").css('height',styleHeight+50+"px");
        db.myDiagram.model =
            db.g(go.GraphLinksModel,
                {
                    linkFromPortIdProperty: "fromPort",
                    linkToPortIdProperty: "toPort",
                    nodeDataArray: data,
                    linkDataArray:obj[1]
                });
    }
};

$.extend({
    showDbDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        db.Drawing(responseText);

    }
});


function processDbTableSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_setting').validationEngine('validate')) {
        if ($("#connection_id_by_db").val() != $("#r_identifier").val() || $("#resource_name_by_db").val() != $("#r_resource_name").val())
            $.request(httpHeader, '新增库表信息', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'db.table.data.setting.process'), new Array('connection_code', 's_identifier',
                'r_identifier', 's_resource_name', 'r_resource_name','remove_identifier','remove_resource_name'), new Array(
                'connection_code', 's_identifier', 'connection_id_by_db',
                's_resource_name', 'resource_name_by_db','r_identifier','r_resource_name'), 'text', null, null,
                'dbTableSettingSuccessCallback', 'normalErrorCallback');

    }
}
$.extend({
    dbTableSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        db.onDbdata();

    }
});


function processDbTableRemove() {
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove'), new Array('infoinge',
        'db.table.data.remove.process'), new Array('s_resource_name','s_identifier','r_resource_name','r_identifier'), new Array('s_resource_name','s_identifier','resource_name_by_db','connection_id_by_db'), 'text', null, null,
        'removeDbDataSettingSuccessCallback', 'normalErrorCallback');
}

$.extend({
    removeDbDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        $("#r_resource_name").val("");
        $("#r_identifier").val("");
        $(".set_data_name").html("库表关联-新增");
        $(".span_data_edit").hide();
        $('#connection_code').val('');$('#r_identifier').val('');
        $('#r_resource_name').val(''); $('#data_name').focus();  $('input:radio[name="data_select"]').attr('checked',false);
        // 刷新页面
        db.onDbdata();

    }
});

//跳转数据管理界面
function onAdministration(s_resource_name,s_identifier) {
    var urls = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=db.table.data.edit.view"
        + "&resource_name="+s_resource_name.toUpperCase()+"&connection_id="+s_identifier; //转向网页的地址;
    var names = "数据管理"; //网页名称，可为空;
    var Widths = window.screen.width * 0.85; //弹出窗口的宽度;
    var Heights = window.screen.height * 0.85; //弹出窗口的高度;
    var Tops = (window.screen.height - 60 - Heights) / 2; //获得窗口的垂直位置;
    var Lefts = (window.screen.width - 20 - Widths) / 2; //获得窗口的水平位置;

     window.open(urls,names,'height=' + Heights + ',,innerHeight=' + Heights + ',width=' + Widths + ',innerWidth='
        + Widths + ',top=' + Tops + ',left=' + Lefts
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}
var datas = {
    inits:function () {
        datas.ManagementSetting();
        datas.ManagementSearch();
    },
    ManagementSetting:function () {
        $("#db_table_data_setting").load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.table.data.edit.setting.view"
            +"&resource_name=" + $("#c_resource_name").val()
            +"&connection_id=" + $("#c_connection_id").val()
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    console.log(data);
                    hintError("失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            }
        )
    },
    ManagementSearch:function () {
        
        $("#db_table_data_search").load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=db.table.data.edit.search.view"
            +"&resource_name=" + $("#c_resource_name").val()
            +"&connection_id=" + $("#c_connection_id").val()
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    console.log(data);
                    hintError("失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#db_table_data_search").on('click','table',function (e) {
                        if (e.target.tagName.toLocaleLowerCase() == 'td') {
                            $('#search_td').val($(e.target).text());
                            var search_th = $('#db_table_data_search table th:nth-child' + '('+ $(e.target).attr('position') +')').text();
                            $('#search_th').val(search_th);
                            datas.ManagementFieldSearch();
                        }
                    })
                }
                    ;
            }
        )
    },
    ManagementFieldSearch:function () {
        if ($('#search_th').val().length == 0 && $('#search_td').val().length > 0) {
            alert('请选择查询字段');
        }else if ($('#search_td').val().length == 0 && $('#search_th').val().length > 0) {
            alert('请输入查询内容');
        } else {
            var link = '';
            if ($('#search_th').val().length > 0 && $('#search_td').val().length > 0) {
                var name = $("#c_connection_id").val() + "." + $("#c_resource_name").val() + "." + $('#search_th').val();
                var search_key = $('#search_td').val();
                link = "&" + name + "=" + encodeURI(encodeURI(search_key));
            }
            $("#db_table_data_field_search").load(
                httpHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=db.table.data.edit.field.search.view"
                +"&resource_name=" + $("#c_resource_name").val()
                +"&connection_id=" + $("#c_connection_id").val()
                +"&pageNumber.cludove=" + $("#data_edit_label_page_number").val()
                +"&recordNumber.cludove=" + $("#data_edit_label_record_number").val()
                + link
                + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        console.log(data);
                        hintError("失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        ;
                }
            )
        }
    }
}

//------导入excel
function ImportExcel(style_name, language_name, import_file_id, excel_name) {
    var resource_name=$("#validate_resource_name").val().toLowerCase( );
    var connection_id=$("#validate_identifier").val();
    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "infoinge",
            "catalog.cludove": "excel.table.import.process",
            "style_name": style_name,
            "language_name": language_name,
            "connection_id": connection_id,
            "resource_name": resource_name
        },
        secureuri: false,
        fileElementId: import_file_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0){
                alert("上传" + excel_name + "成功！");
                window.location.reload();
            }
            else {
                try {
                    console.log(data);
                    var obj = eval('(' + data+ ')');
                    alert(obj[0].record_content)
                } catch (e) {
                    alert("上传" + excel_name + "失败：" + data + "！");
                }
            }
        },
        error: function (data, status, e) {
            try {
                console.log("error:"+data);
                var obj = eval('(' + data+ ')');
                alert(obj[0].record_content)
            } catch (e) {
                alert("上传" + resource_name + "失败：" + data + "！");
            }
        }
    });
    return true;
}


//------导出XML
function onDataPreview(resource_name,connection_id) {
    var urlxml = httpHeader
        + "s?buddle.cludove=infoinge&catalog.cludove=db.data.preview"
        + "&resource_name="+resource_name.toUpperCase()+"&connection_id="+connection_id; //转向网页的地址;
    var name = "导出XML"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.70; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 80- iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - iWidth) / 2; //获得窗口的水平位置;

    window.open(urlxml, name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function onDataShowsearch() {
    $("#data_xml").load(
        httpHeader
        + "s?buddle.cludove=infoinge&catalog.cludove=db.data.preview.search"
        +"&resource_name=" + $("#x_resource_name").val()
        +"&connection_id=" + $("#x_connection_id").val()
        + "&t="
        + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                console.log(data);
                alert("导出xml失败！"+data);
            } else
                ;
        }
    )
}
//--------导入XML
function ImportXml(style_name, language_name, xml_import_input, xml_name) {

    var resource_name=$("#validate_resource_name").val().toLowerCase( );
    var connection_id=$("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "infoinge",
            "catalog.cludove": "xml.import.process",
            "style_name": style_name,
            "language_name": language_name,
            "connection_id": connection_id,
            "resource_name": resource_name
        },
        secureuri: false,
        fileElementId: xml_import_input,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0){
                console.log("上传" + xml_name + "成功！");
                window.location.reload();
            }
            else {
                try {
                    console.log(data);
                    var obj = eval('(' + data+ ')');
                    alert(obj[0].record_content)
                } catch (e) {
                    alert("上传" + xml_name + "失败：" + data + "！");
                }
            }
        },
        error: function (data, status, e) {
            try {
                console.log(data);
                var obj = eval('(' + data+ ')');
                alert(obj[0].record_content)
            } catch (e) {
                alert("上传" + excel_name + "失败：" + data + "！");
            }
        }
    });
    return true;
}
//  搜索日志的时间
function CurentTime() {
    var now = new Date();
    var year = now.getFullYear();       //年
    var month = now.getMonth() + 1;     //月
    var day = now.getDate();            //日
    var hh = now.getHours();            //时
    var mm = now.getMinutes();          //分
    // var ss = now.getSeconds();       //秒

    $('#year_search').val(year);
    $('#month_search').val(month);
    $('#day_search').val(day);
    $('#hour_search').val(hh);
    $('#minute_search').val(mm);
    // $('#year_search').val($("#record_year").val());
    // $('#month_search').val($("#record_month").val());
    // $('#day_search').val($("#record_day").val());
    // $('#hour_search').val($("#record_hour").val());
    // $('#minute_search').val($("#record_minute").val());

    $('#year_search').spinner({
        max: year,
        min: 2008,
        step: 1
    });
    $('#month_search').spinner({
        max: 12,
        min: 0,
        step: 1
    });
    $('#day_search').spinner({
        max: 31,
        min: 0,
        step: 1
    });
    $('#hour_search').spinner({
        max: 23,
        min: 0,
        step: 1
    });
    $('#minute_search').spinner({
        max: 59,
        min: 0,
        step: 1
    });

}


/* 开始日志导航 */
function onJournalSearch() {
     CurentTime();
    $('#record_year').val($("#year_search").val());
    $('#record_month').val($("#month_search").val());
    $('#record_day').val($("#day_search").val());
    $('#record_hour').val($("#hour_search").val());
    $('#record_minute').val($("#minute_search").val());

    if ($("#journal_navigate_type").val() == -1){
        $("#record_minute_container").hide();
        $("#record_minute_search").hide();
    }
    else{
        $("#record_minute_container").show();
        $("#record_minute_search").show();
    }
    $("#monitoring_log_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=journal.search.view"
            + "&journal_type="
            + $("#journal_navigate_type").val()
            + "&record_host=" + $("#console_hinge_host").val()
            + "&record_year=" + $("#record_year").val()
            + "&record_month=" + $("#record_month").val()
            + "&record_day=" + $("#record_day").val()
            + "&record_hour=" + $("#record_hour").val()
            + "&record_minute=" + $("#record_minute").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入系统日志失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    // onMonitoringLog();
                    ;


                // hintMessage("载入系统日志成功。", false);
            });
}
//=查询==
function onJournalSearchs() {
    
     $('#record_year').val($("#year_search").val());
     $('#record_month').val($("#month_search").val());
    $('#record_day').val($("#day_search").val());
    $('#record_hour').val($("#hour_search").val());
    $('#record_minute').val($("#minute_search").val());

    if ($("#journal_navigate_type").val() == -1){
        $("#record_minute_container").hide();
        $("#record_minute_search").hide();
    }
    else{
        $("#record_minute_container").show();
        $("#record_minute_search").show();
    }
    $("#monitoring_log_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=journal.search.view"
            + "&journal_type="
            + $("#journal_navigate_type").val()
            + "&record_host=" + $("#console_hinge_host").val()
            + "&record_year=" + $("#year_search").val()
            + "&record_month=" + $("#month_search").val()
            + "&record_day=" + $("#day_search").val()
            + "&record_hour=" + $("#hour_search").val()
            + "&record_minute=" + $("#minute_search").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入系统日志失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    // onMonitoringLog();
                    ;

                // hintMessage("载入系统日志成功。", false);
            });
}


function onJournalShow(record_host, record_year, record_month, record_day, record_hour, record_minute, request_id, buddle_id, catalog_id, position, process_index) {
    if (((position != '') ||(position !=null))
        && ((process_index != '') || (process_index !=null))){
        document.location.href = httpHeader + "s?buddle.cludove=infoinge&catalog.cludove=journal.show.view&record_host="
            + record_host + "&record_year=" + record_year + "&record_month=" + record_month + "&record_day=" + record_day
            + "&record_hour=" + record_hour + "&record_minute=" + record_minute + "&request_id=" + request_id + "&buddle_id=" + buddle_id
            + "&catalog_id=" + catalog_id +"&position=" +position+ "&process_index=" +process_index+ "&t=" + new Date().getTime();
    } else if (process_index!=''|| (process_index !=null)){
        document.location.href = httpHeader + "s?buddle.cludove=infoinge&catalog.cludove=journal.show.view&record_host="
            + record_host + "&record_year=" + record_year + "&record_month=" + record_month + "&record_day=" + record_day
            + "&record_hour=" + record_hour + "&record_minute=" + record_minute + "&request_id=" + request_id + "&buddle_id=" + buddle_id
            + "&catalog_id=" + catalog_id + "&process_index=" +process_index+ "&t=" + new Date().getTime();
    } else if (position != '' || (position != null)){
        document.location.href = httpHeader + "s?buddle.cludove=infoinge&catalog.cludove=journal.show.view&record_host="
            + record_host + "&record_year=" + record_year + "&record_month=" + record_month + "&record_day=" + record_day
            + "&record_hour=" + record_hour + "&record_minute=" + record_minute + "&request_id=" + request_id + "&buddle_id=" + buddle_id
            + "&catalog_id=" + catalog_id + "&position=" +position+ "&t=" + new Date().getTime();
    }else {
        document.location.href = httpHeader + "s?buddle.cludove=infoinge&catalog.cludove=journal.show.view&record_host="
            + record_host + "&record_year=" + record_year + "&record_month=" + record_month + "&record_day=" + record_day
            + "&record_hour=" + record_hour + "&record_minute=" + record_minute + "&request_id=" + request_id + "&buddle_id=" + buddle_id
            + "&catalog_id=" + catalog_id + "&t=" + new Date().getTime();
    }
}



/***开始作业管理配置***/
function onJobNavigate(record_code) {
    $("#job_navigation")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=job.infoinge.navigate.view"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航功能目录成功。", false);

                onJobSetting(record_code);

            });
}

function onJobSetting(record_code) {
    setRemoveSelectRecordButton('block', '作业','infoinge', 'job.infoinge.remove.process',
        'infoinge_job_record_code', 'infoinge_job_check_select', 'infoinge_job_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=job.infoinge.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入应用失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入应用成功。", false);

                checkAll('span_check_infoinge_job',
                    'span_check_select_infoinge_job',
                    'infoinge_job_check_select', 'check_all_infoinge_job');

                locateRecord(record_code, 'infoinge_job_check',
                    'infoinge_job_select', 'showJobSetting(\''+ record_code +'\')');

                // showJobSetting(record_code);
            });

}

//手工作业执行
function onJobExecute(code,name,frequentness) {
    onJobJournalExecuteEdit(code,frequentness,'execution')
    $.request(httpHeader, '手工作业执行', new Array('buddle.cludove', 'catalog.cludove','code','name'), new Array('infoinge',
        'job.infoinge.execute.process',code,name), new Array(), new Array(), 'text', null, null,
        null, 'normalErrorCallback');
}


function showJobSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=job.infoinge.setting.view&code="
            + code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示应用设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if($("#infoinge_job_frequentness").val() == 'month'){
                        $("#infoinge_job_frequentness_year_true").attr('disabled','disabled')
                    }else if($("#infoinge_job_frequentness").val() == 'day') {
                        $("#infoinge_job_frequentness_year_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_month_true").attr('disabled', 'disabled')
                    }else if($("#infoinge_job_frequentness").val() == 'hour') {
                        $("#infoinge_job_frequentness_year_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_month_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_day_true").attr('disabled', 'disabled')
                    }else if($("#infoinge_job_frequentness").val() == 'minute') {
                        $("#infoinge_job_frequentness_year_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_month_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_day_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_hour_true").attr('disabled', 'disabled')
                    }else if($("#infoinge_job_frequentness").val() == 'second') {
                        $("#infoinge_job_frequentness_year_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_month_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_day_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_hour_true").attr('disabled', 'disabled');
                        $("#infoinge_job_frequentness_minute_true").attr('disabled', 'disabled')
                    }
                }
                    ;
                // hintMessage("显示应用设置界面成功。", false);

                $('#infoinge_job_name').focus();
                
            });
}

function onJobdate() {
    var timer={
        elem: '#infoinge_job_join_time',
        format: 'YYYY-MM-DD hh:mm:ss',
        istime: true
    };
    laydate(timer);
}

function processJobSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_infoinge_job_setting').validationEngine('validate')) {
        if  ($("#infoinge_job_run_start_minute").val() != '' && $("#infoinge_job_run_start_hour").val() == '') {
            alert("开始时间无效！");
        } else if ($("#infoinge_job_run_finish_minute").val() != '' && $("#infoinge_job_run_finish_hour").val() == '') {
            alert("结束时间无效！");
        } else if($("#infoinge_job_run_start_hour").val() != '' && $("#infoinge_job_run_finish_hour").val() == '') {
            alert("请输入结束时间！");
        } else if ($("#infoinge_job_run_finish_hour").val() != '' && $("#infoinge_job_run_start_hour").val() == '') {
            alert("请输入开始时间！");
        } else if ($("#infoinge_job_run_finish_hour").val() == '' || $("#infoinge_job_run_start_hour").val() == '') {
            alert("请填写时间！");
        } else {
            if ($("#infoinge_job_run_start_hour").val() != '' && $("#infoinge_job_run_start_minute").val() == '')
                $("#infoinge_job_run_start_minute").val('00');
            if ($("#infoinge_job_run_finish_hour").val() != '' && $("#infoinge_job_run_finish_minute").val() == '')
                $("#infoinge_job_run_finish_minute").val('00');
            var start_time = parseFloat($("#infoinge_job_run_start_hour").val()) * 3600 + parseFloat($("#infoinge_job_run_start_minute").val()) * 60;
            var finish_time = parseFloat($("#infoinge_job_run_finish_hour").val()) * 3600 + parseFloat($("#infoinge_job_run_finish_minute").val()) * 60;
            if (($("#infoinge_job_run_start_hour").val() != '' && $("#infoinge_job_run_finish_hour").val() != '') && (start_time > finish_time)) {
                alert("结束时间必须大于开始时间")
            } else {
                disabledButton();
                if ($('#code_infoinge_job').val().length > 0) {
                    $.request(httpHeader, '修改讯枢作业', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'job.infoinge.setting.process'), new Array('code',
                        'connection_code', 'frequentness', 'name', 'interval_time',
                        'run_start_hour', 'run_start_minute', 'run_finish_hour', 'run_finish_minute', 'description', 'is_running', 'join_time'), new Array('code_infoinge_job',
                        'connection_code_infoinge_job', 'infoinge_job_frequentness',
                        'infoinge_job_name', 'infoinge_job_interval_time', 'infoinge_job_run_start_hour',
                        'infoinge_job_run_start_minute', 'infoinge_job_run_finish_hour',
                        'infoinge_job_run_finish_minute', 'infoinge_job_description', 'infoinge_job_is_running', 'infoinge_job_join_time'), 'text', null, null,
                        'jobSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    $.request(httpHeader, '新增讯枢作业', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'job.infoinge.setting.process'), new Array('frequentness', 'name', 'interval_time',
                        'run_start_hour', 'run_start_minute', 'run_finish_hour', 'run_finish_minute', 'description', 'is_running', 'join_time'), new Array(
                        'infoinge_job_frequentness',
                        'infoinge_job_name', 'infoinge_job_interval_time', 'infoinge_job_run_start_hour',
                        'infoinge_job_run_start_minute', 'infoinge_job_run_finish_hour',
                        'infoinge_job_run_finish_minute', 'infoinge_job_description', 'infoinge_job_is_running', 'infoinge_job_join_time'), 'text', null, null,
                        'jobSettingSuccessCallback', 'normalErrorCallback');
                }
            }
        }
    }
}


$.extend({
    jobSettingSuccessCallback: function (responseText) {
        flag = 1;
        // enableButton();
        // 刷新页面
        onJobNavigate(responseText);

        // setTimeout(function() {
        //     onBuddleManage(responseText);
        // }, 1000);
    }
});

function onJobEdit(code) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=job.catalog.edit.view"
        + "&code="+code; //转向网页的地址;
    var name = "编辑功能返回"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.85; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function onJobCatalogSetting(code) {
    $("#job_catalog_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=job.catalog.setting.view"
            + "&job_catalog_code=" +code
            +"&job_code=" +$("#code_job").val()
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航应用失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航应用成功。", false);
                $('#job_catalog_position').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
                onJobCatalogBuddleChange();

            });
}
function onJobCatalogBuddleChange() {
    $("#job_catalog_catalog_id")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=job.catalog.catalog.search.view"
            + "&buddle_id=" + $("#job_catalog_buddle_id").val()
            + "&catalog_id=" + $("#job_catalog_catalog_id_job").val()
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航应用失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航应用成功。", false);
                });
}


function processJobCatalogSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    var buddle_name = $("#job_catalog_buddle_id option:selected").text();
    var catalog_name = $("#job_catalog_catalog_id option:selected").text();
    var catalog_code = $("#job_catalog_catalog_id option:selected").attr('data-code');
    if ($('#validate_job_catalog_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_job_catalog').val().length > 0) {
            $.request(httpHeader, '修改讯枢作业', new Array('buddle.cludove',
                'catalog.cludove','buddle_name','catalog_name','catalog_code'), new Array('infoinge',
                'job.catalog.setting.process',buddle_name,catalog_name,catalog_code), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'position','job_code'), new Array('code_job_catalog',
                'connection_code_job_catalog', 'job_catalog_buddle_id',
                'job_catalog_catalog_id', 'job_catalog_position','code_job'), 'text', null, null,
                'jobCatalogSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增讯枢作业', new Array('buddle.cludove',
                'catalog.cludove','buddle_name','catalog_name','catalog_code'), new Array('infoinge',
                'job.catalog.setting.process',buddle_name,catalog_name,catalog_code), new Array( 'buddle_id', 'catalog_id', 'position','job_code'), new Array(
                'job_catalog_buddle_id',
                'job_catalog_catalog_id', 'job_catalog_position','code_job'), 'text', null, null,
                'jobCatalogSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}
$.extend({
    jobCatalogSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        job.onJobData();
        // enableButton()
        onJobCatalogSetting(responseText);
        // setTimeout(function() {
        //     onBuddleManage(responseText);
        // }, 1000);
    }
});

function removeJobCatalogSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    $.request(httpHeader, '修改讯枢作业', new Array('buddle.cludove', 'catalog.cludove'), new Array('infoinge',
        'job.catalog.remove.process'), new Array('code'), new Array('code_job_catalog'), 'text', null, null,
        'jobCatalogRemoveSuccessCallback', 'normalErrorCallback');
}

$.extend({
    jobCatalogRemoveSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        job.onJobData();

       onJobCatalogSetting();

    }
});

var job={
    t:null,
    myDiagram:null,
    init:function () {
        onJobCatalogSetting('');
        var g = go.GraphObject.make;  // for conciseness in defining templates
        job.t=g;
        var yellowgrad = g(go.Brush, "Linear", { 0: "rgb(254, 201, 0)", 1: "rgb(254, 162, 0)" });
        var greengrad = g(go.Brush, "Linear", { 0: "#98FB98", 1: "#9ACD32" });
        var bluegrad = g(go.Brush, "Linear", { 0: "#B0E0E6", 1: "#87CEEB" });
        var redgrad = g(go.Brush, "Linear", { 0: "#C45245", 1: "#871E1B" });
        var whitegrad = g(go.Brush, "Linear", { 0: "#F0F8FF", 1: "#E6E6FA" });

        var bigfont = "bold 13pt Helvetica, Arial, sans-serif";
        var smallfont = "bold 11pt Helvetica, Arial, sans-serif";

        // Common text styling
        function textStyle() {
            return {
                margin: 6,
                wrap: go.TextBlock.WrapFit,
                textAlign: "center",
                font: bigfont
            }
        }

        job.myDiagram =
            g(go.Diagram, "myDiagramDiv",
                {
                    // have mouse wheel events zoom in and out instead of scroll up and down
                    "toolManager.mouseWheelBehavior": go.ToolManager.WheelZoom,
                    allowDrop: true,  // support drag-and-drop from the Palette
                    initialAutoScale: go.Diagram.Uniform,
                    "linkingTool.direction": go.LinkingTool.ForwardsOnly,
                    initialContentAlignment: go.Spot.Center,
                    layout: g(go.LayeredDigraphLayout, { isInitial: true, isOngoing: false, layerSpacing: 50 }),
                    "SelectionDeleting":function (obj) {
                        obj.diagram.allowDelete=false;
                    },
                    "undoManager.isEnabled": true
                });
        job.myDiagram.nodeTemplate =
            g(go.Node, "Auto",
//                     { selectionAdornmentTemplate: defaultAdornment },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // define the node's outer shape, which will surround the TextBlock
                g(go.Shape, "Rectangle",
                    { fill: yellowgrad, stroke: "black",
                        portId: "", fromLinkable: true, toLinkable: true, cursor: "pointer",
                        toEndSegmentLength: 50, fromEndSegmentLength: 40 }),
                g(go.TextBlock, "Page",
                    { margin: 6,
                        font: bigfont},
                    new go.Binding("text", "text").makeTwoWay()));

        job.myDiagram.nodeTemplateMap.add("Source",
            g(go.Node, "Auto",
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                g(go.Shape, "RoundedRectangle",
                    { fill: bluegrad,
                        portId: "", fromLinkable: true, cursor: "pointer", fromEndSegmentLength: 40}),
                g(go.TextBlock, "Source", textStyle(),
                    new go.Binding("text", "text").makeTwoWay())
            ));

        job.myDiagram.nodeTemplateMap.add("DesiredEvent",
            g(go.Node, "Auto",
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                g(go.Shape, "RoundedRectangle",
                    { fill: greengrad, portId: "", toLinkable: true, toEndSegmentLength: 50 }),
                g(go.TextBlock, "Success!", textStyle(),
                    new go.Binding("text", "text").makeTwoWay())
            ));

        // Undesired events have a special adornment that allows adding additional "reasons"
        var UndesiredEventAdornment =
            g(go.Adornment, "Spot",
                g(go.Panel, "Auto",
                    g(go.Shape, { fill: null, stroke: "dodgerblue", strokeWidth: 4 }),
                    g(go.Placeholder))
                // the button to create a "next" node, at the top-right corner
//                     g("Button",
//                             { alignment: go.Spot.BottomRight,
//                                 click: addReason },  // this function is defined below
//                             new go.Binding("visible", "", function(a) { return !a.diagram.isReadOnly; }).ofObject(),
//                             g(go.Shape, "TriangleDown", { desiredSize: new go.Size(10, 10) })
//                     )
            );

        var reasonTemplate = g(go.Panel, "Horizontal",
            g(go.TextBlock, "Reason",
                {
                    margin: new go.Margin(4,0,0,0),
                    maxSize: new go.Size(200, NaN),
                    wrap: go.TextBlock.WrapFit,
                    stroke: "whitesmoke",
                    font: smallfont
                },
                new go.Binding("text", "text").makeTwoWay())
        );


        job.myDiagram.nodeTemplateMap.add("UndesiredEvent",
            g(go.Node, "Auto",
                {"click":function (a,data) {
                    onJobCatalogSetting(data.data.key)
                }},
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                { selectionAdornmentTemplate: UndesiredEventAdornment },
                g(go.Shape, "RoundedRectangle",
                    { fill: redgrad, portId: "", toLinkable: true, toEndSegmentLength: 50 }),
                g(go.Panel, "Vertical", {defaultAlignment: go.Spot.TopLeft},

                    g(go.Panel, "Vertical",
                        { defaultAlignment: go.Spot.TopLeft,
                            itemTemplate: reasonTemplate },
                        new go.Binding("itemArray", "reasonsList").makeTwoWay()
                    )
                )
            ));

        job.myDiagram.nodeTemplateMap.add("Comment",
            g(go.Node, "Auto",
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                g(go.Shape, "Rectangle",
                    { portId: "", fill: whitegrad, fromLinkable: true }),
                g(go.TextBlock, "A comment",
                    { margin: 9,
                        maxSize: new go.Size(200, NaN),
                        wrap: go.TextBlock.WrapFit,
                        font: smallfont },
                    new go.Binding("text", "text").makeTwoWay())
                // no ports, because no links are allowed to connect with a comment
            ));
        job.myDiagram.linkTemplate =
            g(go.Link,  // the whole link panel
                new go.Binding("points").makeTwoWay(),
                { curve: go.Link.Bezier, toShortLength: 15 },
                new go.Binding("curviness", "curviness"),
                g(go.Shape,  // the link shape
                    { stroke: "#2F4F4F", strokeWidth: 2.5 }),
                g(go.Shape,  // the arrowhead
                    { toArrow: "kite", fill: "#2F4F4F", stroke: null, scale: 2 })
            );

        job.myDiagram.linkTemplateMap.add("Comment",
            g(go.Link, { selectable: false },
                g(go.Shape, { strokeWidth: 2, stroke: "darkgreen" })));
        job.onJobData();
    },
    onJobData:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge',
            'job.catalog.search.view'), new Array('job_code'), new Array('code_job'), 'text', null, null,
            'showJobDataSettingSuccessCallback', 'normalErrorCallback');
    },
    Drawing:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var linkData=[];
        for (var i = 0 ;i <= obj[1].length-1;i++){
            linkData[i] = new Array();
            linkData[i].from = obj[1][i].key;
            for (var r = 0;r <= obj[1].length-1;r++){
                if(parseFloat(obj[1][i].position) < obj[1][r].position){
                    linkData[i].to = obj[1][r].key;
                    break;
                }
            }
        }
        job.myDiagram.model =
            job.t(go.GraphLinksModel,
                {copiesArrays: true,
                    copiesArrayObjects: true,
                    nodeDataArray:obj[0],
                    linkDataArray: linkData
                });
        // console.log(job.t)
    }
};

$.extend({
    showJobDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        job.Drawing(responseText);

        // setTimeout(function() {
        //     onBuddleManage(responseText);
        // }, 1000);

    }
});


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
                    if ($("#is_local").val() != 'true') {
                        if ($('#api_account').val() == '') {
                            $("#permission").val("false");
                            $.request($("#template").val(), '正在注销', new Array('buddle.cludove',
                                'catalog.cludove'), new Array('infoinge', 'logout.remove.process'),
                                new Array(), new Array(), 'text', 'hint_error', null,
                                'SuccessResourceCallback', 'ErrorResourceCallback');
                        } else {
                            $.request($("#template").val(), '正在登陆', new Array('buddle.cludove', 'catalog.cludove', 'password.cludove'),
                                new Array('infoinge', 'logon.build.process', hex_md5($('#api_password').val())),
                                new Array('account.cludove'), new Array('api_account'), 'text', 'hint_error', null,
                                'SuccessResourceCallback', 'ErrorResourceCallback');
                        }
                    }
                }
            });
}
$.extend({
    SuccessResourceCallback: function (responseText) {
        //$("#permission").val("true");
        onBuddleNaviagate($('#resource_connection_identifier').val());
    },
    ErrorResourceCallback: function (responseText) {
        alert("无法连接，请检查访问账号和密码是否正确！");
        console.log(responseText);
        hintException(responseText, false, '');
    }
});


/* 开始应用配置配置 */
function onBuddleNaviagate(resource_id) {
//    // 资源连接的template就是特定讯枢访问的http连接头部
//    var urlinfo = window.location.href; //获取当前页面的url
//    var len = urlinfo.length;//获取url的长度
//    var offset = urlinfo.indexOf("//");//设置http连接中//字符串开始的位置
//    if (offset > 0)
//        urlinfo = urlinfo.substr(offset + "//".length, len)//取出http连接中//后的字符串
//
//    var offset = urlinfo.indexOf("/");//设置http连接地址和端口后的字符串开始的位置
//    if (offset > 0)
//        urlinfo = urlinfo.substr(offset + "/".length, len)//取出参数字符串 这里会获得类似“id=1”这样的字符串
//    if (urlinfo.indexOf("infoinge") == 0)
//        $("#hinge_header").val($("#hinge_header").val() + "infoinge/");

    $("#resource_id").val(resource_id);
        onBuddleManage('');
}

function onBuddleManage(record_code) {
        $("#resource_navigation")
            .load(
                $("#hinge_header").val()
                + "s?buddle.cludove=infoinge&catalog.cludove=buddle.navigate.view"
                + "&resource_id=" + $("#resource_id").val()
                + "&is_local=" + $("#is_local").val()
                + "&t="
                + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        // hintError("导航应用失败！", false, "javascript:void(0)");
                        //     hintException(data, false, "javascript:void(0)");
                        alert("无法连接讯枢节点，请检查配置参数是否正确！");
                    } else
                        onBuddleSetting(record_code);

                    $(this).off('click');
                    $(this).on('click','ul>li>a',function () {
                        $('#resource_navigation a').css('color','#fff');
                        $(this).css('color',"#ff633b");
                        $(this).siblings("ul").slideToggle();
                    });
                });

}

function onBuddleSetting(record_code) {
    setRemoveSelectRecordButton('none', '应用','infoinge', 'buddle.remove.process',
        'buddle_record_code', 'buddle_check_select', 'buddle_select');
    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=buddle.search.view"
            + "&is_local=" + $("#is_local").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入应用失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入应用成功。", false);

                checkAll('span_check_buddle',
                    'span_check_select_buddle',
                    'buddle_check_select', 'check_all_buddle');

                locateRecord(record_code, 'buddle_check',
                    'buddle_select', 'showBuddleSetting(\''+record_code+'\')');
            });
}

function showBuddleSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=buddle.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示应用设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示应用设置界面成功。", false);

                $('#buddle_identifier').focus();
            });
}


function processBuddleSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if(validateIdentifier($("#buddle_identifier").val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)){
        if ($("#buddle_identifier").val()=='infoinge' && $("#identifier_setting").val()!='infoinge'){
            alert("应用标识不能为 infoinge");
        }else {
            if ($('#validate_buddle_setting').validationEngine('validate')) {
                disabledButton();
                if ($('#code_buddle').val().length > 0) {
                    $.request(httpHeader, '修改应用', new Array('buddle.cludove',
                        'catalog.cludove','is_synced_dsb'), new Array('infoinge',
                        'buddle.setting.process','false'), new Array('code',
                        'connection_code', 'identifier', 'name', 'is_permit',
                        'is_home', 'validator','description'), new Array('code_buddle',
                        'connection_code_buddle', 'buddle_identifier',
                        'buddle_name', 'buddle_is_permit', 'buddle_is_home',
                        'buddle_validator','buddle_description'), 'text', null, null,
                        'buddleSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    $.request(httpHeader, '新增应用', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('infoinge',
                        'buddle.setting.process'), new Array('identifier', 'name',
                        'is_permit', 'is_home', 'validator','description'), new Array(
                        'buddle_identifier', 'buddle_name', 'buddle_is_permit',
                        'buddle_is_home', 'buddle_validator','buddle_description'), 'text', null, null,
                        'buddleSettingSuccessCallback', 'normalErrorCallback');
                }
            }
        }
    }else{
        alert("标识必须为小写字母可加.分隔");
        $("#buddle_identifier").focus();
    }

}

$.extend({
    buddleSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onBuddleManage(responseText);

        enableButton();
        // setTimeout(function() {
        //     onBuddleManage(responseText);
        // }, 1000);
    }
});
/*点击业务模型*/
function businessmodel(record_code) {
    onCatalogSetting(record_code, "", 0);
}

/* 开始功能目录配置 */
function onCatalogNaviagate(container_id, navigater_id, buddle_id) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);

    onCatalogLoad('');
}

function onCatalogLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onCatalogManage(record_code);
    } else
        onCatalogSetting(record_code, "", 0);
}

function onCatalogManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=catalog.navigate.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航功能目录成功。", false);

                onCatalogSetting(record_code, "", 0);

            });
}

function onCatalogSetting(record_code, catalog_id, is_check_or_click) {
    $("#catalog_id").val(catalog_id);

    setRemoveSelectRecordButtonCatalog('block', '功能目录','infoinge', 'catalog.remove.process',
        'catalog_record_code', 'catalog_check_select', 'catalog_select','true');
    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=catalog.search.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入功能目录成功。", false);

                checkAll('span_check_catalog',
                    'span_check_select_catalog',
                    'catalog_check_select', 'check_all_catalog');

                locateRecord(record_code, 'catalog_check',
                    'catalog_select', 'showCatalogSetting(\'' + record_code + '\', \'' + catalog_id + '\', 0)', is_check_or_click);

                // showCatalogSetting(record_code, catalog_id);
            });
    $("#removeSelectRecord").css('display','none');
}
//使用is_locate_record来判断是否应该调用locateNavigate
function showCatalogSetting(code, catalog_id, is_locate_record) {
    $("#catalog_id").val(catalog_id);
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=catalog.setting.view&code="
            + code + "&buddle_id=" + $("#buddle_id").val() + "&t=" + new Date().getTime(),
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
                }
                    ;
                // hintMessage("显示功能目录设置界面成功。", false);

                $('#catalog_identifier').focus();
                // console.log(is_locate_record);
                // console.log(is_locate_record > 0);
                if (is_locate_record > 0){
                    locateNavigate(code, 'resource_setting_left');
                }
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
    if (type != 'function'){
        $('#catalog_is_log_true').prop('checked','checked');
        $("#catalog_is_log").val('true');
    }else{
        $('#catalog_is_log_false').prop('checked','checked');
        $("#catalog_is_log").val('false');
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

//  点击提交按钮查询目录标识
    function validatecatalogSetting() {
        if(validateIdentifier($('#catalog_identifier').val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)){
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
            alert("标识必须为*字母可加.分隔");
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
                'catalog.cludove', 'is_synced_dsb'), new Array('infoinge',
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
                'catalog.cludove', 'is_synced_dsb'), new Array('infoinge',
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

$.extend({
    catalogSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        // enableButton();
        onCatalogManage(responseText);
    }
});

function onCatalogStyleSetting(buddle_id, catalog_id) {
    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=style.catalog.search.view"
            + "&buddle_id=" + buddle_id + "&catalog_id="
            + catalog_id + "&style_name=base"
            + "&language_name=zh-cn" + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入目录样式单失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入目录样式单成功。", false);
            });
}

function onCatalogReturnEdit(buddle_id, catalog_id) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=catalog.return.edit.view"
        + "&buddle_id=" + buddle_id + "&catalog_id="
        + catalog_id; //转向网页的地址;
    var name = "编辑功能返回"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.75; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.75; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = 20; //获得窗口的水平位置;

    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function processCatalogReturnSetting() {
    var base64 = new Base64();
    var content = base64.encode(UE.getEditor('return_content').getContent());

    if ($('#code_catalog_return').val().length > 0) {
        $.request(httpHeader, '修改功能目录', new Array('buddle.cludove',
            'catalog.cludove', 'content'), new Array('infoinge',
            'catalog.return.setting.process', content), new Array('code',
            'connection_code', 'buddle_id', 'catalog_id'),
            new Array('code_catalog_return', 'connection_code_catalog_return', 'buddle_id',
            'catalog_id'), 'text',
            null, null, 'catalogReturnSettingSuccessCallback', 'normalErrorCallback');
    } else {
        $.request(httpHeader, '新增功能目录', new Array('buddle.cludove',
            'catalog.cludove', 'content'), new Array('infoinge',
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

/* 开始目录数据配置 */
function onDataNaviagate(container_id, navigater_id, buddle_id, catalog_id) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    onDataLoad('');
}

function onDataLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onDataManage(record_code);
    } else
        onDataSetting(record_code,0);
}

function onDataManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=data.navigate.view"
            + "&buddle_id=" + $("#buddle_id").val()
            + "&catalog_id=" + $("#catalog_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航目录数据失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航目录数据成功。", false);

                onDataSetting(record_code);
                // console.log($(this));
                $(this).on('click','ul ul>li>a',function (event) {
                    event.stopPropagation();
                    $(this).siblings("ul").slideToggle();
                })
            });
}

function onDataSetting(record_code,is_check_or_click) {
    setRemoveSelectRecordButtonData('block', '目录数据','infoinge', 'data.remove.process',
        'data_record_code', 'data_check_select', 'data_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=data.search.view"
            + "&buddle_id=" + $("#buddle_id").val()
            + "&catalog_id=" + $("#catalog_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入目录数据失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入目录数据成功。", false);

                checkAll('span_check_data', 'span_check_select_data',
                    'data_check_select', 'check_all_data');

                locateRecord(record_code, 'data_check', 'data_select',
                    'showDataSetting(\''+ record_code +'\')');
                // showDataSetting(record_code);

            });
}

function showDataSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=data.setting.view&code="
            + code + "&buddle_id=" + $("#buddle_id").val()
            + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                // console.log(data);
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if ($("#data_catalog_type").val().length > 0)
                        $('input:radio[name="data_type_select"]').attr('disabled','disabled');

                    if ($("#data_data_type").val() == 'XML'){
                        $('input:radio[name="data_type_select"]').attr('disabled','disabled');
                        $("#data_row_number_container").show();
                        $("#data_uniques_container").show();
                        $("#data_is_for_each_container").show();
                        $("#data_select_expression_container").show();
                        onResourceStructureXML($('#data_connection_id').val(),'data_resource_name', 'XML', '请选择数据文件','changeDataResourceNameBy()', '','');
                    }else{
                        $('input:radio[name="data_type_select"]').attr('disabled',false);
                    }
                    if( ($("#operation_by_db").val() == 'synchronize' || $("#operation_by_db").val() == 'migrate' || $("#operation_by_db").val() == 'mysql_sync' || $("#operation_by_db").val() == 'mysql_migrate' || $("#operation_by_db").val() == 'oracle_migr' || $("#operation_by_db").val() == 'oracle_sync' || $("#operation_by_db").val() == 'sql_sync' || $("#operation_by_db").val() == 'sql_migr') && ($("#data_catalog_type").val() == 'migration' || $("#data_catalog_type").val() == 'synchronization')){
                        $('input:radio[name="data_type_select"]').attr('disabled','disabled');
                        $('#data_operation_migr').attr('disabled','disabled');
                    }
                    $('#data_position').spinner({
                        max: 100,
                        min: 0,
                        step: 1
                    });

                    if($("#data_is_for_each").val() == 'true')
                        $("#data_select_expression").attr('class','validate[required,maxSize[1024]]');
                    else
                        $("#data_select_expression").attr('class','validate[maxSize[1024]]');

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

                if ($("#data_type").val() == 'Hinge')
                    onDataResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");

                onDataConnectionIdChange();


                $('#data_row_number').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
            });
}
function dataOperationSyncChange() {
    if($('#data_operation_migr').val() !=  "synchronize" && $('#data_operation_migr').val() !=  ""){
        $('#data_exchange_sync_time_container').hide();
        $('#data_exchange_flag_field_container').hide();
        $('#data_exchange_flag_change_container').hide();
        $('#data_exchange_flag_reset_container').hide();
    }else{
        $('#data_exchange_sync_time_container').show();
        $('#data_exchange_flag_field_container').show();
        $('#data_exchange_flag_change_container').show();
        $('#data_exchange_flag_reset_container').show();
    }
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
    if ($("#data_type").val() == 'DB' || $("#data_type").val() == 'Hinge'){
        $("#data_resource_name").attr('class','validate[required]')
    }else if ($("#data_type").val() == 'XML'){
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
                        new Array('infoinge', 'data.setting.process',
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
                            new Array('infoinge', 'data.setting.process',
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
                            new Array('infoinge', 'data.setting.process',
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
                        new Array('infoinge', 'data.setting.process',
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
                            new Array('infoinge', 'data.setting.process',
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
                            new Array('infoinge', 'data.setting.process',
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
        flag = 1;
        // 刷新页面
        // enableButton()
        onDataManage(responseText);
    }
});

//点击性怎按钮重置操作名字
function initDataOperation() {
    if ($("#data_catalog_type").val().length > 0)
        $('#data_operation').html('<option value="build">保存</option>');
    else if ($("#data_type").val() == 'DB' || $("#data_type").val() == 'Metadata' || $("#data_type").val() == 'XML')
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
    else if (data_type_init =='XML')
        $("#data_type_xml").trigger('click');
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
        var data_operation = $("#data_operation").val();
        $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option><option value="upload">上传</option><option value="download">下载</option>');
        $("#data_operation").val(data_operation);
    }
    $("#data_operation_migrate_container").hide();

    $("#data_operation_container").show();

    $("#data_is_paginate_container").hide();

    $("#data_row_number_container").hide();

    $("#data_uniques_container").hide();

    $("#data_is_for_each_container").hide();

    $("#data_select_expression_container").hide();

    $("#data_resource_name").val("");


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
function onDataTypeXMLCheck() {
    $("#data_classification").hide();
    $("#data_resource_buddle_container").hide();
    $('#data_operation').html('<option value="search">查询</option><option value="build">保存</option><option value="modify">修改</option><option value="remove">删除</option>');
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
        onDataResourceDecomposingSelect("data_connection_id", "DB", "请选择资源定义", $("#connection_id_by_hinge").val(), "");
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
    } else if ($('#data_type').val() == 'XML') {
        for (var i = 0 ;i <= str.length-1;i++){
            if (str[i] == $('#resource_name_by_xml').val()){
                $('#data_resource_name').val($('#resource_name_by_xml').val());
                break;
            }
        }
        onDataOperationChange();
    }
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
    else if ($('#data_type').val() == 'Metadata'){
        $('#resource_name_by_metadata').val($('#data_resource_name').val());
    }
    else if ($('#data_type').val() == 'Hinge'){
        $('#resource_name_by_hinge').val($('#data_resource_name').val());
    }
    else if ($('#data_type').val() == 'WS'){
        $('#resource_name_by_ws').val($('#data_resource_name').val());
        onDataOperationChange();
    }
    else if ($('#data_type').val() == 'Class')
        $('#resource_name_by_class').val($('#data_resource_name').val());
    else if ($('#data_type').val() == 'XML'){
        onDataOperationChange();
    }
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

/* 开始数据引用配置 */
function onQuoteNaviagate(buddle_id, catalog_id, data_select_code,
                          data_select_type, data_select_connection_id, data_select_resource_name) {
    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onQuoteSetting('');
}

function onQuoteSetting(record_code) {
    setRemoveSelectRecordButton('block', '数据引用','infoinge', 'quote.remove.process',
        'quote_record_code', 'quote_check_select', 'quote_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=quote.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据引用失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据引用成功。", false);

                checkAll('span_check_quote', 'span_check_select_quote',
                    'quote_check_select', 'check_all_quote');

                locateRecord(record_code, 'quote_check',
                    'quote_select', 'showQuoteSetting(\''+record_code+'\')');
            });
}

function showQuoteSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=quote.setting.view&code="
            + code + "&buddle_id=" + $("#buddle_id").val()
            + "&catalog_id=" + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据引用设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示数据引用设置界面成功。", false);

                $('#quote_name').focus();
            });
}

function processQuoteSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_quote_setting').validationEngine('validate')) {
        if ($('#code_quote').val().length > 0) {
            $.request(httpHeader, '修改数据引用', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'quote.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'name', 'expression', 'class'), new Array('code_quote',
                'connection_code_quote', 'buddle_id', 'catalog_id',
                'data_select_code', 'quote_name', 'quote_expression',
                'quote_class'), 'text', null, null,
                'quoteSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增数据引用', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'quote.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'name', 'expression', 'class'),
                new Array('buddle_id', 'catalog_id', 'data_select_code',
                    'quote_name', 'quote_expression', 'quote_class'),
                'text', null, null, 'quoteSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    quoteSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onQuoteSetting(responseText);
    }
});

/* 开始数据参数配置 */
function onDataParameterNaviagate(buddle_id, catalog_id, data_select_code,
                                  data_select_type, data_select_connection_id, data_select_resource_name) {
    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onDataParameterSetting('');
}

function onDataParameterSetting(record_code) {
    setRemoveSelectRecordButton('block', '数据参数','infoinge',
        'parameter.data.remove.process', 'data_parameter_record_code',
        'data_parameter_check_select', 'data_parameter_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=parameter.data.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据参数失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据参数成功。", false);

                checkAll('span_check_data_parameter',
                    'span_check_select_data_parameter',
                    'data_parameter_check_select',
                    'check_all_data_parameter');

                locateRecord(record_code, 'data_parameter_check',
                    'data_parameter_select',
                    'showDataParameterSetting(\''+record_code+'\')');

                // showDataParameterSetting(record_code)
            });
}

function showDataParameterSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=parameter.data.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据参数设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示数据参数设置界面成功。", false);

                $('#data_parameter_input_name').focus();

                if ($('#data_parameter_input_name').val() != ''
                    && $('#data_parameter_select_name').val() != '')
                    $('#data_parameter_input_name').val('');

                $('#data_parameter_position').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });

            });
}

function processDataParameterSetting() {
    if ($('#data_parameter_select_name').val() == ''){
        $('#data_parameter_input_name').addClass("validate[required]");
    } else {
        $('#data_parameter_select_name').removeClass("validate[required]");
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_parameter_setting').validationEngine('validate')) {
        if ($('#code_data_parameter').val().length > 0) {
            $.request(httpHeader, '修改数据参数', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'parameter.data.setting.process'),
                new Array('code', 'connection_code', 'buddle_id',
                    'catalog_id', 'data_code', 'position',
                    'parameter_name', 'select_expression', 'class'),
                new Array('code_data_parameter',
                    'connection_code_data_parameter', 'buddle_id',
                    'catalog_id', 'data_select_code',
                    'data_parameter_position', 'data_parameter_name',
                    'data_parameter_select_expression',
                    'data_parameter_class'), 'text', null, null,
                'dataParameterSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增数据参数', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'parameter.data.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'position', 'parameter_name',
                'select_expression', 'class'),
                new Array('buddle_id', 'catalog_id', 'data_select_code',
                    'data_parameter_position', 'data_parameter_name',
                    'data_parameter_select_expression',
                    'data_parameter_class'), 'text', null, null,
                'dataParameterSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    dataParameterSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDataParameterSetting(responseText);
    }
});

/* 开始数据变量配置 */
function onDataVariableNaviagate(buddle_id, catalog_id, data_select_code,
                                 data_select_type, data_select_connection_id, data_select_resource_name) {
    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onDataVariableSetting('');
}

function onDataVariableSetting(record_code) {
    setRemoveSelectRecordButton('block', '数据变量','infoinge',
        'variable.data.remove.process', 'data_variable_record_code',
        'data_variable_check_select', 'data_variable_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=variable.data.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据变量失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据变量成功。", false);

                checkAll('span_check_data_variable',
                    'span_check_select_data_variable',
                    'data_variable_check_select',
                    'check_all_data_variable');

                locateRecord(record_code, 'data_variable_check',
                    'data_variable_select',
                    'showDataVariableSetting(\''+record_code+'\')');
            });
}

function showDataVariableSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=variable.data.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据变量设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示数据变量设置界面成功。", false);

                $('#data_variable_input_name').focus();

                if ($('#data_variable_input_name').val() != ''
                    && $('#data_variable_select_name').val() != '')
                    $('#data_variable_input_name').val('');

                $('#data_variable_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processDataVariableSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_variable_setting').validationEngine('validate')) {
        if ($('#code_data_variable').val().length > 0) {
            $
                .request(httpHeader, '修改数据变量', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'variable.data.setting.process'), new Array('code',
                    'connection_code', 'buddle_id', 'catalog_id',
                    'data_code', 'position', 'variable_name',
                    'select_expression', 'class'), new Array(
                    'code_data_variable',
                    'connection_code_data_variable', 'buddle_id',
                    'catalog_id', 'data_select_code',
                    'data_variable_position', 'data_variable_name',
                    'data_variable_select_expression',
                    'data_variable_class'), 'text', null, null,
                    'dataVariableSettingSuccessCallback',
                    'normalErrorCallback');
        } else {
            $
                .request(httpHeader, '新增数据变量', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'variable.data.setting.process'), new Array(
                    'buddle_id', 'catalog_id', 'data_code', 'position',
                    'variable_name', 'select_expression', 'class'),
                    new Array('buddle_id', 'catalog_id',
                        'data_select_code',
                        'data_variable_position',
                        'data_variable_name',
                        'data_variable_select_expression',
                        'data_variable_class'), 'text', null, null,
                    'dataVariableSettingSuccessCallback',
                    'normalErrorCallback');
        }
    }
}

$.extend({
    dataVariableSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDataVariableSetting(responseText);
    }
});

/* 开始数据取值配置 */
function onDataValueNaviagate(container_id, navigater_id, buddle_id,
                              catalog_id, data_select_code, data_select_type,
                              data_select_connection_id, data_select_resource_name) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onDataValueLoad('');
}

function onDataValueLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onDataValueManage(record_code);
    } else
        onDataValueSetting(record_code);
}

function onDataValueManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=value.data.navigate.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航数据取值失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航数据取值成功。", false);

                onDataValueSetting(record_code);
            });
}

function onDataValueSetting(record_code) {
    setRemoveSelectRecordButton('block', '数据取值','infoinge', 'value.data.remove.process',
        'data_value_record_code', 'data_value_check_select',
        'data_value_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=value.data.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据取值失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据取值成功。", false);

                checkAll('span_check_data_value',
                    'span_check_select_data_value',
                    'data_value_check_select',
                    'check_all_data_value');

                locateRecord(record_code, 'data_value_check',
                    'data_value_select',
                    'showDataValueSetting(\''+record_code+'\')');
            });
}

function showDataValueSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=value.data.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据取值设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示数据取值设置界面成功。", false);

                $('#data_value_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processDataValueSetting() {
    if ($('#data_value_is_for_each').val()=='true'){
        $('#data_value_select_expression').addClass("validate[required]");
    }else {
        $('#data_value_select_expression').removeClass("validate[required]");
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_value_setting').validationEngine('validate')) {
        if ($('#code_data_value').val().length > 0) {
            $.request(httpHeader, '修改数据取值', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'value.data.setting.process'), new Array('value_code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'position', 'test_expression', 'is_for_each',
                'select_expression', 'data_type', 'data_connection_id', 'data_resource_name'), new Array('code_data_value',
                'connection_code_data_value', 'buddle_id', 'catalog_id',
                'data_select_code', 'data_value_position',
                'data_value_test_expression', 'data_value_is_for_each',
                'data_value_select_expression', 'data_select_type', 'data_select_connection_id', 'data_select_resource_name'), 'text', null, null,
                'dataValueSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增数据取值', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'value.data.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'position', 'test_expression',
                'is_for_each', 'select_expression', 'data_type', 'data_connection_id', 'data_resource_name'), new Array('buddle_id',
                'catalog_id', 'data_select_code', 'data_value_position',
                'data_value_test_expression', 'data_value_is_for_each',
                'data_value_select_expression', 'data_select_type', 'data_select_connection_id', 'data_select_resource_name'), 'text', null, null,
                'dataValueSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}

$.extend({
    dataValueSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDataValueSetting(responseText);
    }
});

/* 开始取值标记配置 */
function onValueTagNaviagate(container_id, navigater_id, value_code) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#data_select_value_code").val(value_code);

    onValueTagLoad('');
}

function onValueTagLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onValueTagManage(record_code);
    } else
        onValueTagSetting(record_code);
}

function onValueTagManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=value.tag.navigate.view"
            + "&value_code="
            + $("#data_select_value_code").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航取值标记失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航取值标记成功。", false);

                // $("#" + $("#navigater_id").val() + "").removeAttr("onclick");

                onValueTagSetting(record_code);


                // $(".value_tag_container").hide();

                $("#" + $("#container_id").val() + "").show();
            });
}

function onValueTagSetting(record_code) {
    setRemoveSelectRecordButton('block', '取值标记','infoinge', 'value.tag.remove.process',
        'value_tag_record_code', 'value_tag_check_select',
        'value_tag_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=value.tag.search.view"
            + "&value_code="
            + $("#data_select_value_code").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入取值标记失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入取值标记成功。", false);

                checkAll('span_check_value_tag',
                    'span_check_select_value_tag',
                    'value_tag_check_select', 'check_all_value_tag');

                locateRecord(record_code, 'value_tag_check',
                    'value_tag_select', 'showValueTagSetting(\'\')');
                showValueTagSetting(record_code);
            });
}

function showValueTagSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=value.tag.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示取值标记设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示取值标记设置界面成功。", false);

                $('#value_tag_input_name').focus();

                if ($('#value_tag_input_name').val() != ''
                    && $('#value_tag_select_name').val() != '')
                    $('#value_tag_input_name').val('');

                $('#value_tag_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
    $("#value_tag_input_name").removeClass("validate[required]");
}

function processValueTagSetting() {
    if($('#value_tag_select_name').val() != ''){
        $("#value_tag_input_name").attr('class','validate[maxSize[128]]');
    } else {
        $("#value_tag_input_name").attr('class','validate[required,maxSize[128]]');
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_value_tag_setting').validationEngine('validate')) {
        if ($('#code_value_tag').val().length > 0) {
            $.request(httpHeader, '修改取值标记', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'value.tag.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'value_code', 'position', 'tag_name'), new Array(
                'code_value_tag', 'connection_code_value_tag', 'buddle_id',
                'catalog_id', 'data_select_code', 'data_select_value_code',
                'value_tag_position', 'value_tag_name'), 'text', null,
                null, 'valueTagSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增取值标记', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'value.tag.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'value_code', 'position',
                'tag_name'), new Array('buddle_id', 'catalog_id',
                'data_select_code', 'data_select_value_code',
                'value_tag_position', 'value_tag_name'), 'text', null,
                null, 'valueTagSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    valueTagSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onValueTagSetting(responseText);
    }
});

/* 开始标记项目配置 */
function onTagItemNaviagate(container_id, navigater_id, tag_code) {
    // $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#data_select_tag_code").val(tag_code);

    onTagItemSetting('');
}

function onTagItemSetting(record_code) {
    setRemoveSelectRecordButton('block', '标记项目','infoinge', 'tag.item.remove.process',
        'tag_item_record_code', 'tag_item_check_select', 'tag_item_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=tag.item.search.view"
            + "&tag_code=" + $("#data_select_tag_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入标记项目失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入标记项目成功。", false);

                checkAll('span_check_tag_item',
                    'span_check_select_tag_item',
                    'tag_item_check_select', 'check_all_tag_item');

                locateRecord(record_code, 'tag_item_check',
                    'tag_item_select', 'showTagItemSetting(\''+record_code+'\')');
            });
}

function showTagItemSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=tag.item.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示标记项目设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示标记项目设置界面成功。", false);

                $('#tag_item_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processTagItemSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_tag_item_setting').validationEngine('validate')) {
        if ($('#code_tag_item').val().length > 0) {
            $.request(httpHeader, '修改标记项目', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'tag.item.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'tag_code', 'position', 'test_expression',
                'select_expression', 'class'), new Array('code_tag_item',
                'connection_code_tag_item', 'buddle_id', 'catalog_id',
                'data_select_code', 'data_select_tag_code',
                'tag_item_position', 'tag_item_test_expression',
                'tag_item_select_expression', 'tag_item_class'), 'text',
                null, null, 'tagItemSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增标记项目', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'tag.item.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'tag_code', 'position',
                'test_expression', 'select_expression', 'class'),
                new Array('buddle_id', 'catalog_id', 'data_select_code',
                    'data_select_tag_code', 'tag_item_position',
                    'tag_item_test_expression',
                    'tag_item_select_expression', 'tag_item_class'),
                'text', null, null, 'tagItemSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    tagItemSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onTagItemSetting(responseText);
    }
});

/* 开始执行条件配置 */
function onDataConditionNaviagate(container_id, navigater_id, buddle_id,
                                  catalog_id, data_select_code, data_select_type,
                                  data_select_connection_id, data_select_resource_name) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onDataConditionLoad('');
}

function onDataConditionLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onDataConditionManage(record_code);
    } else
        onDataConditionSetting(record_code);
}

function onDataConditionManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=condition.data.navigate.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航执行条件失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航执行条件成功。", false);

                onDataConditionSetting(record_code);

            });
}

function onDataConditionSetting(record_code) {
    setRemoveSelectRecordButton('block', '执行条件','infoinge',
        'condition.data.remove.process', 'data_condition_record_code',
        'data_condition_check_select', 'data_condition_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=condition.data.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入执行条件失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入执行条件成功。", false);

                checkAll('span_check_data_condition',
                    'span_check_select_data_condition',
                    'data_condition_check_select',
                    'check_all_data_condition');

                locateRecord(record_code, 'data_condition_check',
                    'data_condition_select',
                    'showDataConditionSetting(\''+record_code+'\')');

                // showDataConditionSetting(record_code)
            });
}

function showDataConditionSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=condition.data.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示执行条件设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if($("#data_condition_is_for_each").val() == 'true'){
                        $("#data_condition_select_expression_container").css("display",'block');
                        $("#data_condition_select_expression").attr('class','validate[required,maxSize[1024]]')
                    }else {
                        $("#data_condition_select_expression_container").css("display",'none');
                        $("#data_condition_select_expression").attr('class','validate[maxSize[1024]]')
                    }

                }
                    ;
                // hintMessage("显示执行条件设置界面成功。", false);

                $('#data_condition_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

//执行条件重置按钮
function resetDataConditionForEach() {
    if($("#data_condition_is_for_each_reset").val() == 'true'){
        $("#data_condition_select_expression_container").css("display",'block');
        $("#data_condition_select_expression").attr('class','validate[required,maxSize[1024]]')
    }else {
        $("#data_condition_select_expression_container").css("display",'none');
        $("#data_condition_select_expression").attr('class','validate[maxSize[1024]]')
    }


}

//标记项目重置按钮
function resetDataTagItem() {
    if($("#tag_item_class_reset").val() == 'class') {
        $('#tag_item_select_expression_input_container').hide();
        $('#tag_item_select_expression_select_container').show();
        $('#tag_item_class').val($("#tag_item_class_reset").val())
        $('#tag_item_select_expression').val($("#tag_item_select_expression_reset").val())
    }else if ($("#tag_item_class_reset").val() == ''){

        $('#tag_item_select_expression_input_container').show();
        $('#tag_item_select_expression_select_container').hide();
        $('#tag_item_class').val('select');
        $('#tag_item_select_expression_input').val('')
    }else {
        $('#tag_item_select_expression_input_container').show();
        $('#tag_item_select_expression_select_container').hide();
        $('#tag_item_class').val($("#tag_item_class_reset").val());
        $('#tag_item_select_expression_input').val($('#tag_item_select_expression_reset').val())
    }


}

function processDataConditionSetting() {
    // if ($('#data_condition_is_for_each').val()=='true'){
    //     $('#data_condition_select_expression').addClass("validate[required]");
    // }else {
    //     $('#data_condition_select_expression').removeClass("validate[required]");
    // }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_condition_setting').validationEngine('validate')) {
        if ($('#code_data_condition').val().length > 0) {
            $.request(httpHeader, '修改执行条件', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'condition.data.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'position', 'test_expression', 'is_for_each',
                'select_expression'), new Array('code_data_condition',
                'connection_code_data_condition', 'buddle_id',
                'catalog_id', 'data_select_code',
                'data_condition_position',
                'data_condition_test_expression',
                'data_condition_is_for_each',
                'data_condition_select_expression'), 'text', null, null,
                'dataConditionSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增执行条件', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'condition.data.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'position', 'test_expression',
                'is_for_each', 'select_expression'), new Array('buddle_id',
                'catalog_id', 'data_select_code',
                'data_condition_position',
                'data_condition_test_expression',
                'data_condition_is_for_each',
                'data_condition_select_expression'), 'text', null, null,
                'dataConditionSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    dataConditionSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDataConditionManage(responseText);
    }
});

/* 开始条件标记配置 */
function onConditionTagNaviagate(container_id, navigater_id, condition_code) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#data_select_condition_code").val(condition_code);

    onConditionTagLoad('');
}

function onConditionTagLoad(record_code) {
    // console.log($("#" + $("#container_id").val() + "").html().length )
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onConditionTagManage(record_code);
    } else
        onConditionTagSetting(record_code);
}

function onConditionTagManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=condition.tag.navigate.view"
            + "&condition_code="
            + $("#data_select_condition_code").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航条件标记失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航条件标记成功。", false);

                $(".condition_tag_container").hide();

                $("#" + $("#container_id").val() + "").show();

                onConditionTagSetting(record_code);

            });
}

function onConditionTagSetting(record_code) {
    setRemoveSelectRecordButton('block', '条件标记','infoinge',
        'condition.tag.remove.process', 'condition_tag_record_code',
        'condition_tag_check_select', 'condition_tag_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=condition.tag.search.view"
            + "&condition_code="
            + $("#data_select_condition_code").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入条件标记失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入条件标记成功。", false);

                checkAll('span_check_condition_tag',
                    'span_check_select_condition_tag',
                    'condition_tag_check_select',
                    'check_all_condition_tag');

                locateRecord(record_code, 'condition_tag_check',
                    'condition_tag_select',
                    'showConditionTagSetting(\''+record_code+'\')');

                // showConditionTagSetting(record_code)
            });
}

function showConditionTagSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=condition.tag.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示条件标记设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示条件标记设置界面成功。", false);

                $('#condition_tag_input_name').focus();

                if ($('#condition_tag_input_name').val() != ''
                    && $('#condition_tag_select_name').val() != '')
                    $('#condition_tag_input_name').val('');

                $('#condition_tag_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processConditionTagSetting() {
    if($('#condition_tag_select_name').val() != ''){
        $("#condition_tag_input_name").attr('class','validate[maxSize[128]]');
    } else {
        $("#condition_tag_input_name").attr('class','validate[required,maxSize[128]]');
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_condition_tag_setting').validationEngine('validate')) {
        if ($('#code_condition_tag').val().length > 0) {
            $
                .request(httpHeader, '修改条件标记', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('infoinge',
                    'condition.tag.setting.process'), new Array('code',
                    'connection_code', 'buddle_id', 'catalog_id',
                    'data_code', 'condition_code', 'position',
                    'tag_name'), new Array('code_condition_tag',
                    'connection_code_condition_tag', 'buddle_id',
                    'catalog_id', 'data_select_code',
                    'data_select_condition_code',
                    'condition_tag_position', 'condition_tag_name'),
                    'text', null, null,
                    'conditionTagSettingSuccessCallback',
                    'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增条件标记', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'condition.tag.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'condition_code', 'position',
                'tag_name'), new Array('buddle_id', 'catalog_id',
                'data_select_code', 'data_select_condition_code',
                'condition_tag_position', 'condition_tag_name'), 'text',
                null, null, 'conditionTagSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    conditionTagSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onConditionTagManage(responseText);
    }
});

/* 开始查询条件配置 */
function onDataExpressionNaviagate(container_id, navigater_id, buddle_id,
                                   catalog_id, data_select_code, data_select_type,
                                   data_select_connection_id, data_select_resource_name) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onDataExpressionLoad('');
}

function onDataExpressionLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onDataExpressionManage(record_code);
    } else
        onDataExpressionSetting(record_code);
}

function onDataExpressionManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=expression.data.navigate.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航查询条件失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航查询条件成功。", false);

                onDataExpressionSetting(record_code);


                // console.log($(this));
                $(this).on('click','ul ul>li>a',function (event) {
                    event.stopPropagation();
                    $(this).siblings("ul").slideToggle();
                })
            });
}

function onDataExpressionSetting(record_code) {
    setRemoveSelectRecordButton('block', '查询条件','infoinge',
        'expression.data.remove.process', 'data_expression_record_code',
        'data_expression_check_select', 'data_expression_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=expression.data.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入查询条件失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入查询条件成功。", false);

                checkAll('span_check_data_expression',
                    'span_check_select_data_expression',
                    'data_expression_check_select',
                    'check_all_data_expression');

                locateRecord(record_code, 'data_expression_check',
                    'data_expression_select',
                    'showDataExpressionSetting(\''+record_code+'\')');
                // showDataExpressionSetting(record_code);
            });
}

function showDataExpressionSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=expression.data.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示查询条件设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示查询条件设置界面成功。", false);

                $('#data_expression_position').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
            });
}

function processDataExpressionSetting() {
    // 1.连接数据库，提交数据，回调函数（则刷新中间的查询页面）
    if ($('#data_expression_is_for_each').val()=='true'){
        $('#data_expression_select_expression').addClass("validate[required]");
    }else {
        $('#data_expression_select_expression').removeClass("validate[required]");
    }

    if ($('#validate_data_expression_setting').validationEngine('validate')) {
        if ($('#code_data_expression').val().length > 0) {
            $.request(httpHeader, '修改查询条件', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'expression.data.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'position', 'test_expression', 'is_for_each',
                'select_expression'), new Array('code_data_expression',
                'connection_code_data_expression', 'buddle_id',
                'catalog_id', 'data_select_code',
                'data_expression_position',
                'data_expression_test_expression',
                'data_expression_is_for_each',
                'data_expression_select_expression'), 'text', null, null,
                'dataExpressionSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增查询条件', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'expression.data.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'position', 'test_expression',
                'is_for_each', 'select_expression'), new Array('buddle_id',
                'catalog_id', 'data_select_code',
                'data_expression_position',
                'data_expression_test_expression',
                'data_expression_is_for_each',
                'data_expression_select_expression'), 'text', null, null,
                'dataExpressionSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    dataExpressionSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDataExpressionSetting(responseText);
    }
});

/* 开始条件项目配置 */
function onExpressionItemNaviagate(container_id, navigater_id, expression_code) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);


    $("#data_select_expression_code").val(expression_code);
    onExpressionItemSetting('');
}

function onExpressionItemSetting(record_code) {
    setRemoveSelectRecordButton('block', '条件项目','infoinge',
        'expression.item.remove.process', 'expression_item_record_code',
        'expression_item_check_select', 'expression_item_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=expression.item.search.view"
            + "&expression_code="
            + $("#data_select_expression_code").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入条件项目失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入条件项目成功。", false);

                checkAll('span_check_expression_item',
                    'span_check_select_expression_item',
                    'expression_item_check_select',
                    'check_all_expression_item');

                locateRecord(record_code, 'expression_item_check',
                    'expression_item_select',
                    'showExpressionItemSetting(\''+record_code+'\')');

                // showExpressionItemSetting(record_code)
            });
}

function showExpressionItemSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=expression.item.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示条件项目设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示条件项目设置界面成功。", false);

                $('#expression_item_position').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });

                $('#expression_item_left_brace_number').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });

                $('#expression_item_right_brace_number').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
            });
}

function processExpressionItemSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_expression_item_setting').validationEngine('validate')) {
        if ($('#code_expression_item').val().length > 0) {
            $.request(httpHeader, '修改条件项目', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'expression.item.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'expression_code', 'position', 'logical_symbol',
                'left_brace_number', 'field_name', 'field_type',
                'sql_operator', 'select_expression', 'class',
                'right_brace_number'), new Array('code_expression_item',
                'connection_code_expression_item', 'buddle_id',
                'catalog_id', 'data_select_code',
                'data_select_expression_code', 'expression_item_position',
                'expression_item_logical_symbol',
                'expression_item_left_brace_number',
                'expression_item_field_name', 'expression_item_field_type',
                'expression_item_sql_operator',
                'expression_item_select_expression',
                'expression_item_class',
                'expression_item_right_brace_number'), 'text', null, null,
                'expressionItemSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增条件项目', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'expression.item.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'expression_code', 'position',
                'logical_symbol', 'left_brace_number', 'field_name',
                'field_type', 'sql_operator', 'select_expression', 'class',
                'right_brace_number'), new Array('buddle_id', 'catalog_id',
                'data_select_code', 'data_select_expression_code',
                'expression_item_position',
                'expression_item_logical_symbol',
                'expression_item_left_brace_number',
                'expression_item_field_name', 'expression_item_field_type',
                'expression_item_sql_operator',
                'expression_item_select_expression',
                'expression_item_class',
                'expression_item_right_brace_number'), 'text', null, null,
                'expressionItemSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}                           

$.extend({
    expressionItemSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onExpressionItemSetting(responseText);
    }
});

/* 开始数据排序配置 */
function onDataOrderNaviagate(buddle_id, catalog_id, data_select_code,
                              data_select_type, data_select_connection_id, data_select_resource_name) {
    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onDataOrderSetting('');
}

function onDataOrderSetting(record_code) {
    setRemoveSelectRecordButton('block', '数据排序','infoinge', 'order.data.remove.process',
        'data_order_record_code', 'data_order_check_select',
        'data_order_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=order.data.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据排序失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据排序成功。", false);

                checkAll('span_check_data_order',
                    'span_check_select_data_order',
                    'data_order_check_select',
                    'check_all_data_order');

                locateRecord(record_code, 'data_order_check',
                    'data_order_select',
                    'showDataOrderSetting(\'\')');
            });
}

function showDataOrderSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=order.data.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据排序设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示数据排序设置界面成功。", false);

                $('#data_order_position').spinner({
                    max: 100,
                    min: 0,
                    step: 1
                });
            });
}

function processDataOrderSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_order_setting').validationEngine('validate')) {
        if ($('#code_data_order').val().length > 0) {
            $.request(httpHeader, '修改数据排序', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'order.data.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'position', 'field_name', 'is_descend'), new Array(
                'code_data_order', 'connection_code_data_order',
                'buddle_id', 'catalog_id', 'data_select_code',
                'data_order_position', 'data_order_field_name',
                'data_order_is_descend'), 'text', null, null,
                'dataOrderSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增数据排序', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'order.data.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'position', 'field_name',
                'is_descend'), new Array('buddle_id', 'catalog_id',
                'data_select_code', 'data_order_position',
                'data_order_field_name', 'data_order_is_descend'), 'text',
                null, null, 'dataOrderSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    dataOrderSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDataOrderSetting(responseText);
    }
});

/* 开始数据分组配置 */
function onDataGroupNaviagate(buddle_id, catalog_id, data_select_code,
                              data_select_type, data_select_connection_id, data_select_resource_name) {
    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    $("#data_select_code").val(data_select_code);
    $("#data_select_type").val(data_select_type);
    $("#data_select_connection_id").val(data_select_connection_id);
    $("#data_select_resource_name").val(data_select_resource_name);

    onDataGroupSetting('');
}

function onDataGroupSetting(record_code) {
    setRemoveSelectRecordButton('block', '数据分组','infoinge', 'group.data.remove.process',
        'data_group_record_code', 'data_group_check_select',
        'data_group_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=group.data.search.view"
            + "&data_code=" + $("#data_select_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据分组失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入数据分组成功。", false);

                checkAll('span_check_data_group',
                    'span_check_select_data_group',
                    'data_group_check_select',
                    'check_all_data_group');

                locateRecord(record_code, 'data_group_check',
                    'data_group_select',
                    'showDataGroupSetting(\''+record_code+'\')');
            });
}

function showDataGroupSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=group.data.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据分组设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示数据分组设置界面成功。", false);

                $('#data_group_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processDataGroupSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_group_setting').validationEngine('validate')) {
        if ($('#code_data_group').val().length > 0) {
            $.request(httpHeader, '修改数据分组', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'group.data.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'data_code',
                'position', 'field_name'), new Array('code_data_group',
                'connection_code_data_group', 'buddle_id', 'catalog_id',
                'data_select_code', 'data_group_position',
                'data_group_field_name'), 'text', null, null,
                'dataGroupSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增数据分组', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'group.data.setting.process'), new Array('buddle_id',
                'catalog_id', 'data_code', 'position', 'field_name'),
                new Array('buddle_id', 'catalog_id', 'data_select_code',
                    'data_group_position', 'data_group_field_name'),
                'text', null, null, 'dataGroupSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    dataGroupSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDataGroupSetting(responseText);
    }
});

/* 开始目录响应配置 */
function onCatalogResponseNaviagate(container_id, navigater_id, buddle_id,
                                    catalog_id) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);
    $("#catalog_id").val(catalog_id);

    onCatalogResponseLoad('');
}

function onCatalogResponseLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onCatalogResponseManage(record_code);
    } else
        onCatalogResponseSetting(record_code);
}

function onCatalogResponseManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=response.catalog.navigate.view"
            + "&buddle_id=" + $("#buddle_id").val()
            + "&catalog_id=" + $("#catalog_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航目录响应失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航目录响应成功。", false);

                onCatalogResponseSetting(record_code);

                // console.log($(this));
                $(this).on('click','ul ul>li>a',function (event) {
                    event.stopPropagation();
                    $(this).siblings("ul").slideToggle();
                })
            });
}

function onCatalogResponseSetting(record_code) {
    setRemoveSelectRecordButton('block', '目录响应','infoinge',
        'response.catalog.remove.process', 'catalog_response_record_code',
        'catalog_response_check_select', 'catalog_response_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=response.catalog.search.view"
            + "&buddle_id=" + $("#buddle_id").val()
            + "&catalog_id=" + $("#catalog_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入目录响应失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入目录响应成功。", false);

                checkAll('span_check_catalog_response',
                    'span_check_select_catalog_response',
                    'catalog_response_check_select',
                    'check_all_catalog_response');

                locateRecord(record_code, 'catalog_response_check',
                    'catalog_response_select',
                    'showCatalogResponseSetting(\''+record_code+'\')');
            });
}

function showCatalogResponseSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=response.catalog.setting.view&code="
            + code + "&buddle_id=" + $("#buddle_id").val()
            + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示目录响应设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示目录响应设置界面成功。", false);

                $('#catalog_response_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processCatalogResponseSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_catalog_response_setting').validationEngine('validate')) {
        if ($('#code_catalog_response').val().length > 0) {
            $.request(httpHeader, '修改目录响应', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'response.catalog.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'position',
                'test_expression', 'is_for_each', 'select_expression',
                'response_format', 'start_symbol', 'end_symbol'),
                new Array('code_catalog_response',
                    'connection_code_catalog_response', 'buddle_id',
                    'catalog_id', 'catalog_response_position',
                    'catalog_response_test_expression',
                    'catalog_response_is_for_each',
                    'catalog_response_select_expression',
                    'catalog_response_response_format',
                    'catalog_response_start_symbol',
                    'catalog_response_end_symbol'), 'text', null, null,
                'catalogResponseSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增目录响应', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'response.catalog.setting.process'), new Array('buddle_id',
                'catalog_id', 'position', 'test_expression', 'is_for_each',
                'select_expression', 'response_format', 'start_symbol',
                'end_symbol'), new Array('buddle_id', 'catalog_id',
                'catalog_response_position',
                'catalog_response_test_expression',
                'catalog_response_is_for_each',
                'catalog_response_select_expression',
                'catalog_response_response_format',
                'catalog_response_start_symbol',
                'catalog_response_end_symbol'), 'text', null, null,
                'catalogResponseSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    catalogResponseSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onCatalogResponseSetting(responseText);
    }
});

/* 开始响应项目配置 */
function onResponseItemNaviagate(container_id, navigater_id, response_code) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#data_select_response_code").val(response_code);

    onResponseItemLoad('');
}

function onResponseItemLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onResponseItemManage(record_code);
    } else
        onResponseItemSetting(record_code);
}

function onResponseItemManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=response.item.navigate.view"
            + "&response_code="
            + $("#data_select_response_code").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航响应项目失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航响应项目成功。", false);

                // $("#" + $("#navigater_id").val() + "").removeAttr("onclick");

                $(".response_item_container").hide();

                $("#" + $("#container_id").val() + "").show();

                onResponseItemSetting(record_code);

            });
}

function onResponseItemSetting(record_code) {
    setRemoveSelectRecordButton('block', '响应项目','infoinge',
        'response.item.remove.process', 'response_item_record_code',
        'response_item_check_select', 'response_item_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=response.item.search.view"
            + "&response_code="
            + $("#data_select_response_code").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入响应项目失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入响应项目成功。", false);

                checkAll('span_check_response_item',
                    'span_check_select_response_item',
                    'response_item_check_select',
                    'check_all_response_item');

                locateRecord(record_code, 'response_item_check',
                    'response_item_select',
                    'showResponseItemSetting(\''+record_code+'\')');
            });
}

function showResponseItemSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=response.item.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示响应项目设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示响应项目设置界面成功。", false);

                $('#response_item_input_name').focus();

                if ($('#response_item_input_name').val() != ''
                    && $('#response_item_select_name').val() != '')
                    $('#response_item_input_name').val('');

                $('#response_item_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processResponseItemSetting() {
    if ($('#response_item_is_for_each').val()=='true'){
        $('#response_item_select_expression').addClass("validate[required]");
    }else {
        $('#response_item_select_expression').removeClass("validate[required]");
    }
    
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_response_item_setting').validationEngine('validate')) {
        if ($('#code_response_item').val().length > 0) {
            $.request(httpHeader, '修改响应项目', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'response.item.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id',
                'response_code', 'position', 'item_name',
                'test_expression', 'is_for_each', 'select_expression',
                'start_symbol', 'end_symbol'), new Array(
                'code_response_item', 'connection_code_response_item',
                'buddle_id', 'catalog_id', 'data_select_response_code',
                'response_item_position', 'response_item_name',
                'response_item_test_expression',
                'response_item_is_for_each',
                'response_item_select_expression',
                'response_item_start_symbol', 'response_item_end_symbol'),
                'text', null, null, 'responseItemSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增响应项目', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'response.item.setting.process'), new Array('buddle_id',
                'catalog_id', 'response_code', 'position', 'item_name',
                'test_expression', 'is_for_each', 'select_expression',
                'start_symbol', 'end_symbol'), new Array('buddle_id',
                'catalog_id', 'data_select_response_code',
                'response_item_position', 'response_item_name',
                'response_item_test_expression',
                'response_item_is_for_each',
                'response_item_select_expression',
                'response_item_start_symbol', 'response_item_end_symbol'),
                'text', null, null, 'responseItemSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    responseItemSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onResponseItemManage(responseText);
    }
});

/* 开始项目取值配置 */
function onItemValueNaviagate(container_id, navigater_id, item_code) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#data_select_item_code").val(item_code);

    onItemValueSetting('');
}

function onItemValueSetting(record_code) {
    setRemoveSelectRecordButton('block', '项目取值','infoinge', 'item.value.remove.process',
        'item_value_record_code', 'item_value_check_select',
        'item_value_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=item.value.search.view"
            + "&item_code=" + $("#data_select_item_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入项目取值失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入项目取值成功。", false);

                checkAll('span_check_item_value',
                    'span_check_select_item_value',
                    'item_value_check_select',
                    'check_all_item_value');
                locateRecord(record_code, 'item_value_check',
                    'item_value_select',
                    'showItemValueSetting(\''+record_code+'\')');
            });
}

function showItemValueSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=item.value.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&data_type="
            + $("#data_select_type").val()
            + "&data_connection_id="
            + $("#data_select_connection_id").val()
            + "&data_resource_name="
            + $("#data_select_resource_name").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示项目取值设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示项目取值设置界面成功。", false);

                $('#item_value_input_name').focus();

                if ($('#item_value_input_name').val() != ''
                    && $('#item_value_select_name').val() != '')
                    $('#item_value_input_name').val('');

                $('#item_value_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processItemValueSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_item_value_setting').validationEngine('validate')) {
        if ($('#code_item_value').val().length > 0) {
            $.request(httpHeader, '修改项目取值', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'item.value.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'item_code',
                'position', 'item_name', 'test_expression',
                'select_expression'), new Array('code_item_value',
                'connection_code_item_value', 'buddle_id', 'catalog_id',
                'data_select_item_code', 'item_value_position',
                'item_value_item_name', 'item_value_test_expression',
                'item_value_select_expression'), 'text', null, null,
                'itemValueSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增项目取值', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'item.value.setting.process'), new Array('buddle_id',
                'catalog_id', 'item_code', 'position', 'item_name',
                'test_expression', 'select_expression'), new Array(
                'buddle_id', 'catalog_id', 'data_select_item_code',
                'item_value_position', 'item_value_item_name',
                'item_value_test_expression',
                'item_value_select_expression'), 'text', null, null,
                'itemValueSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}

$.extend({
    itemValueSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onItemValueSetting(responseText);
    }
});

/*开始应用发布配置*/

function onBuddleissueNaviagate(container_id, navigater_id, buddle_id) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);

    onBuddleissueLoad('');
}

function onBuddleissueLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onBuddleissueManage(record_code);
    } else
        onBuddleissueSetting(record_code);
}

function onBuddleissueManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=buddle.issue.navigate.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航应用发布失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航异常响应成功。", false);

                onBuddleissueSetting(record_code);

            });
}

function onBuddleissueSetting(record_code) {
    setRemoveSelectRecordButton('block', '应用发布','infoinge',
        'buddle.issue.remove.process',
        'buddle_issue_record_code',
        'buddle_issue_check_select', 'buddle_issue_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=buddle.issue.search.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入应用发布失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入异常响应成功。", false);

                checkAll('span_check_buddle_issue',
                    'span_check_select_buddle_issue',
                    'buddle_issue_check_select',
                    'check_all_buddle_issue');

                locateRecord(record_code, 'buddle_issue_check',
                    'buddle_issue_select',
                    'showBuddleissueSetting(\''+record_code+'\')');
            });
}

function showBuddleissueSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=buddle.issue.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示应用发布设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示异常响应设置界面成功。", false);

                $('#buddle_issue_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

//应用发布调用日期插件
function onbuddle_issueDate() {
    var timer={
        elem: '#buddle_issue_join_time',
        format: 'YYYY-MM-DD hh:mm:ss',
        istime: true
    };
    laydate(timer);
}

function processBuddleissueSetting() {
//    if ($('#exception_response_is_for_each').val()=='true'){
//        $('#exception_response_select_expression').addClass("validate[required]");
//    }else {
//        $('#exception_response_select_expression').removeClass("validate[required]");
//    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）

    if  ($("#buddle_issue_run_start_minute").val() != '' && $("#buddle_issue_run_start_hour").val() == '') {
        alert("开始时间无效！");
    } else if ($("#buddle_issue_run_finish_minute").val() != '' && $("#buddle_issue_run_finish_hour").val() == '') {
        alert("结束时间无效！");
    } else if($("#buddle_issue_run_start_hour").val() != '' && $("#buddle_issue_run_finish_hour").val() == '') {
        alert("请输入结束时间！");
    } else if ($("#buddle_issue_run_finish_hour").val() != '' && $("#buddle_issue_run_start_hour").val() == '') {
        alert("请输入开始时间！");
    } else {
        if ($("#buddle_issue_run_start_hour").val() != '' && $("#buddle_issue_run_start_minute").val() == '')
            $("#buddle_issue_run_start_minute").val('00');
        if ($("#buddle_issue_run_finish_hour").val() != '' && $("#buddle_issue_run_finish_minute").val() == '')
            $("#buddle_issue_run_finish_minute").val('00');
    }
    if ($('#validate_buddle_issue_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#code_buddle_issue').val().length > 0) {
            $.request(httpHeader, '修改应用发布', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'buddle.issue.setting.process'), new Array('buddle_id','connection_id','code','frequentness', 'interval_time', 'run_start_hour',
                'run_start_minute', 'run_finish_hour', 'run_finish_minute',
                'is_running', 'join_time'),
                new Array('buddle_id','buddle_issue_connection_id','code_buddle_issue', 'buddle_issue_frequentness',
                    'buddle_issue_interval_time', 'buddle_issue_run_start_hour',
                    'buddle_issue_run_start_minute',
                    'buddle_issue_run_finish_hour',
                    'buddle_issue_run_finish_minute',
                    'buddle_issue_is_running',
                    'buddle_issue_join_time'), 'text', null,
                null, 'buddleissueSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增应用发布', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'buddle.issue.setting.process'), new Array('buddle_id','connection_id',
                'frequentness', 'interval_time', 'run_start_hour', 'run_start_minute',
                'run_finish_hour', 'run_finish_minute', 'is_running',
                'join_time'), new Array('buddle_id','buddle_issue_connection_id','buddle_issue_frequentness',
                'buddle_issue_interval_time', 'buddle_issue_run_start_hour',
                'buddle_issue_run_start_minute',
                'buddle_issue_run_finish_hour',
                'buddle_issue_run_finish_minute',
                'buddle_issue_is_running',
                'buddle_issue_join_time'), 'text', null, null,
                'buddleissueSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    buddleissueSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onBuddleissueSetting(responseText);
        // onDataManage(responseText);
        onBuddleissueManage(responseText);
    }
});


/* 开始异常响应配置 */
function onExceptionResponseNaviagate(container_id, navigater_id, buddle_id) {
    $("#container_id").val(container_id);
    $("#navigater_id").val(navigater_id);

    $("#buddle_id").val(buddle_id);

    onExceptionResponseLoad('');
}

function onExceptionResponseLoad(record_code) {
    if ($("#" + $("#container_id").val() + "").html().length == 0) {
        onExceptionResponseManage(record_code);
    } else
        onExceptionResponseSetting(record_code);
}

function onExceptionResponseManage(record_code) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=response.exception.navigate.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航异常响应失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("导航异常响应成功。", false);

                onExceptionResponseSetting(record_code);

            });
}

function onExceptionResponseSetting(record_code) {
    setRemoveSelectRecordButton('block', '异常响应','infoinge',
        'response.exception.remove.process',
        'exception_response_record_code',
        'exception_response_check_select', 'exception_response_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=response.exception.search.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入异常响应失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入异常响应成功。", false);

                checkAll('span_check_exception_response',
                    'span_check_select_exception_response',
                    'exception_response_check_select',
                    'check_all_exception_response');

                locateRecord(record_code, 'exception_response_check',
                    'exception_response_select',
                    'showExceptionResponseSetting(\''+record_code+'\')');
            });
}

function showExceptionResponseSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=response.exception.setting.view&code="
            + code + "&buddle_id="
            + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示异常响应设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示异常响应设置界面成功。", false);

                $('#exception_response_position').spinner({
                    max: 200,
                    min: 0,
                    step: 1
                });
            });
}

function processExceptionResponseSetting() {
    if ($('#exception_response_is_for_each').val()=='true'){
        $('#exception_response_select_expression').addClass("validate[required]");
    }else {
        $('#exception_response_select_expression').removeClass("validate[required]");
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_exception_response_setting').validationEngine('validate')) {
        if ($('#code_exception_response').val().length > 0) {
            $.request(httpHeader, '修改异常响应', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'response.exception.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'position',
                'test_expression', 'is_for_each', 'select_expression',
                'response_format', 'start_symbol', 'end_symbol'),
                new Array('code_exception_response',
                    'connection_code_exception_response', 'buddle_id',
                    'catalog_id', 'exception_response_position',
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
                'catalog.cludove'), new Array('infoinge',
                'response.exception.setting.process'), new Array(
                'buddle_id', 'catalog_id', 'position', 'test_expression',
                'is_for_each', 'select_expression', 'response_format',
                'start_symbol', 'end_symbol'), new Array('buddle_id',
                'catalog_id', 'exception_response_position',
                'exception_response_test_expression',
                'exception_response_is_for_each',
                'exception_response_select_expression',
                'exception_response_response_format',
                'exception_response_start_symbol',
                'exception_response_end_symbol'), 'text', null, null,
                'exceptionResponseSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    exceptionResponseSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onExceptionResponseSetting(responseText);
        // onDataManage(responseText);
        onExceptionResponseManage(responseText);
    }
});


/**开始作业监控**/
function onInfoingeJobMonitor() {
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove'), new Array('infoinge',
        'job.infoinge.monitor.search.view'),new Array(),new Array(), 'text', null, null,
        'showInfoingeJobMonitorSuccessCallback', 'normalErrorCallback');
}

$.extend({
    showInfoingeJobMonitorSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        showInfoingeJobMonitor(responseText)

    }
});



function showInfoingeJobMonitor(responseText) {
    var obj = eval('(' + responseText + ')');
    var nowDate = new Date();
    var nowYear = nowDate.getFullYear();
    var nowMonth;
    job.code = null;
    if (nowDate.getMonth() + 1 >= 10) {
        nowMonth = nowDate.getMonth() + 1
    } else {
        nowMonth = "0" + (nowDate.getMonth() + 1)
    }
    var nowDay = nowDate.getDate();
    if (nowDay < 10)
        nowDay = '0' + nowDay;

    var nowHour = nowDate.getHours();
    if (nowHour < 10)
        nowHour = '0' + nowHour;

    var nowMinute = nowDate.getMinutes();
    if (nowMinute < 10)
        nowMinute = '0' + nowMinute;

    var nowSecond = nowDate.getSeconds();
    if (nowSecond < 10)
        nowSecond = '0' + nowSecond;

    var nowTime = parseFloat(nowDate.getHours()) * 3600 + parseFloat(nowDate.getMinutes()) * 60;
    var executionHtml = '<div class="main_tab" job-status="execution"><h1 style="text-align: center;line-height:40px">正在进行的作业列表</h1><table><tr><th>作业名字</th><th>频度类型</th><th>间隔时间</th><th>加入时间</th><th>开始时间</th><th>结束时间</th><th>是否执行</th><th>操作</th></tr>';
    // console.log(executionHtml);
    var soonHtml = '<div class="main_tab" job-status="soon"><h1 style="text-align: center;line-height:40px">即将开始的作业列表</h1><table><tr><th>作业名字</th><th>频度类型</th><th>间隔时间</th><th>加入时间</th><th>开始时间</th><th>结束时间</th><th>是否执行</th><th>操作</th></tr>';
    var dormancyHtml = '<div class="main_tab" job-status="dormancy"><h1 style="text-align: center;line-height:40px">休眠作业的作业列表</h1><table><tr><th>作业名字</th><th>频度类型</th><th>间隔时间</th><th>加入时间</th><th>开始时间</th><th>结束时间</th><th>是否执行</th><th>操作</th></tr>';
    var endHtml = '<div class="main_tab" job-status="end"><h1 style="text-align: center;line-height:40px">已经结束的作业列表</h1><table><tr><th>作业名字</th><th>频度类型</th><th>间隔时间</th><th>加入时间</th><th>开始时间</th><th>结束时间</th><th>是否执行</th><th>操作</th></tr>';
    for (var i = 0; i <= obj.length - 1; i++) {
        if (obj[i].is_running == 'true') {
            var timer = Date.parse(new Date(obj[i].join_time));
            var start_time = parseFloat(obj[i].run_start_hour) * 3600 + parseFloat(obj[i].run_start_minute) * 60;
            var finish_time = parseFloat(obj[i].run_finish_hour) * 3600 + parseFloat(obj[i].run_finish_minute) * 60;
            var execution_time = finish_time - start_time;
            var run_start_hour = obj[i].run_start_hour;
            if (parseFloat(run_start_hour) < 10 && (run_start_hour.length == 1))
                run_start_hour = "0" + run_start_hour;

            var run_start_minute = obj[i].run_start_minute;
            if (parseFloat(run_start_minute) < 10 && (run_start_minute.length == 1))
                run_start_minute = "0" + run_start_minute;

            var run_finish_hour = obj[i].run_finish_hour;
            if (parseFloat(run_finish_hour) < 10 && (run_finish_hour.length == 1))
                run_finish_hour = "0" + run_finish_hour;

            var run_finish_minute = obj[i].run_finish_minute;
            if (parseFloat(run_finish_minute) < 10 && (run_finish_minute.length == 1))
                run_finish_minute = "0" + run_finish_minute;

            var html  = '';
            html += `<tr style="cursor:pointer" class="${obj[i].code}" data-frequentness="${obj[i].frequentness}">`;
            html += `<td>${obj[i].name}</td>`;
            if (obj[i].frequentness == 'year') {
                html += `<td>年</td>`;
            }else if (obj[i].frequentness == 'month'){
                html += `<td>月</td>`;
            }else if (obj[i].frequentness == 'day') {
                html += `<td>日</td>`;
            }else if (obj[i].frequentness == 'hour') {
                html += `<td>时</td>`;
            }else if (obj[i].frequentness == 'minute') {
                html += `<td>分</td>`;
            }else if (obj[i].frequentness == 'second') {
                html += `<td>秒</td>`;
            }

            html += `<td>${obj[i].interval_time}</td>`;
            html += `<td>${obj[i].join_time}</td>`;
            html += `<td>${run_start_hour}:${run_start_minute}</td>`;
            html += `<td>${run_finish_hour}:${run_finish_minute}</td>`;
            html += `<td>是</td>`;
            html += `<td><a class="a_add" href="javascript:void(0)" onclick="showJobCatalogMonitor(${obj[i].code})"><img is-click="true" src="infoinge/base/zh-cn/img/add.png"  style="width: 20px" title="作业功能"/></a></td>`;
            html += `</tr>`;
            if (obj[i].frequentness == 'year') {
                var join_year = obj[i].join_time.substring(0, 4);
                if ((parseFloat(nowYear) - parseFloat(join_year)) / (parseFloat(obj[i].interval_time)) >= 0) {
                    if (((parseFloat(nowYear) - parseFloat(join_year)) / (parseFloat(obj[i].interval_time)) - parseFloat((parseFloat(nowYear) - parseFloat(join_year)) / (parseFloat(obj[i].interval_time))) == 0)) {
                        if (obj[i].join_time.substring(5, 10) == nowMonth + "-" + nowDay) {
                            if ((start_time <= nowTime) && (finish_time >= nowTime)) {
                                executionHtml += html;
                            }

                            if ((start_time > nowTime) && ((start_time - (5 * 60)) < nowTime)) {
                                soonHtml += html;
                            }

                            if (start_time > nowTime && ((start_time - (5 * 60) > nowTime))) {
                                dormancyHtml += html;
                            }

                            if ((finish_time < nowTime) && ((finish_time + 300) < nowTime)) {
                                dormancyHtml += html;
                            }

                            if ((finish_time < nowTime) && ((finish_time + 300) > nowTime)) {
                                endHtml += html;
                            }
                        }else {
                            dormancyHtml += html;
                        }
                    } else {
                        dormancyHtml += html;
                    }
                }else {
                    dormancyHtml += html;
                }
            }
            if (obj[i].frequentness == 'month') {
                var join_year = obj[i].join_time.substring(0, 4);
                var join_month = obj[i].join_time.substring(5, 7);
                // console.log(parseFloat(obj[i].join_time.substring(5,7)))
                if ((parseFloat(nowYear) * 12 + parseFloat(nowMonth)) / (parseFloat(join_year) * 12 + parseFloat(join_month)) - parseInt((parseFloat(nowYear) * 12 + parseFloat(nowMonth)) / (parseFloat(join_year) * 12 + parseFloat(join_month))) == 0) {
                    if (obj[i].join_time.substring(8, 10) == nowDay) {
                        if ((start_time <= nowTime) && (finish_time >= nowTime)) {
                            executionHtml += html;
                            is_refresh = true;
                        }

                        if ((start_time > nowTime) && ((start_time - (5 * 60)) < nowTime)) {
                            soonHtml +=html;

                        }

                        if (start_time > nowTime && ((start_time - (5 * 60) > nowTime))) {
                            dormancyHtml += html;
                        }

                        if ((finish_time < nowTime) && ((finish_time + 300) < nowTime)) {
                            dormancyHtml += html;
                        }

                        if ((finish_time < nowTime) && ((finish_time + 300) > nowTime)) {
                            endHtml += html;
                        }
                    } else {
                        dormancyHtml += html;
                    }
                } else {
                    dormancyHtml += html;
                }
            }

            if (obj[i].frequentness == 'day' || obj[i].frequentness == 'hour' || obj[i].frequentness == 'minute' || obj[i].frequentness == 'second') {

                if (obj[i].frequentness == 'second')
                    nowTime = parseFloat(nowDate.getHours()) * 3600 + parseFloat(nowDate.getMinutes()) * 60 + parseFloat(nowDate.getSeconds());


                if ((start_time <= nowTime) && (finish_time >= nowTime)) {
                    executionHtml += html;
                    is_refresh = true;
                } else if ((start_time > nowTime) && ((start_time - (5 * 60)) < nowTime)) {
                    soonHtml += html;
                }else if (start_time > nowTime && ((start_time - (5 * 60) > nowTime))) {
                    dormancyHtml +=html;
                }else if ((finish_time < nowTime) && ((finish_time + 300) < nowTime)) {
                    dormancyHtml +=html;
                }else if ((finish_time < nowTime) && ((finish_time + 300) > nowTime)) {
                    endHtml += html;
                }else {
                    dormancyHtml += html;
                }

            }
        }
    }
    executionHtml+=`</table></div>`;
    soonHtml+=`</table></div>`;
    dormancyHtml+=`</table></div>`;
    endHtml+=`</table></div>`;
    $("#monitoring_center_main").css('display','none');
    $("#data_exception_main").css('display','none');
    $("#monitoring_job_main").css('display','block');
    $("#monitoring_job_main").html(executionHtml+soonHtml+dormancyHtml+endHtml);

    $("#monitoring_job_main").off('click');
    $("#monitoring_job_main").on("click","table tr[class]",function (e) {
        if ($(e.target).attr('is-click') != 'true') {
            var request_id = $(this).attr('class');
            var frequentness = $(this).attr('data-frequentness');
            onJobJournalExecuteEdit(request_id, frequentness, $(this).parent().parent().parent().attr('job-status'));
        }
    });

}

function onJobJournalEditLoad(request_id,frequentness,record_host,status) {
    var html = '';
    var nowDate = new Date();
    var nowYear = nowDate.getFullYear();
    var nowMonth;
    if (nowDate.getMonth() + 1 >= 10) {
        nowMonth = nowDate.getMonth() + 1
    } else {
        nowMonth = "0" + (nowDate.getMonth() + 1)
    }
    var nowDay = nowDate.getDate();
    if (nowDay < 10)
        nowDay = '0' + nowDay;


    html += `<div style="line-height: 24px;" id="${request_id}_journal_time">`;

    if (frequentness == 'year') {
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_year" id="${request_id}_job_frequentness_year" disabled="disabled" value="${nowYear}"/></p>`;
    }else if (frequentness == 'month'){
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_year" id="${request_id}_job_frequentness_year" disabled="disabled" value="${nowYear}"/></p>`;
    }else if (frequentness == 'day') {
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_year" id="${request_id}_job_frequentness_year" disabled="disabled" value="${nowYear}"/></p>`;
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_month" id="${request_id}_job_frequentness_month" disabled="disabled" value="${nowMonth}"/></p>`;
    }else if (frequentness == 'hour') {
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_year" id="${request_id}_job_frequentness_year" disabled="disabled" value="${nowYear}"/></p>`;
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_month" id="${request_id}_job_frequentness_month" disabled="disabled" value="${nowMonth}"/></p>`;
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_day" id="${request_id}_job_frequentness_day" disabled="disabled" value="${nowDay}"/></p>`;
    }else if (frequentness == 'minute') {
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_year" id="${request_id}_job_frequentness_year" disabled="disabled" value="${nowYear}"/></p>`;
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_month" id="${request_id}_job_frequentness_month" disabled="disabled" value="${nowMonth}"/></p>`;
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_day" id="${request_id}_job_frequentness_day" disabled="disabled" value="${nowDay}"/></p>`;
    }else if (frequentness == 'second') {
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_year" id="${request_id}_job_frequentness_year" disabled="disabled" value="${nowYear}"/></p>`;
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_month" id="${request_id}_job_frequentness_month" disabled="disabled" value="${nowMonth}"/></p>`;
        html += `<p style="display: inline-block; margin-left: 20px"><input style="width: 70px;text-align: center" type="text" class="job_frequentness_day" id="${request_id}_job_frequentness_day" disabled="disabled" value="${nowDay}"/></p>`;
    }
    html += `<div class="div_txt" style="display: inline-block; margin-left: 20px"><div class="div_btn"><a href="javascript:void(0)" style="float: none;line-height: 24px;width: 100px;" onclick="onChangeJobJournalRecord(${request_id})">查询</a></div></div>`;
    html += `</div>`;

    $("#journal_main_time").html(html)
    $('.job_frequentness_year').spinner({
        max: nowYear,
        min: 1,
        step: 1
    });
    $('.job_frequentness_month').spinner({
        max: 12,
        min: 1,
        step: 1
    });
    $('.job_frequentness_day').spinner({
        max: 31,
        min: 1,
        step: 1
    });
    $('.job_frequentness_hour').spinner({
        max: 59,
        min: 0,
        step: 1
    });
    $('.job_frequentness_minute').spinner({
        max: 59,
        min: 0,
        step: 1
    });
    $('.job_frequentness_second').spinner({
        max: 59,
        min: 0,
        step: 1
    });
    onChangeJobJournalRecord(request_id);
    if (status == 'execution'){
        setInterval(function () {
            onChangeJobJournalRecord(request_id);
        },10000)
    }

}

function onChangeJobJournalRecord(request_id) {
    var journal_record_id = request_id + "_journal_record";
    var record_year = $("#" + request_id +"_job_frequentness_year").val();
    var record_month = $("#" + request_id +"_job_frequentness_month").val();
    var record_day = $("#" + request_id +"_job_frequentness_day").val();
    
    if (record_month == undefined)
        record_month = '';

    if (record_day == undefined)
        record_day = '';

    var record_host = $("#record_host").val();

    showJobJournalRecord(journal_record_id,request_id,record_year,record_month,record_day,record_host);
}

//显示作业日志记录表格
function showJobJournalRecord(journal_record_id,request_id,record_year,record_month,record_day,record_host) {
    $("#journal_main_content")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=job.journal.search.view&journal_type=6"
            +"&record_year=" + record_year +"&record_month=" + record_month
            +"&record_day=" + record_day
            +"&record_host=" + record_host
            +"&request_id=" + request_id
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    console.log(data);
                    hintError("查询作业功能日志记录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    if ($("#journal_execute_id").val() != '' ) {
                       $("#" + $("#journal_execute_id").val() + "_journal_execute_container").prev().trigger('click');
                        $(document).scrollTop(parseFloat($("#journal_execute_top").val()));
                    }
                }
                    ;
            })
}


//跳转作业日志记录界面
function onJobJournalExecuteEdit(request_id,frequentness,status) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=job.journal.execute.edit.view"
        + "&request_id=" + request_id
        + "&frequentness=" + frequentness
        + "&status=" + status
        +"&record_host=" + $("#console_hinge_host").val(); //转向网页的地址;
    var name = "作业日志记录"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.85; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function openJournal(request_id,record_year,record_month,record_day,record_hour,record_minute,record_second,record_host,buddle_id,catalog_id,position,process_index) {
        var url = httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=job.journal.show.view"
            + "&request_id="+request_id
            + "&record_year="+record_year
            + "&record_month="+record_month
            + "&record_day="+record_day
            + "&record_hour="+record_hour
            + "&record_minute="+record_minute
            + "&record_second="+record_second
            +"&record_host=" + record_host
            + "&buddle_id="+buddle_id
            +"&catalog_id=" + catalog_id; //转向网页的地址;
        
        if (position!='' && process_index!=''){
            url = httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=job.journal.show.view"
                + "&request_id="+request_id
                + "&record_year="+record_year
                + "&record_month="+record_month
                + "&record_day="+record_day
                + "&record_hour="+record_hour
                + "&record_minute="+record_minute
                + "&record_second="+record_second
                +"&record_host=" + record_host
                + "&buddle_id="+buddle_id
                +"&catalog_id=" + catalog_id
                +"&position=" +position
                +"&process_index="+process_index; //转向网页的地址;
        }else if(position!='') {
            url = httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=job.journal.show.view"
                + "&request_id="+request_id
                + "&record_year="+record_year
                + "&record_month="+record_month
                + "&record_day="+record_day
                + "&record_hour="+record_hour
                + "&record_minute="+record_minute
                + "&record_second="+record_second
                +"&record_host=" + record_host
                + "&buddle_id="+buddle_id
                +"&catalog_id=" + catalog_id
                +"&position=" +position; //转向网页的地址;
        }else if (process_index!=''){
            url = httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=job.journal.show.view"
                + "&request_id="+request_id
                + "&record_year="+record_year
                + "&record_month="+record_month
                + "&record_day="+record_day
                + "&record_hour="+record_hour
                + "&record_minute="+record_minute
                + "&record_second="+record_second
                +"&record_host=" + record_host
                + "&buddle_id="+buddle_id
                +"&catalog_id=" + catalog_id
                +"&process_index="+process_index; //转向网页的地址;
        }

        var name = "作业执行记录"; //网页名称，可为空;
        var iWidth = window.screen.width * 0.7; //弹出窗口的宽度;
        var iHeight = window.screen.height * 0.7; //弹出窗口的高度;
        var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
        var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

        window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
            + iWidth + ',top=' + iTop + ',left=' + iLeft
            + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}


// 显示作业执行记录表格
function showJobJournalExecute(code,request_id,record_year,record_month,record_day,record_host) {
        $("#" + code +"_journal_execute")
            .load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=job.journal.search.view&journal_type=5"
                +"&record_year=" + record_year +"&record_month=" + record_month
                +"&record_day=" + record_day
                +"&record_host=" + record_host
                +"&request_id=" + request_id
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        console.log(data);
                        hintError("查询作业功能执行记录失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if (data == ""){
                            $("#" + code +"_journal_execute_container").css('display','none')
                        }else {
                            if ( $("#" + code +"_journal_execute_container").css('display') == 'none'){
                               $(".journal_execute_container").css('display','none');
                                $("#" + code +"_journal_execute_container").removeAttr('style');
                                $("#journal_execute_id").val(code);
                                $("#journal_execute_top").val($(this).parent().parent().prev().offset().top)
                            }else {
                                $("#" + code +"_journal_execute_container").css('display','none');
                                $("#journal_execute_id").val('')
                            }
                            // $("#" + code +"_journal_execute_container").toggle()
                        }

                        $("#" + code +"_journal_execute tr td").css('background','#fff')
                    };
                })
    
    
}


var monitorJob={
    t:null,
    myDiagram:null,
    init:function (code) {
        var g = go.GraphObject.make;  // for conciseness in defining templates
        monitorJob.t=g;
        var yellowgrad = g(go.Brush, "Linear", { 0: "rgb(254, 201, 0)", 1: "rgb(254, 162, 0)" });
        var greengrad = g(go.Brush, "Linear", { 0: "#98FB98", 1: "#9ACD32" });
        var bluegrad = g(go.Brush, "Linear", { 0: "#B0E0E6", 1: "#87CEEB" });
        var redgrad = g(go.Brush, "Linear", { 0: "#C45245", 1: "#871E1B" });
        var whitegrad = g(go.Brush, "Linear", { 0: "#F0F8FF", 1: "#E6E6FA" });

        var bigfont = "bold 13pt Helvetica, Arial, sans-serif";
        var smallfont = "bold 11pt Helvetica, Arial, sans-serif";

        // Common text styling
        function textStyle() {
            return {
                margin: 6,
                wrap: go.TextBlock.WrapFit,
                textAlign: "center",
                font: bigfont
            }
        }

        monitorJob.myDiagram =
            g(go.Diagram, "myDiagramDiv",
                {
                    // have mouse wheel events zoom in and out instead of scroll up and down
                    "toolManager.mouseWheelBehavior": go.ToolManager.WheelZoom,
                    allowDrop: true,  // support drag-and-drop from the Palette
                    initialAutoScale: go.Diagram.Uniform,
                    "linkingTool.direction": go.LinkingTool.ForwardsOnly,
                    initialContentAlignment: go.Spot.Center,
                    layout: g(go.LayeredDigraphLayout, { isInitial: true, isOngoing: false, layerSpacing: 50 }),
                    "SelectionDeleting":function (obj) {
                        obj.diagram.allowDelete=false;
                    },
                    "undoManager.isEnabled": true
                });
        monitorJob.myDiagram.nodeTemplate =
            g(go.Node, "Auto",
//                     { selectionAdornmentTemplate: defaultAdornment },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // define the node's outer shape, which will surround the TextBlock
                g(go.Shape, "Rectangle",
                    { fill: yellowgrad, stroke: "black",
                        portId: "", fromLinkable: true, toLinkable: true, cursor: "pointer",
                        toEndSegmentLength: 50, fromEndSegmentLength: 40 }),
                g(go.TextBlock, "Page",
                    { margin: 6,
                        font: bigfont},
                    new go.Binding("text", "text").makeTwoWay()));

        monitorJob.myDiagram.nodeTemplateMap.add("Source",
            g(go.Node, "Auto",
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                g(go.Shape, "RoundedRectangle",
                    { fill: bluegrad,
                        portId: "", fromLinkable: true, cursor: "pointer", fromEndSegmentLength: 40}),
                g(go.TextBlock, "Source", textStyle(),
                    new go.Binding("text", "text").makeTwoWay())
            ));

        monitorJob.myDiagram.nodeTemplateMap.add("DesiredEvent",
            g(go.Node, "Auto",
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                g(go.Shape, "RoundedRectangle",
                    { fill: greengrad, portId: "", toLinkable: true, toEndSegmentLength: 50 }),
                g(go.TextBlock, "Success!", textStyle(),
                    new go.Binding("text", "text").makeTwoWay())
            ));

        // Undesired events have a special adornment that allows adding additional "reasons"
        var UndesiredEventAdornment =
            g(go.Adornment, "Spot",
                g(go.Panel, "Auto",
                    g(go.Shape, { fill: null, stroke: "dodgerblue", strokeWidth: 4 }),
                    g(go.Placeholder))
                // the button to create a "next" node, at the top-right corner
//                     g("Button",
//                             { alignment: go.Spot.BottomRight,
//                                 click: addReason },  // this function is defined below
//                             new go.Binding("visible", "", function(a) { return !a.diagram.isReadOnly; }).ofObject(),
//                             g(go.Shape, "TriangleDown", { desiredSize: new go.Size(10, 10) })
//                     )
            );

        var reasonTemplate = g(go.Panel, "Horizontal",
            g(go.TextBlock, "Reason",
                {
                    margin: new go.Margin(4,0,0,0),
                    maxSize: new go.Size(200, NaN),
                    wrap: go.TextBlock.WrapFit,
                    stroke: "whitesmoke",
                    font: smallfont
                },
                new go.Binding("text", "text").makeTwoWay())
        );


        monitorJob.myDiagram.nodeTemplateMap.add("UndesiredEvent",
            g(go.Node, "Auto",
                {"click":function (a,data) {
                    onJobCatalogSetting(data.data.key)
                }},
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                { selectionAdornmentTemplate: UndesiredEventAdornment },
                g(go.Shape, "RoundedRectangle",
                    { fill: redgrad, portId: "", toLinkable: true, toEndSegmentLength: 50 }),
                g(go.Panel, "Vertical", {defaultAlignment: go.Spot.TopLeft},

                    g(go.Panel, "Vertical",
                        { defaultAlignment: go.Spot.TopLeft,
                            itemTemplate: reasonTemplate },
                        new go.Binding("itemArray", "reasonsList").makeTwoWay()
                    )
                )
            ));

        monitorJob.myDiagram.nodeTemplateMap.add("Comment",
            g(go.Node, "Auto",
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                g(go.Shape, "Rectangle",
                    { portId: "", fill: whitegrad, fromLinkable: true }),
                g(go.TextBlock, "A comment",
                    { margin: 9,
                        maxSize: new go.Size(200, NaN),
                        wrap: go.TextBlock.WrapFit,
                        font: smallfont },
                    new go.Binding("text", "text").makeTwoWay())
                // no ports, because no links are allowed to connect with a comment
            ));
        monitorJob.myDiagram.linkTemplate =
            g(go.Link,  // the whole link panel
                new go.Binding("points").makeTwoWay(),
                { curve: go.Link.Bezier, toShortLength: 15 },
                new go.Binding("curviness", "curviness"),
                g(go.Shape,  // the link shape
                    { stroke: "#2F4F4F", strokeWidth: 2.5 }),
                g(go.Shape,  // the arrowhead
                    { toArrow: "kite", fill: "#2F4F4F", stroke: null, scale: 2 })
            );

        monitorJob.myDiagram.linkTemplateMap.add("Comment",
            g(go.Link, { selectable: false },
                g(go.Shape, { strokeWidth: 2, stroke: "darkgreen" })));
        monitorJob.onJobData();
    },
    onJobData:function (code) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove','job_code'), new Array('infoinge',
            'job.catalog.monitor.search.view'), new Array('job_code'), new Array('code_job'), 'text', null, null,
            'showJobDataSettingSuccessCallback', 'normalErrorCallback');
    },
    Drawing:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var linkData=[];
        for (var i = 0 ;i <= obj[1].length-1;i++){
            linkData[i] = new Array();
            linkData[i].from = obj[1][i].key;
            for (var r = 0;r <= obj[1].length-1;r++){
                if(parseFloat(obj[1][i].position) < obj[1][r].position){
                    linkData[i].to = obj[1][r].key;
                    break;
                }
            }
        }
        monitorJob.myDiagram.model =
            monitorJob.t(go.GraphLinksModel,
                {copiesArrays: true,
                    copiesArrayObjects: true,
                    nodeDataArray:obj[0],
                    linkDataArray: linkData
                });
        // console.log(job.t)
    }
};

function onJobMonitorEdit(code) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=job.catalog.monitor.edit.view"
        + "&code="+code; //转向网页的地址;
    var name = "作业监控"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.85; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function showJobCatalogMonitor(code) {
    // var code = $(this).attr("class");

    onJobMonitorEdit(code)
    
}

/**********跳转模型设计界面***********/

function onModelEdit(buddle_id,catalog_id,type) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=model.edit.view"
        + "&buddle_id="+buddle_id + "&catalog_id="+catalog_id + "&type="+type; //转向网页的地址;
    var name = "作业监控"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.85; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;
    console.log(url);
    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}


//=-=-=-=-=-=-=-= 数据异常查看  =-=-=-=-=-=-=-=
setInterval("onDataExceptionCount()","60000");
function onDataExceptionCount() {
    $('#data_exception_count')
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=exception.count.view&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据异常失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                // $('#data_exception_count').attr('class','data_exception_count_style');
                //     $('#data_exception_count').text($('#data_exception_number').val());
                if (data == '' || data == 0){
                    $('#data_exception_count').removeClass('data_exception_count_style');
                    $('#data_exception_count').text('');
                } else
                    $('#data_exception_count').attr('class','data_exception_count_style');
                ;
            });
}
function dataExceptionShow() {
    $("#monitoring_center_main").hide();
    $("#monitoring_job_main").hide();
    $("#data_exception_main").show();
    $("#data_exception_main")
        .load(
            httpHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=exception.search.view&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据异常失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    // $('#data_exception_count').attr('class','data_exception_count_style');
                    // $('#data_exception_count').text($('#data_exception_number').val());
                    ;

            });
}

/************ 标识验证函数 ***********/
function validateIdentifier(val,reg,reg1){
    var isRight = true;
    if(reg.test(val.substring(0,1)) && reg.test(val.substring(val.length-1))){
        for(var i=0, j=Math.floor(val.length/20); i<=j;i++){
            if(isRight){
                if(val.substring(20*i,20*i+20)!=''){
                    if(reg1.test(val.substring(20*i,20*i+20))){
                        isRight=true;
                    }else{
                        isRight=false;
                    }
                }
            }else{
                break;
            }
        }
    }else{
        isRight=false;
    }
    return isRight;
}