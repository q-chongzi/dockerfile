function onCatalogInfoapiSetting(record_code) {
    setRemoveSelectRecordButton('block', '数据参数','infoinge',
        'parameter.catalog.remove.process', 'catalog_parameter_record_code',
        'catalog_parameter_check_select', 'catalog_parameter_select');
    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=parameter.catalog.search.view"
            + "&buddle_id=" + $("#buddle_id").val() + "&catalog_id="
            + $("#catalog_id").val() + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入目录样式单失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入目录样式单成功。", false);
                checkAll('span_check_catalog_parameter',
                    'span_check_select_catalog_parameter',
                    'catalog_parameter_check_select',
                    'check_all_catalog_parameter');
                locateRecord(record_code, 'catalog_parameter_check',
                    'catalog_parameter_select', 'showCatalogParameterSetting(\'' + record_code + '\')');

            });
    many=17;
}

function showCatalogParameterSetting(code) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=parameter.catalog.setting.view&code="
            + code + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据参数设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示数据参数设置界面成功。", false);
                $('#catalog_parameter_parameter_length').spinner({
                    max: 999999999,
                    min: 0,
                    step: 1
                });
            });
}

function processCatalogParameterSetting() {
    if ($('#validate_catalog_parameter_setting').validationEngine('validate')) {
        if ($('#code_catalog_parameter').val().length > 0) {
            $.request(httpHeader, '修改功能参数', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'parameter.catalog.setting.process'), new Array('code','buddle_id','catalog_id',
                'parameter_name', 'parameter_length', 'is_must','is_parameter'),
                new Array('code_catalog_parameter','buddle_id','catalog_id', 'catalog_parameter_paramter_name', 'catalog_parameter_parameter_length',
                    'catalog_parameter_is_must','catalog_parameter_is_parameter'), 'text',
                null, null, 'catalogCatalogParameterSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增功能参数', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'parameter.catalog.setting.process'),
                new Array('buddle_id','catalog_id','parameter_name', 'parameter_length', 'is_must','is_parameter'),
                new Array('buddle_id','catalog_id','catalog_parameter_paramter_name', 'catalog_parameter_parameter_length',
                    'catalog_parameter_is_must','catalog_parameter_is_parameter'), 'text',
                null, null, 'catalogCatalogParameterSuccessCallback', 'normalErrorCallback');
        }
    }
}
$.extend({
    catalogCatalogParameterSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onCatalogInfoapiSetting(responseText);
    }
});

function onCatalogParameterEdit(code,buddle_id, catalog_id) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=parameter.catalog.edit.view&code="
       +code + "&buddle_id=" + buddle_id + "&catalog_id="
        + catalog_id; //转向网页的地址;
    var name = "功能参数内容"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.75; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.75; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = 20; //获得窗口的水平位置;

    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function processCatalogParameterEdit() {
    var base64 = new Base64();
    var requirement = base64.encode(UE.getEditor('catalog_parameter_requirement').getContent());

        $.request(httpHeader, '修改功能参数内容', new Array('buddle.cludove',
            'catalog.cludove', 'requirement'), new Array('infoinge',
            'parameter.catalog.edit.process', requirement), new Array('code',
            'buddle_id', 'catalog_id'),
            new Array('code_catalog_parameter', 'buddle_id', 'catalog_id'), 'text',
            null, null, 'catalogReturnSettingSuccessCallback', 'normalErrorCallback');
}

$.extend({
    catalogParameterReturnSettingSuccessCallback: function (responseText) {
        $('#code_catalog_parameter').val(responseText);
    }
});

