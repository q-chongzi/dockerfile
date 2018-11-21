//判断选择字段标注
var choice_id = '';

function disabledButton() {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
}

function enableButton() {
    $("#now_remove").hide();
    $("#ajax_loader_remove").hide();
}


// 在指定位置载入资源连接
function onResourceConnectionSelect(select_id, type, select_blank,
                                    on_resource_connection_select) {
    $("#" + select_id + "")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.select.view"
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


/* 开始控制讯枢节点 */
function onConsoleHingeChange() {
    $.request(httpHeader, '改变监控讯枢节点', new Array('buddle.cludove',
        'catalog.cludove'), new Array('diginter', 'resource.connection.show.view'), new Array('code'),
        new Array('console_hinge_select'), 'text', null, null, 'consoleHingeChangeSuccessCallback',
        'normalErrorCallback');
}

$.extend({
    consoleHingeChangeSuccessCallback: function (responseText) {
        var resource_connection = eval('(' + responseText + ')');
        if (resource_connection != null) {
            httpHeader = resource_connection.http_header.substring(0, resource_connection.http_header.length - 1);

            $('#console_hinge_host').val(resource_connection.host);

            $('#journal_navigate_type').val(-1);

        }
    }
});

// 业务模型下图标的更换
function modifyIcon() {
    const toGuide = $("#toGuide").attr("href");  //定义跳转到操作指南http常量

    $("#service_nav_add").click(function () {
        if ($(".configure-fr-one").css('display') == 'none') {
            onCatalogSetting('', '');
        } else
            $(".configure-fr-one").hide();
    });

    $('.service-tit').on('click', 'ul li a', function () {
        $(".configure-fr-one").hide();
        var class_name = $(this).attr('class');
        $("#service_nav_add").off('click');
        if ($(this).parent().hasClass('tit-active') != 'true') {
            $(this).parent().addClass('tit-active');
            $(this).parent().siblings('li').removeClass('tit-active');
        } else {
            $(this).parent().siblings('li').removeClass('tit-active');
        }
        $("#service_nav").prev().attr('class', class_name);
        if (class_name == 'service8') {
            $("#service_nav").text('业务模型');
            $("#service_nav_add").attr('title', '新增业务模型');
            $("#resource_type").val('');
            $("#resource_hinge_type").val('');
            $('#removeSelectRecordBusiness').parent().hide();
            $("#toGuideBusiness").attr("href", toGuide + "business");
            onResourceConnectionManage();
            $("#service_nav_add").click(function () {
                if ($(".configure-fr-one").css('display') == 'block')
                    $(".configure-fr-one").hide();
                else
                    onCatalogSetting('', '');
            });
        } else if (class_name == 'service3') {
            $("#service_nav").text('数据库');
            $("#service_nav_add").attr('title', '新增数据库');
            $("#resource_type").val('DB');
            $("#resource_hinge_type").val('DB');
            $('#removeSelectRecordBusiness').parent().hide();
            $("#toGuideBusiness").attr("href", toGuide + "database");
            onResourceDecomposingSetting($("#resource_type").val(), $("#resource_hinge_type").val());
            $("#service_nav_add").click(function () {
                if ($(".configure-fr-one").css('display') == 'block')
                    $(".configure-fr-one").hide();
                else
                    showResourceDecomposingSetting('', $("#resource_type").val(), $("#resource_hinge_type").val());
            });
        } else if (class_name == 'service4') {
            $("#service_nav").text('集成节点');
            $("#service_nav_add").attr('title', '新增集成节点');
            $("#resource_type").val('Hinge');
            $("#resource_hinge_type").val('Integrate');
            $('#removeSelectRecordBusiness').parent().hide();
            $("#toGuideBusiness").attr("href", toGuide + "integration");
            onResourceDecomposingSetting($("#resource_type").val(), $("#resource_hinge_type").val());
            $("#service_nav_add").click(function () {
                if ($(".configure-fr-one").css('display') == 'block')
                    $(".configure-fr-one").hide();
                else
                    showResourceDecomposingSetting('', $("#resource_type").val(), $("#resource_hinge_type").val());
            });
        } else if (class_name == 'service5') {
            $("#service_nav").text('集群节点');
            $("#service_nav_add").attr('title', '新增集群节点');
            $("#resource_type").val('Hinge');
            $("#resource_hinge_type").val('Colony');
            $('#removeSelectRecordBusiness').parent().hide();
            $("#toGuideBusiness").attr("href", toGuide + "colony");
            onResourceDecomposingSetting($("#resource_type").val(), $("#resource_hinge_type").val());
            $("#service_nav_add").click(function () {
                if ($(".configure-fr-one").css('display') == 'block')
                    $(".configure-fr-one").hide();
                else
                    showResourceDecomposingSetting('', $("#resource_type").val(), $("#resource_hinge_type").val());
            });
        } else if (class_name == 'service6') {
            $('#removeSelectRecordBusiness').parent().hide();
            $("#service_nav").text('总线节点');
            $("#service_nav_add").attr('title', '新增总线节点');
            $("#resource_type").val('Hinge');
            $("#resource_hinge_type").val('DSB');
            $("#toGuideBusiness").attr("href", toGuide + "dsb");
            onResourceDecomposingSetting($("#resource_type").val(), $("#resource_hinge_type").val());
            $("#service_nav_add").click(function () {
                if ($(".configure-fr-one").css('display') == 'block')
                    $(".configure-fr-one").hide();
                else
                    showResourceDecomposingSetting('', $("#resource_type").val(), $("#resource_hinge_type").val());
            });
        } else if (class_name == 'service7') {
            $("#service_nav").text('异常标注');
            $("#service_nav_add").attr('title', '新增异常标注');
            $("#resource_type").val('');
            $("#resource_hinge_type").val('');
        } else if (class_name == 'service10') {
            $('#removeSelectRecordBusiness').parent().show();
            $("#service_nav").text('作业管理');
            $("#service_nav_add").attr('title', '新增作业管理');
            $("#resource_type").val('');
            $("#resource_hinge_type").val('');
            $("#toGuideBusiness").attr("href", toGuide + "job");
            onJobSetting();
            $("#service_nav_add").click(function () {
                if ($(".configure-fr-one").css('display') == 'block')
                    $(".configure-fr-one").hide();
                else
                    showJobSetting();
            });
        } else if (class_name == 'service14') {
            $('#removeSelectRecordBusiness').parent().show();
            $("#service_nav").text('异常响应');
            $("#service_nav_add").attr('title', '新增异常响应');
            $("#resource_type").val('');
            $("#resource_hinge_type").val('');
            $("#toGuideBusiness").attr("href", toGuide + "exception");
            onExceptionResponseSearch('');
            $("#service_nav_add").click(function () {
                if ($(".configure-fr-one").css('display') == 'block')
                    $(".configure-fr-one").hide();
                else
                    onExceptionResponseSetting('');
            });
        }/* else if (class_name == 'service9') {
         $('#removeSelectRecordBusiness').parent().hide();
         $("#service_nav").attr('title', '应用下载');
         $("#resource_type").val('');
         $("#resource_hinge_type").val('');
         }*/ else if (class_name == 'service12') {
            $('#removeSelectRecordBusiness').parent().hide();
            $("#toGuideBusiness").attr("href", toGuide + "upload");
            $("#service_nav").text('应用上传');
            $("#resource_type").val('');
            $("#resource_hinge_type").val('');
        }

        if (class_name == 'service5' || class_name == 'service9' || class_name == 'service12') {
            $('#removeSelectRecordBusiness').parent().prev().hide();
        } else if (class_name != 'service6') {
            $('#removeSelectRecordBusiness').parent().prev().show();
        }

        if (class_name != 'service8')
            $('#resource_connection_navigate').hide();

        if (class_name == 'service12') {
            if ($('.upload').is(':hidden')) $('.upload').show(); else $('.upload').hide();
        } else
            $('.upload').hide();

    });

    $("#basics_nav_add").click(function () {
        if ($("#basics_setting").css('display') == 'none') {
            showProcessorSetting('', $("input[name='p_type']:checked").attr("p_type"));
        } else
            $("#basics_setting").css('display', 'none')

    });

    $('.basics-tit').on('click', 'ul li a', function () {
        $("#basics_setting").hide();
        var class_name = $(this).attr('class');
        $("#basics_nav_add").off('click');
        // $(".basics-tit2 .basics1").click(function(){
        //     $(".configure-fr-one").toggle();
        // });
        $("#basics_nav").attr('class', class_name);
        if (class_name == 'basics1') {
            $('#removeSelectRecordBasic').parent().show();
            $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
            $(".basics-tit .basics1").addClass("basics1_active");
            $("#basics_nav").attr('title', '驱动处理');
            $("#basics_nav_add").attr('title', '新增驱动处理');
            $('#diginter_basic_setup li').css('background-color', '#ffffff');
            $('#diginter_basic_setup a').css('color', '#000000');
            $('#diginter_drive_processing').css('background-color', '#5cb9f8');
            $('#diginter_drive_processing').children('a').css('color', "#ffffff");
            $("#toGuide").attr("href", toGuide + "processor");
            onProcessSearchMain('DB');
            $("#basics_nav_add").click(function () {
                if ($("#basics_setting").css('display') == 'none') {
                    showProcessorSetting('', $("input[name='p_type']:checked").attr("p_type"));
                } else
                    $("#basics_setting").css('display', 'none')

            });
        } else if (class_name == 'basics2') {
            $('#removeSelectRecordBasic').parent().hide();
            $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
            $(".basics-tit .basics2").addClass("basics2_active");
            $("#basics_nav").attr('title', '系统词表');
            $("#basics_nav_add").attr('title', '新增系统词表');
            $('#diginter_basic_setup li').css('background-color', '#ffffff');
            $('#diginter_basic_setup a').css('color', '#000000');
            $('#diginter_system_word_list').css('background-color', '#5cb9f8');
            $('#diginter_system_word_list').children('a').css('color', "#ffffff");
            $("#toGuide").attr("href", toGuide + "vocabulary");
            onVocabularySetting();
            $("#basics_nav_add").click(function () {
                if ($("#basics_setting").css('display') == 'none') {
                    showVocabularySetting('');
                } else
                    $("#basics_setting").css('display', 'none')
            });
        }
        else if (class_name == 'basics5') {
            $('#removeSelectRecordBasic').parent().show();
            $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
            $(".basics-tit .basics5").addClass("basics5_active");
            $("#basics_nav").attr('title', '界面风格');
            $("#basics_nav_add").attr('title', '新增界面风格');
            $('#diginter_basic_setup li').css('background-color', '#ffffff');
            $('#diginter_basic_setup a').css('color', '#000000');
            $('#diginter_interface_style').css('background-color', '#5cb9f8');
            $('#diginter_interface_style').children('a').css('color', "#ffffff");
            $("#toGuide").attr("href", toGuide + "style");
            onStyleSetting();
            $("#basics_nav_add").click(function () {
                if ($("#basics_setting").css('display') == 'none') {
                    showStyleSetting('');
                    $("#basics_setting").css('display', 'block')
                } else
                    $("#basics_setting").css('display', 'none')
            });

        } else if (class_name == 'basics6') {
            $('#removeSelectRecordBasic').parent().show();
            $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
            $(".basics-tit .basics6").addClass("basics6_active");
            $("#basics_nav").attr('title', '语言支持');
            $("#basics_nav_add").attr('title', '新增语言支持');
            $('#diginter_basic_setup li').css('background-color', '#ffffff');
            $('#diginter_basic_setup a').css('color', '#000000');
            $('#diginter_language_support').css('background-color', '#5cb9f8');
            $('#diginter_language_support').children('a').css('color', "#ffffff");
            $("#toGuide").attr("href", toGuide + "language");
            onLanguageSetting();
            $("#basics_nav_add").click(function () {
                if ($("#basics_setting").css('display') == 'none') {
                    showLanguageSetting('');
                    $("#basics_setting").css('display', 'block')
                } else
                    $("#basics_setting").css('display', 'none')
            });

        } else if (class_name == 'basics7') {
            $('#removeSelectRecordBasic').parent().show();
            $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
            $(".basics-tit .basics7").addClass("basics7_active");
            $("#basics_nav").attr('title', '清洗规则');
            $("#basics_nav_add").attr('title', '新增清洗规则');
            $('#diginter_basic_setup li').css('background-color', '#ffffff');
            $('#diginter_basic_setup a').css('color', '#000000');
            $('#diginter_cleaning_rules').css('background-color', '#5cb9f8');
            $('#diginter_cleaning_rules').children('a').css('color', "#ffffff");
            $("#toGuide").attr("href", toGuide + "cleanout");
            onCleanoutSearch();
            $("#basics_nav_add").click(function () {
                if ($("#basics_setting").css('display') == 'none') {
                    showCleanoutSetting('');
                    $("#basics_setting").css('display', 'block')
                } else
                    $("#basics_setting").css('display', 'none')
            });

        } else if (class_name == 'basics8') {
            $('#removeSelectRecordBasic').parent().show();
            $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
            $(".basics-tit .basics8").addClass("basics8_active");
            $("#basics_nav").attr('title', '验证规则');
            $("#basics_nav_add").attr('title', '新增验证规则');
            $('#diginter_basic_setup li').css('background-color', '#ffffff');
            $('#diginter_basic_setup a').css('color', '#000000');
            $('#diginter_validation_rules').css('background-color', '#5cb9f8');
            $('#diginter_validation_rules').children('a').css('color', "#ffffff");
            $("#toGuide").attr("href", toGuide + "verify");
            onVerifySetting('');
            $("#basics_nav_add").click(function () {
                if ($("#basics_setting").css('display') == 'none') {
                    showVerifySetting('');
                    $("#basics_setting").css('display', 'block')
                } else
                    $("#basics_setting").css('display', 'none')
            });
        }
    });

    // 基本设置左侧菜单
    $('#diginter_drive_processing').css('background-color', '#5cb9f8');
    $('#diginter_drive_processing').children('a').css('color', "#ffffff");
    $(this).css('background-color', '#5cb9f8');
    $('#diginter_drive_processing').click(function () {
        $('#removeSelectRecordBasic').parent().show();
        $('#diginter_basic_setup li').css('background-color', '#ffffff');
        $('#diginter_basic_setup a').css('color', '#000000');
        $(this).css('background-color', '#5cb9f8');
        $(this).children('a').css('color', "#ffffff");
        $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
        $(".basics-tit .basics1").addClass("basics1_active");
        $("#basics_nav").attr('class', 'basics1');
        $("#basics_nav").attr('title', '驱动处理');
        $("#basics_nav_add").attr('title', '新增驱动处理');
        $("#basics_nav_add").off('click');
        $("#basics_setting").hide();
        $("#toGuide").attr("href", toGuide + "processor");
        onProcessSearchMain('DB');
        $("#basics_nav_add").click(function () {
            if ($("#basics_setting").css('display') == 'none') {
                showProcessorSetting('', $("input[name='p_type']:checked").attr("p_type"));
            } else
                $("#basics_setting").css('display', 'none')

        });
    });
    $('#diginter_system_word_list').click(function () {
        $('#removeSelectRecordBasic').parent().hide();
        $('#diginter_basic_setup li').css('background-color', '#ffffff');
        $('#diginter_basic_setup a').css('color', '#000000');
        $(this).css('background-color', '#5cb9f8');
        $(this).children('a').css('color', "#ffffff");
        $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
        $(".basics-tit .basics2").addClass("basics2_active");
        $("#basics_nav").attr('class', 'basics2');
        $("#basics_nav").attr('title', '系统词表');
        $("#basics_nav_add").attr('title', '新增系统词表');
        $("#basics_nav_add").off('click');
        $("#basics_setting").hide();
        $("#toGuide").attr("href", toGuide + "vocabulary");
        onVocabularySetting();
        $("#basics_nav_add").click(function () {
            if ($("#basics_setting").css('display') == 'none') {
                showVocabularySetting('');
            } else
                $("#basics_setting").css('display', 'none')
        });
    });
    $('#diginter_interface_style').click(function () {
        $('#removeSelectRecordBasic').parent().show();
        $('#diginter_basic_setup li').css('background-color', '#ffffff');
        $('#diginter_basic_setup a').css('color', '#000000');
        $(this).css('background-color', '#5cb9f8');
        $(this).children('a').css('color', "#ffffff");
        $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
        $(".basics-tit .basics5").addClass("basics5_active");
        $("#basics_nav").attr('class', 'basics5');
        $("#basics_nav").attr('title', '界面风格');
        $("#basics_nav_add").attr('title', '新增界面风格');
        $("#basics_nav_add").off('click');
        $("#basics_setting").hide();
        $("#toGuide").attr("href", toGuide + "style");
        onStyleSetting();
        $("#basics_nav_add").click(function () {
            if ($("#basics_setting").css('display') == 'none') {
                showStyleSetting('');
                $("#basics_setting").css('display', 'block')
            } else
                $("#basics_setting").css('display', 'none')
        });

    });
    $('#diginter_language_support').click(function () {
        $('#removeSelectRecordBasic').parent().show();
        $('#diginter_basic_setup li').css('background-color', '#ffffff');
        $('#diginter_basic_setup a').css('color', '#000000');
        $(this).css('background-color', '#5cb9f8');
        $(this).children('a').css('color', "#ffffff");
        $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
        $(".basics-tit .basics6").addClass("basics6_active");
        $("#basics_nav").attr('class', 'basics6');
        $("#basics_nav").attr('title', '语言支持');
        $("#basics_nav_add").attr('title', '新增语言支持');
        $("#basics_nav_add").off('click');
        $("#basics_setting").hide();
        $("#toGuide").attr("href", toGuide + "language");
        onLanguageSetting();
        $("#basics_nav_add").click(function () {
            if ($("#basics_setting").css('display') == 'none') {
                showLanguageSetting('');
                $("#basics_setting").css('display', 'block')
            } else
                $("#basics_setting").css('display', 'none')
        });
    });
    $('#diginter_cleaning_rules').click(function () {
        $('#removeSelectRecordBasic').parent().show();
        $('#diginter_basic_setup li').css('background-color', '#ffffff');
        $('#diginter_basic_setup a').css('color', '#000000');
        $(this).css('background-color', '#5cb9f8');
        $(this).children('a').css('color', "#ffffff");
        $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
        $(".basics-tit .basics7").addClass("basics7_active");
        $("#basics_nav").attr('class', 'basics7');
        $("#basics_nav").attr('title', '清洗规则');
        $("#basics_nav_add").attr('title', '新增清洗规则');
        $("#basics_nav_add").off('click');
        $("#basics_setting").hide();
        $("#toGuide").attr("href", toGuide + "cleanout");
        onCleanoutSearch();
        $("#basics_nav_add").click(function () {
            if ($("#basics_setting").css('display') == 'none') {
                showCleanoutSetting('');
                $("#basics_setting").css('display', 'block')
            } else
                $("#basics_setting").css('display', 'none')
        });
    });
    $('#diginter_validation_rules').click(function () {
        $('#removeSelectRecordBasic').parent().show();
        $('#diginter_basic_setup li').css('background-color', '#ffffff');
        $('#diginter_basic_setup a').css('color', '#000000');
        $(this).css('background-color', '#5cb9f8');
        $(this).children('a').css('color', "#ffffff");
        $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
        $(".basics-tit .basics8").addClass("basics8_active");
        $("#basics_nav").attr('class', 'basics8');
        $("#basics_nav").attr('title', '验证规则');
        $("#basics_nav_add").attr('title', '新增验证规则');
        $("#basics_nav_add").off('click');
        $("#basics_setting").hide();
        $("#toGuide").attr("href", toGuide + "verify");
        onVerifySetting('');
        $("#basics_nav_add").click(function () {
            if ($("#basics_setting").css('display') == 'none') {
                showVerifySetting('');
                $("#basics_setting").css('display', 'block')
            } else
                $("#basics_setting").css('display', 'none')
        });
    });

    // 账户信息
    $("#account_nav_add").click(function () {
        if ($("#account_setting").css('display') == 'none') {
            showAccountSetting('');
        } else
            $("#account_setting").css('display', 'none')
    });
    $('#account_nav').click(function () {
        onAccountSetting('', '');
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        $('#jurisdiction_setting_main').hide();
    })
    $("#account_nav_add_new").click(function () {
        if ($("#account_setting").css('display') == 'none') {
            showAccountSetting('');
        } else
            $("#account_setting").css('display', 'none')

    });
}

/* 全选事件 */
function checkAll(span_check_resource, span_check_select_resource,
                  resource_check_select, check_all_resource) {
    $("." + span_check_resource + "").eq(0).click(function () {
        //console.log(this);
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
/* 设置批量删除按钮 */
function setRemoveSelectRecordButton(display, title, buddle_id, catalog_id,
                                     record_code_name, resource_check_select_class, select_input_name, remove_name) {
    $("#" + remove_name).css("display", display);
    if (display == "block") {
        $("#" + remove_name).attr("title", "停用所选" + title);


        $("#" + remove_name).attr(
            "onclick",
            "zdconfirm('提示','\"确认停用已选" + title
            + "吗？\"',function(confirm){if (confirm) {removeSelectRecord(this, '"
            + resource_check_select_class + "', '" + buddle_id + "', '" + catalog_id
            + "', '" + record_code_name + "');} })");

    } else
        $("#" + remove_name).removeAttr("onclick");
}

function removeSelectRecord(check_input, class_name, buddle_id, catalog_id,
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
        zdconfirm("提示", "未选中!");
        //alert("未选中");
    } else {
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];

                records.eq(i).parent().parent().attr("id", record_code);

                if (catalog_id == 'resource.connection.infoinge.remove.process' && ($("#resource_connection_template_search").val() == record_code)) {
                    //alert('本机资源连接不允许删除')
                    zdconfirm("提示", "本机资源连接不允许删除!");
                } else {
                    if (catalog_id == 'resource.connection.remove.process') {
                        $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove', record_code_name,
                            'connection_code'), new Array('infoinge', catalog_id,
                            record_code, connection_code), new Array(),
                            new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                            'normalErrorCallback');
                    }
                    else {
                        $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove', 'is_active', record_code_name,
                            'connection_code'), new Array(buddle_id, catalog_id,
                            'false', record_code, connection_code), new Array(),
                            new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                            'normalErrorCallback');
                    }
                }
            }
        }
        is_exits = 0;
    }

}


/* 开始资源定义设置 */
function onResourceDecomposingSetting(type, hinge_type) {
    var http_host = httpHeader;
    var link = '';

    $("#resource_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.decomposing.search.view&type="
            + type + "&http_host=" + http_host + "&hinge_type=" + hinge_type + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    console.log(data);
                    hintError("载入资源定义失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (hinge_type == 'DSB') {
                        if ($('#resource_setting_main table tr').length > 1)
                            $('#removeSelectRecordBusiness').parent().prev().hide();
                        else
                            $('#removeSelectRecordBusiness').parent().prev().show();
                    } else if (hinge_type == 'Colony') {
                        onColonyInstanceSearch();
                    }
                    checkAll('span_check_resource_decomposing',
                        'span_check_select_resource_decomposing',
                        'resource_decomposing_check_select',
                        'check_all_resource_decomposing');

                    $("#resource_setting_main").off('click');
                    $("#resource_setting_main").on('click', '#resource_decomposing_search>tbody>tr:odd', function (e) {
                        if ($(e.target).attr('is-click') != 'false') {
                            if ($(this).next().css('display') == 'none') {
                                onResourceConnectionSetting($(this).attr('class'), $("#resource_type").val());
                                $(this).next().css('display', 'table-row')
                            } else {
                                $(this).next().css('display', 'none');
                            }
                        }
                    })
                }
                ;
                // hintMessage("载入资源定义成功。", false);
            });
}

function onColonyInstanceSearch() {  //判断数字立交的模式
    $('#instance-type')
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=instance.type.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入异常响应失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else;
            });
}

// 显示资源定义设置界面,右边表格页面
function showResourceDecomposingSetting(code, type, hinge_type) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    var http_host = httpHeader;
    // $("#v_identifier").val(v_identifier);
    // $("#v_template").val(v_template);
    var link = '';
    if (hinge_type == 'DSB') {
        link = "&is_dsb=true"
    }
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.decomposing.setting.view&code="
            + code + "&type=" + type + "&hinge_type=" + hinge_type
            + "&http_host=" + http_host + link + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示资源定义设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {

                    if ($("#resource_decomposing_is_dsb").val() == 'true') {
                        $("#resource_decomposing_is_dsb_true").attr("disabled", false)
                    }
                    ;
                    //
                    // // $("#decomposing_div_btn").hide();
                    // if ($("#code_resource_decomposing").val()==''){
                    //     $("#decomposing_div_btn").show();
                    // }
                    // 选择DB后，选择驱动处理后自动选择服务端口的值
                    //  if ($("#resource_decomposing_type").val() == 'DB'){
                    //  $("#resource_decomposing_port").val("3306");
                    //  }
                    $("#resource_decomposing_driver").change(function () {
                        switch ($("#resource_decomposing_driver").val()) {
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

                    $(this).show();
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                }
                ;
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
    var type = $('#resource_decomposing_type').val();
    if (type == 'DB') {
        reg_start = /^[a-z]+(\.{0,1}[a-z]+){0,}$/;
        reg_end = /^([a-z]{0,})+((\.{0,1}[a-z]+){0,})+\.{0,1}$/;
    }


    if (validateIdentifier($("#resource_decomposing_identifier").val(), reg_start, reg_end)) {
        if ($('#validate_resource_decomposing_setting')
                .validationEngine('validate')) {
            if ($('#resource_decomposing_identifier').val() == 'cludove.crest.journal') {
               zdalert('提示','系统标识cludove.crest.journal不允许添加');
            } else {
                disabledButton();
                if ($('#code_resource_decomposing').val() == "") {
                    if ($("#resource_decomposing_type").val() == 'DB') {
                        $(this).load(
                            httpsHeader
                            + "s?buddle.cludove=diginter&catalog.cludove=resource.decomposing.identifer.validate.process&identifier="
                            + z_identifier + "&instance=" + $('#resource_decomposing_instance').val()
                            + "&type=" + $("#resource_decomposing_type").val()
                            + "&t=" + new Date().getTime(),
                            function (data, textStatus, jqXHR) {
                                if (textStatus == "error") {
                                    // console.log(data);
                                    hintError("查询资源标识失败！", false, "javascript:void(0)");
                                    hintException(data, false, "javascript:void(0)");
                                } else if (data == "identifier_repeat") {
                                    //alert('该资源标识已存在');
                                    zdconfirm("提示", "该资源标识已存在!");
                                    enableButton();
                                } else {
                                    processResourceDecomposingSetting();
                                }
                            })
                    } else {
                        $(this).load(
                            httpsHeader
                            + "s?buddle.cludove=diginter&catalog.cludove=resource.decomposing.identifer.validate.process&identifier="
                            + z_identifier + "&template=" + $('#resource_decomposing_template').val()
                            + "&type=" + $("#resource_decomposing_type").val()
                            + "&t=" + new Date().getTime(),
                            function (data, textStatus, jqXHR) {
                                if (textStatus == "error") {
                                    // console.log(data);
                                    hintError("查询资源标识失败！", false, "javascript:void(0)");
                                    hintException(data, false, "javascript:void(0)");
                                } else if (data == "identifier_repeat") {
                                    //alert('该资源标识已存在');
                                    zdconfirm("提示", "该资源标识已存在!");
                                    enableButton();
                                } else if (data == "template_repeat") {
                                    //alert('该连接模板已存在');
                                    zdconfirm("提示", "该连接模板已存在!");
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
    } else {
        //alert("资源标识必须为小写字母或数字可加.分隔");
        if (type == 'DB')
            zdconfirm("提示", "资源标识必须为小写字母可加.分隔!");
        else
            zdconfirm("提示", "资源标识必须为小写字母或数字可加.分隔!");
        $("#resource_decomposing_identifier").focus();
    }
}


// 提交按钮事件
function processResourceDecomposingSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_resource_decomposing_setting')
            .validationEngine('validate')) {
        var resource_decomposing_type = $("#resource_decomposing_type").val();
        if (resource_decomposing_type == 'Infoinge')
            resource_decomposing_type = 'Hinge';

        if ($('#code_resource_decomposing').val().length > 0) {
            $.request(httpHeader, '修改资源定义', new Array('buddle.cludove',
                'catalog.cludove', 'type'), new Array('diginter',
                'resource.decomposing.setting.process', resource_decomposing_type), new Array('decomposing_code',
                'connection_code', 'name', 'identifier', 'driver',
                'host', 'port', 'account', 'password', 'template',
                'pattern', 'instance', 'max_number', 'is_locked', 'is_dsb',
                'timeout', 'buffer_pool_size', 'year_id', 'month_id',
                'day_id', 'telephone', 'email'), new Array('code_resource_decomposing',
                'connection_code_resource_decomposing',
                'resource_decomposing_name',
                'resource_decomposing_identifier',
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
                'resource_decomposing_day_id', 'resource_decomposing_telephone', 'resource_decomposing_email'), 'text', null, null,
                'resourceDecomposingSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增资源定义', new Array('buddle.cludove',
                'catalog.cludove', 'type'), new Array('diginter',
                'resource.decomposing.setting.process', resource_decomposing_type), new Array('name',
                'identifier', 'driver', 'host', 'port', 'account',
                'password', 'template', 'pattern', 'instance',
                'max_number', 'is_locked', 'is_dsb', 'timeout', 'buffer_pool_size',
                'year_id', 'month_id', 'day_id', 'telephone', 'email'), new Array(
                'resource_decomposing_name',
                'resource_decomposing_identifier',
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
                'resource_decomposing_day_id', 'resource_decomposing_telephone', 'resource_decomposing_email'), 'text', null, null,
                'resourceDecomposingSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    resourceDecomposingSettingSuccessCallback: function (responseText) {
        // 刷新页面
        // enableButton();
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        onResourceDecomposingSetting($("#resource_type").val(), $("#resource_hinge_type").val());
        $('#resource_setting_right').hide();
    }
});

$.extend({
    onRecordConnectionRemoveCallBack: function (responseText) {
        // 刷新页面
        var decomposing_code = $('.' + responseText).parent().parent().attr('decomposing_code');
        onResourceConnectionSetting(decomposing_code, $("#resource_type").val());
        enableButton();
    }
});

/* 开始资源连接设置 */
function onResourceConnectionSetting(decomposing_code, type) {
    var http_host = httpHeader;
    //如果选择空值，则返回上一级界面
    $("#" + decomposing_code + "_resource_connection_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.search.view&type="
            + type + "&decomposing_code="
            + decomposing_code + "&hinge_type=" + $("#resource_hinge_type").val()
            + "&instance_type=" + $("#instance-type").val()
            + "&http_host=" + http_host
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入资源连接失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else;
                // hintMessage("载入资源连接成功。", false);
            });
}

// 显示资源连接设置界面,右边表格页面
function showResourceConnectionSetting(code, decomposing_code, type, host) {
    var http_host = httpHeader;
    // $("#v_identifier").val(v_identifier);
    // $("#v_template").val(v_template);
    // $("#v_instance").val(v_instance);
    $("#now_remove").show();
    $("#ajax_loader_remove").show();

    var link;
    if (host == undefined || host == '')
        link = '';
    else
        link = "&host=" + host;

    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.setting.view&code="
            + code + "&decomposing_code="
            + decomposing_code + "&type="
            + type + "&http_host=" + http_host + link + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示资源连接设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#resource_connection_port").attr('class', 'input-1 validate[required,custom[onlyNumberSp],maxSize[8]]');
                    // 选择DB后，选择驱动处理后自动选择服务端口的值
                    // if ($("#resource_type_select").val() == 'DB'){
                    //     $("#resource_connection_port").val("3306");
                    // }
                    $("#resource_connection_driver").change(function () {
                        switch ($("#resource_connection_driver").val()) {
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

                    if ($("#connection_div_btn").css('display') == 'none')
                        $("#connection_div_btn_hide").show();

                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                    $(this).show()
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
        if ($('#code_resource_connection').val().length > 0 || $('#resource_connection_backup_host').val().length > 0) {
            processResourceConnectionSetting();
        } else {
            if ($("#resource_connection_type").val() == 'DB') {
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.instance.validate.process&instance="
                    + s_instance + "&identifier=" + $("#resource_connection_identifier").val() + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("查询实例标识失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else if (data != "") {
                            zdalert('提示', '该实例标识已存在');
                            enableButton();
                        } else {
                            processResourceConnectionSetting();
                        }
                    })
            } else if ($("#resource_connection_type").val() == 'Infoinge') {
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.template.validate.process&template="
                    + s_template + "&identifier=" + $("#resource_connection_identifier").val() + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("查询连接模板失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else if (data != "") {
                            //alert('该连接模板已存在');
                            zdalert("提示", "该连接模板已存在!");
                            // enableButton();
                            $("#now_remove").hide();
                            $("#ajax_loader_remove").hide();
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
            hideMapEdit();
            var resource_connection_type = $("#resource_connection_type").val();
            if (resource_connection_type == 'Infoinge')
                resource_connection_type = 'Hinge';
            if ($('#code_resource_connection').val().length > 0) {
                $.request(httpHeader, '修改资源连接', new Array('buddle.cludove',
                    'catalog.cludove', 'type'), new Array('diginter',
                    'resource.connection.setting.process', resource_connection_type), new Array('code',
                    'connection_code', 'name', 'identifier', 'driver',
                    'host', 'port', 'account', 'password', 'template',
                    'pattern', 'instance', 'max_number', 'is_locked', 'is_dsb',
                    'timeout', 'buffer_pool_size', 'decomposing_code', 'gps_location', 'run_id'),
                    new Array('code_resource_connection',
                        'connection_code_resource_connection',
                        'resource_connection_name',
                        'resource_connection_identifier',
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
                        'decomposing_code', 'resource_connection_gps_location', 'run_method'), 'text', null, null,
                    'resourceConnectionSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '新增资源连接', new Array('buddle.cludove',
                    'catalog.cludove', 'type'), new Array('diginter',
                    'resource.connection.setting.process', resource_connection_type), new Array('name',
                    'identifier', 'driver', 'host', 'port', 'account',
                    'password', 'template', 'pattern', 'instance',
                    'max_number', 'is_locked', 'is_dsb', 'timeout', 'buffer_pool_size',
                    'decomposing_code', 'gps_location', 'run_id'),
                    new Array('resource_connection_name',
                        'resource_connection_identifier',
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
                        'decomposing_code', 'resource_connection_gps_location', 'run_method'), 'text', null, null,
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
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        onResourceConnectionSetting($("#decomposing_code").val(), $("#resource_type").val());
        $('#resource_setting_right').hide();
        if ($('#network_view').css('display') == 'none') {
            if ($('#resource_hinge_type').val() != 'DB') {
                switchIint();
                indexMap.onMapData();
            }
        } else {
            if ($('#resource_hinge_type').val() != 'DB')
                switchIint();

            monitor.onTopologyData();
        }
    }
});


function showMapEdit() {
    var topMeasure = parseInt($('#myModal7').css('top'));
    var topOffset = $('#myModal7').height() + topMeasure;
    $('#myModal7').css({'top': $(document).scrollTop() - topOffset, 'opacity': 0, 'visibility': 'visible'});
    $('#myModal7').delay(150).animate({
        "top": $(document).scrollTop() + topMeasure + 'px',
        "opacity": 1
    }, 300);
}

function hideMapEdit() {
    var topMeasure = parseInt($('#myModal7').css('top'));
    var topOffset = $('#myModal7').height() + topMeasure;
    $('#myModal7').animate({
        "top": $(document).scrollTop() - topOffset + 'px',
        "opacity": 0
    }, 150, function () {
        $('#myModal7').css({'top': topMeasure, 'opacity': 1, 'visibility': 'hidden'});
    });
}

var BaiduMap = {
    map: null,
    init: function () {
        // 百度地图API功能
        BaiduMap.map = new BMap.Map("resource_connection_location");    // 创建Map实例
        BaiduMap.map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);  // 初始化地图,设置中心点坐标和地图级别
        //添加地图类型控件
        BaiduMap.map.addControl(new BMap.MapTypeControl({
            mapTypes: [
                BMAP_NORMAL_MAP,
                BMAP_HYBRID_MAP
            ]
        }));

        BaiduMap.map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
        BaiduMap.map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放

        // var b = new BMap.Bounds(new BMap.Point(116.027143, 39.772348),new BMap.Point(116.832025, 40.126349));
        // try {
        //     BMapLib.AreaRestriction.setBounds(BaiduMap.map, b);
        // } catch (e) {
        //     alert(e);
        // }

        BaiduMap.map.addEventListener("click", BaiduMap.showInfo);
    },
    showInfo: function (e) {
        $('#resource_connection_gps_location').val(e.point.lat + "," + e.point.lng)
    },
    cityLocation: function () {
        if ($('#resource_connection_gps_location').val().length > 0) {
            var location = $('#resource_connection_gps_location').val().split(',');
            BaiduMap.map.centerAndZoom(new BMap.Point(location[1], location[0]), 12);
        } else {
            var myCity = new BMap.LocalCity();
            myCity.get(BaiduMap.myFun);
        }
    },
    myFun: function (result) {
        var cityName = result.name;
        $('#resource_connection_gps_location').val(result.center.lat + "," + result.center.lng)
        BaiduMap.map.setCenter(cityName);
    }
}


/************ 驱动处理开始 ***********/
//驱动处理框架显示
function onProcessSearchMain(type) {
    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=processor.search.main.view"
            + "&type=" + type
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入驱动处理失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $(".basics-tit a").removeClass("basics1_active basics2_active basics5_active basics6_active basics7_active basics8_active");
                    $(".basics-tit .basics1").addClass("basics1_active");
                    $("#diginter_basic_setup li").css('background-color', '#fff').children("a").css('color', "#000");
                    $('#diginter_drive_processing').css('background-color', '#5cb9f8').children('a').css('color', "#ffffff");
                    $("#basics_nav_add").click(function () {
                        showProcessorSetting('', $("input[name='p_type']:checked").attr("p_type"));
                    });
                    onProcessSearch(type);
                    $(".radio_box").on("click", "input", function () {
                        onProcessSearch($(this).attr("p_type"));
                    })
                }
            });
}

//驱动处理初始显示
function onProcessSearch(type) {
    setProcessorRemoveSelectRecordButton('block', '驱动处理', 'diginter', 'processor.remove.process',
        'processor_record_code', 'processor_check_select',
        'processor_select', 'removeSelectRecordBasic');
    $("#main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=processor.search.view"
            + "&type=" + type
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入驱动处理失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    checkAll('span_check_processor',
                        'span_check_select_processor',
                        'processor_check_select', 'check_all_processor');
                }
            });
}
//驱动处理分类显示
function onProcessorSearch(type) {
    setProcessorRemoveSelectRecordButton('block', '驱动处理', 'diginter', 'processor.remove.process',
        'processor_record_code', 'processor_check_select',
        'processor_select', 'removeSelectRecordBasic');
    $("#main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=processor.search.view&classify="
            + $("#processor_classify").val()
            + "&type=" + type
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入驱动处理失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    checkAll('span_check_processor',
                        'span_check_select_processor',
                        'processor_check_select', 'check_all_processor');
                    if (type == 'DB') {
                        $(".input_radio").eq(0).prop("checked", "checked");
                    } else if (type == 'Hinge.Data') {
                        $(".input_radio").eq(1).prop("checked", "checked");
                    } else if (type == 'WS') {
                        $(".input_radio").eq(2).prop("checked", "checked");
                    } else if (type == 'Hinge.Quote') {
                        $(".input_radio").eq(3).prop("checked", "checked");
                    } else if (type == 'Cleanout.Regulation') {
                        $(".input_radio").eq(4).prop("checked", "checked");
                    } else if (type == 'Verify.Regulation') {
                        $(".input_radio").eq(5).prop("checked", "checked");
                    }
                }
            });
}

// 显示驱动处理设置界面
function showProcessorSetting(code, type) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#basics_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=processor.setting.view&code="
            + code + "&type=" + type + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示驱动处理设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $(this).show();
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                }
                ;
                // hintMessage("显示驱动处理设置界面成功。", false);
                $('#class_processor').focus();
            });
}

// 点击提交按钮,修改或者新增驱动处理 需求：不同的页面可以多次调用
function processProcessorSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if (validateIdentifier($("#class_processor").val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)) {
        if ($("#processor_telephone_list").css('display') == "none") {
            if ($('#validate_processor_setting').validationEngine('validate')) {
                if ($('#code_processor').val().length > 0) {
                    $.request(httpHeader, '修改驱动处理', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('diginter',
                        'processor.setting.process'), new Array('code',
                        'connection_code', 'class', 'name', 'type', 'description', 'classify', 'is_metadata', 'telephone', 'email'),
                        new Array('code_processor', 'connection_code_processor',
                            'class_processor', 'name_processor',
                            'type_processor', 'description_processor', 'processor_classify', 'processor_is_metadata', 'processor_telephone', 'processor_email'), 'text',
                        null, null, 'processorSettingSuccessCallback',
                        'normalErrorCallback');
                } else {
                    $(this).load(
                        httpsHeader
                        + "s?buddle.cludove=diginter&catalog.cludove=processor.setting.validate.process&class="
                        + $("#class_processor").val()
                        + "&t=" + new Date().getTime(),
                        function (data, textStatus, jqXHR) {
                            if (textStatus == "error") {
                                console.log(data);
                                hintError("查询目录标识失败！", false, "javascript:void(0)");
                                hintException(data, false, "javascript:void(0)");
                            } else {
                                if (data) {
                                    //alert('处理标识已存在');
                                    zdconfirm("提示", "处理标识已存在!");
                                    $("#class_processor").focus();
                                } else {
                                    //disabledButton();
                                    $.request(httpHeader, '新增驱动处理', new Array('buddle.cludove',
                                        'catalog.cludove'), new Array('diginter',
                                        'processor.setting.process'), new Array('class', 'name',
                                        'type', 'description', 'classify', 'is_metadata', 'processor_telephone', 'processor_email'),
                                        new Array('class_processor', 'name_processor',
                                            'type_processor', 'description_processor', 'processor_classify', 'processor_is_metadata', 'telephone', 'email'), 'text',
                                        null, null, 'processorSettingSuccessCallback',
                                        'normalErrorCallback');
                                }
                            }
                        })
                }
                $(".configure-fr-side").hide();
            }
        } else {
            if ($('#validate_processor_setting').validationEngine('validate')) {
                if ($('#code_processor').val().length > 0) {
                    $.request(httpHeader, '修改驱动处理', new Array('buddle.cludove', 'catalog.cludove'),
                        new Array('diginter', 'processor.setting.process'), new Array('code',
                            'connection_code', 'class', 'name', 'type', 'description', 'telephone', 'email', 'classify', 'is_metadata'),
                        new Array('code_processor', 'connection_code_processor',
                            'class_processor', 'name_processor', 'type_processor', 'description_processor',
                            'processor_telephone', 'processor_email', 'processor_classify', 'processor_is_metadata'), 'text',
                        null, null, 'processorSettingSuccessCallback',
                        'normalErrorCallback');
                } else {
                    $.request(httpHeader, '新增驱动处理', new Array('buddle.cludove', 'catalog.cludove'),
                        new Array('diginter', 'processor.setting.process'), new Array('class', 'name',
                            'type', 'description', 'telephone', 'email', 'classify', 'is_metadata'),
                        new Array('class_processor', 'name_processor', 'type_processor', 'description_processor',
                            'processor_telephone', 'processor_email', 'processor_classify', 'processor_is_metadata'), 'text',
                        null, null, 'processorSettingSuccessCallback',
                        'normalErrorCallback');
                }
                $(".configure-fr-side").hide();
            }
        }
    } else {
        //alert("驱动处理必须为字母或数字可加.分隔");
        zdconfirm("提示", "驱动标识必须为字母可加.分隔!");
        $("#class_processor").focus();
    }
}

$.extend({
    processorSettingSuccessCallback: function (responseText) {
        // 新增成功时刷新载入处理类记录
        flag = 1;
        onProcessorSearch(responseText);
    }
});
/************ 驱动处理结束 ***********/


/*********** 清洗规则开始 ***********/
//清洗规则界面显示
function onCleanoutSearch(record_code) {
    setRemoveSelectRecordButton('block', '清洗规则', 'diginter', 'cleanout.remove.process',
        'code', 'cleanout_check_select', 'cleanout_select', 'removeSelectRecordBasic');
    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=cleanout.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入清洗规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    checkAll('span_check_cleanout', 'span_check_select_cleanout',
                        'cleanout_check_select', 'check_all_cleanout');
                }
            });
}

// 显示清洗规则设置界面
function showCleanoutSetting(code) {
    $("#basics_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=cleanout.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                }
                $('#cleanout_identifier').focus();
            }).show();
    $("#removeSelectRecord").css("display", "block");
}

// 点击提交按钮,修改或者新增清洗规则,验证清洗标识是否存在
function processCleanoutSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if (validateIdentifier($("#cleanout_identifier").val(), /^[a-z]+(\.{0,1}[a-z]+){0,}$/, /^([a-z]{0,})+((\.{0,1}[a-z]+){0,})+\.{0,1}$/)) {
        if ($('#validate_cleanout_setting').validationEngine('validate')) {
            var class_cleanout = $("#class_cleanout").val();
            if ($('#code_cleanout').val().length > 0) {
                $.request(httpHeader, '修改清洗规则', new Array('buddle.cludove',
                    'catalog.cludove', 'class'), new Array('diginter',
                    'cleanout.setting.process', class_cleanout), new Array('code',
                    'connection_code', 'identifier', 'regulation_name', 'description'),
                    new Array('code_cleanout', 'connection_code_cleanout',
                        'cleanout_identifier', 'cleanout_name', 'cleanout_description'), 'text', null, null,
                    'cleanoutSettingSuccessCallback', 'normalErrorCallback');
                $(".configure-fr-side").hide();
            } else {
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=diginter&catalog.cludove=cleanout.setting.validate.process&identifier="
                    + $("#cleanout_identifier").val()
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            console.log(data);
                            hintError("查询目录标识失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else {
                            if (data) {
                                //alert('清洗规则标识已存在');
                                zdconfirm("提示", "清洗规则标识已存在!");
                                $("#cleanout_identifier").focus();
                            } else {
                                $.request(httpHeader, '新增清洗规则', new Array('buddle.cludove',
                                    'catalog.cludove', 'class'), new Array('diginter',
                                    'cleanout.setting.process', class_cleanout), new Array('identifier', 'regulation_name',
                                    'class', 'description'), new Array('cleanout_identifier', 'cleanout_name',
                                    'cleanout_class', 'cleanout_description'), 'text', null, null,
                                    'cleanoutSettingSuccessCallback', 'normalErrorCallback');
                                $(".configure-fr-side").hide();
                            }
                        }
                    })
            }
        }
    } else {
        //alert("标识必须为小写字母可加.分隔");
        zdconfirm("提示", "标识必须为小写字母可加.分隔!");
        $("#cleanout_identifier").focus();
    }
}

$.extend({
    cleanoutSettingSuccessCallback: function (responseText) {
        flag = 1;
        onCleanoutSearch(responseText);
    }
});
/*********** 清洗规则结束 ***********/


/* 开始界面风格设置 */
function onStyleSetting() {
    setRemoveSelectRecordButton('block', '界面风格', 'diginter', 'style.remove.process',
        'style_record_code', 'style_check_select', 'style_select', 'removeSelectRecordBasic');
    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=style.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入界面风格失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                checkAll('span_check_style', 'span_check_select_style',
                    'style_check_select', 'check_all_style');
                // hintMessage("载入界面风格成功。", false);
            });
}
// 显示界面风格设置界面
function showStyleSetting(code) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#basics_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=style.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示界面风格设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                }
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
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        if ($('#code_style').val().length > 0) {
            $.request(httpHeader, '修改界面风格', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'style.setting.process'), new Array('code',
                'connection_code', 'identifier', 'name', 'description'),
                new Array('code_style', 'connection_code_style',
                    'style_identifier', 'style_name',
                    'style_description'), 'text', null, null,
                'styleSettingSuccessCallback', 'normalErrorCallback');
        } else {
            // console.log("新增");
            $.request(httpHeader, '新增界面风格', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'style.setting.process'), new Array('identifier', 'name',
                'description'), new Array('style_identifier', 'style_name',
                'style_description'), 'text', null, null,
                'styleSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}

$.extend({
    styleSettingSuccessCallback: function (responseText) {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#basics_setting").hide();
        onStyleSetting(responseText);
    }
});

/* 开始语言支持设置 */
function onLanguageSetting() {
    setRemoveSelectRecordButton('block', '语言支持', 'diginter', 'language.remove.process',
        'language_record_code', 'language_check_select', 'language_select', 'removeSelectRecordBasic');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=language.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入语言支持失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                checkAll('span_check_language',
                    'span_check_select_language',
                    'language_check_select', 'check_all_language');
                // hintMessage("载入语言支持成功。", false);
            });
}
// 显示语言支持设置界面
function showLanguageSetting(code) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#basics_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=language.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示语言支持设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                }
                ;
                // hintMessage("显示语言支持设置界面成功。", false);

                $('#language_name').focus();
            });
}
// 点击提交按钮,修改或者新增语言支持
function processLanguageSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_language_setting').validationEngine('validate')) {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        if ($('#code_language').val().length > 0) {
            $.request(httpHeader, '修改语言支持', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'language.setting.process'), new Array('code',
                'connection_code', 'name', 'encoding', 'mapping'),
                new Array('code_language', 'connection_code_language',
                    'language_name', 'language_encoding',
                    'language_mapping'), 'text', null, null,
                'languageSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增语言支持', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'language.setting.process'), new Array('name', 'encoding',
                'mapping'), new Array('language_name', 'language_encoding',
                'language_mapping'), 'text', null, null,
                'languageSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}

$.extend({
    languageSettingSuccessCallback: function (responseText) {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#basics_setting").hide();
        onLanguageSetting(responseText);
    }
});


/* 开始系统词表设置 */
function onVocabularySetting() {

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=vocabulary.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入系统词表失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入系统词表成功。", false);


            });

}

// 显示系统词表设置界面
function showVocabularySetting(code) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#basics_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=vocabulary.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示系统词表设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $(this).show();
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                }
                ;
                // hintMessage("显示系统词表设置界面成功。", false);

                $('#vocabulary_identifier').focus();
            });
}

// 点击提交按钮,修改或者新增系统词表
function processVocabularySetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if (validateIdentifier($("#vocabulary_identifier").val(), /^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/, /^([a-zA-Z]{0,})+((\.{0,1}[a-zA-Z]+){0,})+\.{0,1}$/)) {
        if (validateIdentifier($("#vocabulary_keyword").val(), /^[A-Z]+(\_{0,1}[A-Z]+){0,}$/, /^([A-Z]{0,})+((\_{0,1}[A-Z]+){0,})+\_{0,1}$/)) {
            if ($('#validate_vocabulary_setting').validationEngine('validate')) {
                $("#now_remove").show();
                $("#ajax_loader_remove").show();
                if ($('#code_vocabulary').val().length > 0) {
                    $.request(httpHeader, '修改系统词表', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('diginter',
                        'vocabulary.setting.process'), new Array('code',
                        'connection_code', 'identifier', 'keyword', 'content'),
                        new Array('code_vocabulary', 'connection_code_vocabulary',
                            'vocabulary_identifier', 'vocabulary_keyword',
                            'vocabulary_content'), 'text', null, null,
                        'vocabularySettingSuccessCallback', 'normalErrorCallback');
                } else {
                    $.request(httpHeader, '新增系统词表', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('diginter',
                        'vocabulary.setting.process'), new Array('identifier',
                        'keyword', 'content'), new Array('vocabulary_identifier',
                        'vocabulary_keyword', 'vocabulary_content'), 'text', null,
                        null, 'vocabularySettingSuccessCallback',
                        'normalErrorCallback');
                }
            }
        } else {
            //alert("配置项必须为大写字母可加_分隔");
            zdconfirm("提示", "配置项必须为大写字母可加_分隔!");
            $("#vocabulary_keyword").focus();
        }
    } else {
        //alert("参数标识必须为字母可加.分隔");
        zdconfirm("提示", "参数标识必须为字母可加.分隔!");
        $("#vocabulary_identifier").focus();
    }
}
$.extend({
    vocabularySettingSuccessCallback: function (responseText) {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#basics_setting").hide();
        onVocabularySetting();
    }
})


// 开始账户管理

// 账号导航
function onAccountManage(record_code) {
    $("#account_setting_list")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=account.navigate.view&record_code=" + record_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航登录帐号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (record_code == '') {
                        if ($('#account_setting_list').css('display') == 'none') {
                            $(this).on('click', 'li', function () {
                                $('#account_setting_list li').css('background-color', '#ffffff');
                                $('#account_setting_list a').css('color', '#000000');
                                $(this).css('background-color', '#5cb9f8');
                                $(this).children('a').css('color', "#ffffff");
                            });
                            $('#account_setting_list').css('display', 'block');
                        } else {
                            $('#account_setting_list').css('display', 'none');
                        }
                    } else {
                        $('#account_setting_list').css('display', 'block');
                        $(this).on('click', 'li', function () {
                            $('#account_setting_list li').css('background-color', '#ffffff');
                            $('#account_setting_list a').css('color', '#000000');
                            $(this).css('background-color', '#5cb9f8');
                            $(this).children('a').css('color', "#ffffff");
                        })
                    }
                }

                // hintMessage("导航登录帐号成功。", false);

                onAccountSetting(record_code, 0);

            });
}

//账户表
function onAccountSetting(record_code, is_check_or_click) {
    const toGuide = $("#toGuide").attr("href");
    setRemoveSelectRecordButton('block', '登录帐号',
        'diginter',
        'account.remove.process',
        'account_record_code',
        'account_check_select', 'account_select', 'removeSelectRecordAccount');
    $("#account_setting_main")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=account.search.view"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入登录帐号失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                    if (record_code != '')
                        $("." + record_code + "").css('background-color', '#D3EDFC');
                    $("#toGuideAccount").attr("href", toGuide + "account");
                }
                ;
                // hintMessage("载入登录帐号成功。", false);

                checkAll('span_check_account',
                    'span_check_select_account',
                    'account_check_select', 'check_all_account');


                // showAccountSetting(record_code, account_id);
            });
}
//账户信息设置界面
function showAccountSetting(code, is_locate_record) {
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#account_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=account.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#account_setting").show();
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                    // if ($('#code_account').val().length > 0){
                    //     $('#account_account_password').attr('class', 'input-1 validate[maxSize[32],custom[onchinaese]]');
                    // }
                }
                ;
                // hintMessage("显示登录帐号设置界面成功。", false);

                $('#account_account_name').focus();

                // if (is_locate_record > 0){
                //     locateNavigate(code, 'organization_setting_left');
                // }
            });
}

function validateAccountSetting() {
    if ($('#validate_account_setting').validationEngine('validate')) {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        if ($('#code_account').val() == "") {
            var account_name = $('#account_account_name').val();
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=account.validate.process&account_name="
                + account_name + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("查询登录帐号重复界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "") {
                        //alert('帐号已注册');
                        $("#now_remove").hide();
                        $("#ajax_loader_remove").hide();
                        zdconfirm("提示", "帐号已注册!");
                    } else {
                        processAccountSetting()
                    }
                })
        } else {
            processAccountSetting()
        }
    }
}
function processAccountSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_account_setting').validationEngine('validate')) {
        if ($('#code_account').val().length > 0) {
            if ($('#account_account_password').val().length > 0) {
                $.request(httpHeader, '修改登录帐号', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('diginter',
                    'account.setting.process'), new Array('code',
                    'connection_code', 'account_name', 'account_password', 'status', 'effective_date'),
                    new Array('code_account',
                        'connection_code_account', 'account_account_name',
                        'account_account_password', 'account_status', 'account_effective_date'), 'text',
                    null, null, 'accountSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '修改登录帐号', new Array('buddle.cludove',
                    'catalog.cludove'), new Array('diginter',
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
                    'catalog.cludove','is_guide'), new Array('diginter',
                    'account.setting.process','true'), new Array('account_name',
                    'account_password', 'status', 'effective_date'), new Array('account_account_name',
                    'account_account_password', 'account_status', 'account_effective_date'), 'text',
                    null, null, 'accountSettingSuccessCallback',
                    'normalErrorCallback');
            } else {
                $.request(httpHeader, '新增登录帐号', new Array('buddle.cludove',
                    'catalog.cludove','is_guide'), new Array('diginter',
                    'account.setting.process','true'), new Array('account_name', 'status', 'effective_date'), new Array('account_account_name',
                    'account_status', 'account_effective_date'), 'text',
                    null, null, 'accountSettingSuccessCallback',
                    'normalErrorCallback');
            }
        }
    }
}

$.extend({
    accountSettingSuccessCallback: function (responseText) {
        // 刷新页面
        onAccountManage(responseText);
        onAccountSetting('', '');
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#account_setting").hide();
        $('#account_setting_list').show();
    }
});


/******开始帐号权限设置*************/
function showPermissionSetting(owner_type, owner_code) {
    const toGuide = $("#toGuide").attr("href");
    $("#jurisdiction_setting_main")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=permission.buddle.select.view"
            + "&owner_type=" + owner_type
            + "&owner_code=" + owner_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $('#jurisdiction_setting_main').show();
                ;

                onPermissionSetting(owner_type, owner_code);
            }
        )
}
function onPermissionSetting(owner_type, owner_code) {
    const toGuide = $("#toGuide").attr("href");
    $("#now_remove").show();
    $("#ajax_loader_remove").show();
    $("#permission_buddle_select").attr("disabled", "disabled");
    $("#account_setting_main")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=permission.setting.view"
            + "&buddle_id=" + $('#permission_buddle_select').val() + "&owner_type=" + owner_type
            + "&owner_code=" + owner_code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示登录帐号设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#now_remove").hide();
                    $("#ajax_loader_remove").hide();
                    $("#permission_buddle_select").removeAttr("disabled", "disabled");
                    $("#toGuideAccount").attr("href", toGuide + "permission");
                }
                ;
            }
        )
}

/* 开始登录帐号密码修改 */
function onPasswordBox() {
    $('#password_modification').css('display', 'block');
    $('#password_modification input:eq(0)').focus();
}

function onPasswordModification() {
    if ($('#validate_password_modification_setting').validationEngine('validate')) {
        disabledButton();
        if ($('#account_password_new').val() == $('#account_password_modification').val()) {
            $.request(httpHeader, '修改帐号密码', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'account.password.process'), new Array('account_password'), new Array('account_password_modification'), 'text',
                null, null, 'accountPasswordSuccessCallback',
                'normalErrorCallback');
        } else {
            enableButton();
            //alert('密码修改失败，两次输入的密码可能不一致')
            zdconfirm("提示", "密码修改失败，两次输入的密码可能不一致!");
        }
    }
}
$.extend({
    accountPasswordSuccessCallback: function () {
        // 刷新页面
        enableButton();
        $('#password_modification').css('display', 'none');
        //alert('密码修改成功');
        zdconfirm("提示", "密码修改成功!");
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

//数据库界面动画事件
function hideDbEdit() {
    var topMeasure = parseInt($('#myModa3').css('top'));
    var topOffset = $('#myModa3').height() + topMeasure;
    $('#myModa3').animate({
        "top": $(document).scrollTop() - topOffset + 'px',
        "opacity": 0
    }, 150, function () {
        $('#myModa3').css({'top': topMeasure, 'opacity': 1, 'visibility': 'hidden'});
    });
}

function showDbEdit() {
    var topMeasure = parseInt($('#myModa3').css('top'));
    var topOffset = $('#myModa3').height() + topMeasure;
    $('#myModa3').css({'top': $(document).scrollTop() - topOffset, 'opacity': 0, 'visibility': 'visible'});
    $('#myModa3').delay(150).animate({
        "top": $(document).scrollTop() + topMeasure + 'px',
        "opacity": 1
    }, 300);
}


/* 开始数据库结构导航 */
function onDBPatternNaviagate(record_code, identifier, host, port, instance,
                              pattern, account, password, driver, template, name) {
    $("#resource_navigation").html('');
    $("#resource_db_setting_main").html('');
    $("#resource_db_setting_right").hide();
    $("#resource_navigation")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.pattern.navigate.view"
            + "&record_code=" + record_code + "&identifier="
            + identifier + "&host=" + host + "&port=" + port
            + "&instance=" + instance + "&pattern=" + pattern
            + "&account=" + account + "&password=" + password
            + "&driver=" + driver + "&template=" + template
            + "&name=" + encodeURI(encodeURI(name))
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航数据库方案失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                }
                else
                    $("#catalog_navigater").trigger('click');
                ;
                // console.log(this);
            });

}

function onDBTableNaviagate(container_id, navigater_id, record_code,
                            identifier, host, port, instance, account, password, driver, template,
                            catalog, schema) {

    $("#db_table_naviagate")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.table.navigate.view"
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
                } else {
                    // $('#resource_navigation a').css('color','#fff');
                    // $(this).prev().css('color',"#ff633b");
                    // $("#" + container_id + "").slideToggle();
                    // // $("#"+ resource_navigation +"").off("click");
                    // $("#" + navigater_id + "").removeAttr("onclick");
                    // $("#" + navigater_id + "").on("click",
                    //     function(){
                    //         $("#" + container_id + "").slideToggle()}
                    // );
                    // $("#resource_navigation").on('click','a',function () {
                    //     $('#resource_navigation a').css('color','#fff');
                    //     $(this).css('color',"#ff633b");
                    // })

                }
                // hintMessage("导航数据库库表成功。", false);
            });
}
function onDBColumnSearch(record_code, identifier, host, port, instance,
                          account, password, driver, template, catalog, schema, table_name) {
    $("#table_id").val(catalog + "_" + schema + "_" + table_name + "_navigater");
    $("#resource_db_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.search.view"
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
                } else {
                    $("#resource_db_setting_main").off('click');
                    $("#resource_db_setting_main").on('click', '#column_field_label>tbody>tr:odd', function (e) {
                        if ($(e.target).attr('is-click') != 'false') {
                            $("#resource_db_setting_right").hide();
                            fieldVerifyDisplay($(this).attr("column_field_name"), $("#column_field_label").attr("table_name"));
                        }
                    });
                    if (choice_id.length > 0) {
                        $("#" + choice_id).click();
                        choice_id = ''
                    } else
                        onDBColumnSetting(table_name, identifier, record_code, identifier);
                        onDBColumnDataSearch(identifier,table_name)

                }
                ;
                // hintMessage("载入数据库字段成功。", false);
            });
}
//  库表数据
function onDBColumnDataSearch(identifier,resource_name) {
    $("#resource_db_data_search")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.data.search.view"
            + "&connection_id=" + identifier
            + "&resource_name=" + resource_name
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据库字段失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                }
                ;
                // hintMessage("载入数据库字段成功。", false);
            }).show();
}

function onDBColumnSetting(table_name, identifier, connection_code, connection_id) {
    var resource_name = table_name.toUpperCase();
    $("#resource_db_setting_right")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.setting.view&resource_name="
            + resource_name
            + "&identifier=" + identifier
            + "&connection_code=" + connection_code
            + "&connection_id=" + connection_id
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据库字段失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $(this).show();
                ;
                // hintMessage("载入数据库字段成功。", false);
            });
}


//开始资源标注设置
function resourceLabelSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_resource_label_setting').validationEngine('validate')) {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        if ($('#code_resource_label').val().length > 0) {
            $.request(httpHeader, '修改资源标注', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'db.column.setting.process'), new Array('code',
                'connection_code', 'resource_label'),
                new Array('code_resource_label', 'connection_code_resource_label',
                    'resource_label_resource_label'), 'text', null, null,
                "resourceLabelSettingSuccessCallback", 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增资源标注', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'db.column.setting.process'), new Array('connection_code', 'resource_label', 'resource_name', 'identifier'),
                new Array('connection_code_resource_label', 'resource_label_resource_label',
                    'resource_label_resource_name', 'resource_label_identifier'), 'text', null, null,
                "resourceLabelSettingSuccessCallback", 'normalErrorCallback');
        }
    }
}

$.extend({
    resourceLabelSettingSuccessCallback: function (responseText) {
        $("#resource_db_setting_right").hide()
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});

function onFieldLabelSetting(elem) {
    $("#resource_db_setting_right")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.field.setting.view&resource_name="
            + $("#column_field_label_resource_name").val()
            + "&identifier=" + $("#column_field_label_identifier").val()
            + "&field_name=" + $(elem).parent().parent().parent().attr('column_field_name')
            + "&connection_code=" + $("#column_field_label_connection_code").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据库字段失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $(this).show();
                ;
                // hintMessage("载入数据库字段成功。", false);
            });
}

function processFieldLabelSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_field_label_setting').validationEngine('validate')) {
        var field_name = $('#field_label_field_name').val().toUpperCase();
        var resource_name = $('#field_label_resource_name').val().toUpperCase();
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        if ($('#code_field_label').val().length > 0) {
            $.request(httpHeader, '修改字段标注', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'db.field.setting.process'), new Array('code',
                'connection_code', 'field_label'),
                new Array('code_field_label', 'connection_code_field_label',
                    'field_label_field_label'), 'text', null, null,
                "fieldLabelSettingSuccessCallback", 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增字段标注', new Array('buddle.cludove',
                'catalog.cludove', 'resource_name', 'field_name'), new Array('diginter',
                'db.field.setting.process',resource_name,field_name), new Array('connection_code', 'field_label', 'identifier'),
                new Array('connection_code_field_label', 'field_label_field_label', 'field_label_identifier'), 'text', null, null,
                "fieldLabelSettingSuccessCallback", 'normalErrorCallback');
        }
    }
}

$.extend({
    fieldLabelSettingSuccessCallback: function (responseText) {
        $("#resource_db_setting_right").hide();
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#code_field_label").val(responseText);
        choice_id = $('#choice_id').val();
        $("#" + $("#table_id").val() + "").click();
    }
});

// 数据库抽样
function onDbDataSamplingSetting(code, identifier) {
	$.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
            "catalog.cludove": "db.data.sampling.process",
            "data_number": 500,
            "connection_id": identifier
        },
        secureuri: false,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0)
                hintMessage("导出建库脚本成功！", false)
            else {
            	 hintError("导出建库脚本失败：" + data + "！", false,
                 "javascript:void(0)");
                console.log("导出建库脚本失败：" + data + "！");
            }
        },
        error: function (data, status, e) {
            try {
                hintException(data, false, '');
                console.log(data);
            } catch (e) {
                hintError("导出建库脚本失败：" + data + "！", false,
                    "javascript:void(0)");
                console.log("导出建库脚本失败：" + data + "！");
            }
        }
    });
}

/************ 库表字段验证开始 ************/
//字段验证规则模块的显示
function fieldVerifyDisplay(field_name, resource_name) {
    var obj = document.getElementById(field_name);
    if (obj.style.display == "") {
        obj.style.display = "none";
    } else {
        obj.style.display = "";
        onFieldRegulationSearch(field_name, resource_name.toUpperCase());
    }
}

// 字段验证规则表查询显示
function onFieldRegulationSearch(field_name, resource_name) {
    $("#" + field_name + "_verify_search")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.search.view&field_name=" + field_name
            + "&resource_name=" + resource_name
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入验证规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $(this).show();
                ;
            });
}

// 开始验证规则下验证规则设置
function onFieldVerifyRegulationSetting(elem, field_name, resource_name, verify_code) {
    $("#" + elem + "_verify_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.setting.view&resource_name="
            + resource_name.toUpperCase()
            + "&field_name=" + field_name
            + "&verify_code=" + verify_code
            + "&verify_id=" + elem
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#" + field_name + "_field_verify_code").val(verify_code);
                    /*$(elem).parent().parent().parent("div").prev().children().children("input").spinner({
                     max: 100,
                     min: 0,
                     step: 1
                     });*/
                }
            });
}

//判断该字段下验证规则是否存在
function processFieldVerifyValidate(elem) {
    var resource_name = $("#column_field_label").attr("table_name").toUpperCase();
    var field_name = $("#" + elem + "_field_name_field_verify").val().toUpperCase();
    var field_verify_code = $("#" + elem + "_field_verify_code").val();
    var code = $("#" + elem + "_code_field_verify").val();
    if ($("#" + elem + "_field_verify_setting").validationEngine('validate')) {
        if (code.length > 0) {
            processFieldVerifySetting(elem, field_verify_code, code);
        } else {
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.validate.process&verify_code="
                + field_verify_code
                + "&field_name=" + elem
                + "&resource_name=" + resource_name
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("查询清洗规则重复失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "true") {
                        //alert('该字段已添加此验证规则！');
                        zdconfirm("提示", "该字段已添加此验证规则!");
                    } else {
                        processFieldVerifySetting(elem, field_verify_code, code);
                    }
                })
        }
    }
}

// 验证规则下点击提交按钮,修改或者新增验证规则
function processFieldVerifySetting(elem, field_verify_code, code) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#" + elem + "_field_verify_setting").validationEngine('validate')) {
        // disabledButton();
        var resource_name = $("#column_field_label").attr("table_name").toUpperCase();
        var field_name = elem;
        var position = $("#" + elem + "_field_verify_position").val();
        var connection_code = $("#" + elem + "_connection_code_field_verify").val();
        if (code.length > 0) {
            $.request(httpHeader, '修改验证规则', new Array('buddle.cludove',
                'catalog.cludove', 'resource_name', 'field_name', 'verify_code', 'position', 'code', 'connection_code'), new Array('diginter',
                'db.column.verify.setting.process', resource_name, field_name, field_verify_code, position, code, connection_code),
                new Array('identifier'),
                new Array(
                    'column_field_label_identifier'), 'text', null, null,
                'fieldVerifySettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证规则', new Array('buddle.cludove',
                'catalog.cludove', 'resource_name', 'field_name', 'verify_code', 'position'),
                new Array('diginter', 'db.column.verify.setting.process', resource_name, field_name, field_verify_code, position),
                new Array('identifier'), new Array('column_field_label_identifier'),
                'text', null, null, 'fieldVerifySettingSuccessCallback', 'normalErrorCallback');
        }
    }
    $("#" + elem + "_field_verify_setting").parent("div").hide();
}

$.extend({
    fieldVerifySettingSuccessCallback: function (responseText) {
        var obj = eval('(' + responseText + ')');
        // flag = 1;
        onFieldRegulationSearch(obj.field_name, obj.resource_name);
    }
});
/************ 库表字段验证结束 ************/

/************ 库表字段验证清洗开始 ************/
//字段验证清洗规则模块的显示
function fieldCleanoutDisplay(elem, field_verify_code) {
    var obj = $(elem).parent("tr").next();
    var verify_code = $(elem).parent("tr").attr("verify_code");
    if (obj.attr("style") == "display") {
        $(obj).attr("style", "display:none");
    } else {
        $(obj).attr("style", "display");
        onFieldCleanoutRegulationSearchValidate(verify_code, field_verify_code);
    }
}

// 字段验证下清洗规则表查询有数据
function onFieldCleanoutRegulationSearchValidate(verify_code, field_verify_code) {
    $(this)
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.cleanout.search.validate.process&field_verify_code=" + field_verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("载入验证规则失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    if (data != "true") {
                        onFieldCleanoutRegulationDefaultSearch(verify_code, field_verify_code);
                    } else {
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
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.cleanout.search.default.view&verify_code=" + verify_code
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
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.cleanout.search.view&field_verify_code=" + field_verify_code
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
function onFieldCleanoutRegulationSetting(field_verify_code, elem, field_cleanout_code) {
    var verify_code = $(elem).parents("table").parents("tr").attr("verify_code");
    $("#" + field_verify_code + "_cleanout_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.cleanout.setting.view&verify_code="
            + verify_code + "&field_cleanout_code=" + field_cleanout_code
            + "&field_verify_code=" + field_verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    /* $(elem).parent().parent().parent("div").prev().prev().children().children("input").spinner({
                     max: 100,
                     min: 0,
                     step: 1
                     });*/

                    if ($("#" + field_verify_code + "_cleanout_code_field_cleanout").val() == "") {
                        $("#" + field_verify_code + "_first_content_field_cleanout").val("");
                        $("#" + field_verify_code + "_second_content_field_cleanout").val("");
                    }
                }
            });
}

//验证字段清洗规则是否已存在
function processFieldCleanoutValidate(field_verify_code) {
    var cleanout_code = $("#" + field_verify_code + "_cleanout_code_field_cleanout").val();
    var code = $("#" + field_verify_code + "_code_field_cleanout").val();
    if ($("#" + field_verify_code + "_field_cleanout_setting").validationEngine('validate')) {
        if (code.length > 0) {
            processFieldCleanoutSetting(field_verify_code, cleanout_code);
        } else {
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.cleanout.validate.process&field_verify_code="
                + field_verify_code + "&field_cleanout_code=" + $("#field_cleanout_code").val()
                + "&cleanout_code=" + cleanout_code
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("查询清洗规则重复失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "true") {
                        //alert('该验证规则已添加此清洗规则！');
                        zdconfirm("提示", "该验证规则已添加此清洗规则!");
                    } else {
                        processFieldCleanoutSetting(field_verify_code, cleanout_code);
                    }
                });
        }
    }
}

// 验证规则下点击提交按钮,修改或者新增清洗规则
function processFieldCleanoutSetting(field_verify_code, cleanout_code) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#" + field_verify_code + "_field_cleanout_setting").validationEngine('validate')) {
        disabledButton();
        var first_content = $("#" + field_verify_code + "_first_content_field_cleanout").val();
        var second_content = $("#" + field_verify_code + "_second_content_field_cleanout").val();
        var position = $("#" + field_verify_code + "_verify_cleanout_position").val();
        var code = $("#" + field_verify_code + "_code_field_cleanout").val();
        var connection_code = $("#" + field_verify_code + "_connection_code_field_cleanout").val();
        if (code.length > 0) {
            $.request(httpHeader, '修改验证清洗', new Array('buddle.cludove',
                'catalog.cludove', 'field_verify_code', 'code', 'cleanout_code', 'first_content', 'second_content', 'position', 'connection_code'),
                new Array('diginter', 'db.column.verify.cleanout.setting.process', field_verify_code, code,
                    cleanout_code, first_content, second_content, position, connection_code), new Array(), new Array(), 'text', null, null,
                'fieldCleanoutSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证规则', new Array('buddle.cludove',
                'catalog.cludove', 'field_verify_code', 'cleanout_code',
                'first_content', 'second_content', 'position'), new Array('diginter',
                'db.column.verify.cleanout.setting.process', field_verify_code, cleanout_code, first_content, second_content, position),
                new Array(), new Array(), 'text', null, null,
                'fieldCleanoutSettingSuccessCallback', 'normalErrorCallback');
        }
    }
    $("#" + field_verify_code + "_field_cleanout_setting").parent("div").hide();
}

$.extend({
    fieldCleanoutSettingSuccessCallback: function (responseText) {
        enableButton();
        onFieldCleanoutRegulationSearch(responseText);
    }
});

/************ 库表字段验证清洗结束 ************/


/*********** 开始验证规则设置 ***********/
function onVerifySetting(record_code) {
    setRemoveSelectRecordButton('block', '验证规则', 'diginter', 'verify.remove.process',
        'verify_record_code', 'verify_check_select', 'verify_select', 'removeSelectRecordBasic');

    $("#basics_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=verify.search.view"
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
                //
                // locateRecord(record_code, 'verify_check',
                //     'verify_select', 'showVerifySetting(\''+record_code+'\')');
                // showVerifySetting('');
            });
}
// 显示验证规则设置界面
function showVerifySetting(code) {
    $("#basics_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=verify.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示验证规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#basics_setting").show();
                    verifyClassRegulation();
                    verifyRegulationClass();
                }
                ;
                // hintMessage("显示验证规则设置界面成功。", false);

                $('#verify_name').focus();
            });
}
function verifyClassRegulation() {
    if ($('#class_verify').val() != '') {
        $('#regulation_verify').removeClass('validate[required,maxSize[256]]');
    } else if ($('#class_verify').val() == '' && $('#regulation_verify').val() == '') {
        $('#class_verify').attr('class', 'input-1 validate[required]');
        $('#regulation_verify').attr('class', 'input-1 validate[required,maxSize[256]]');
    }
}
function verifyRegulationClass() {
    if ($('#regulation_verify').val() != '') {
        $('#class_verify').removeClass('validate[required]');
    } else if ($('#class_verify').val() == '' && $('#regulation_verify').val() == '') {
        $('#class_verify').attr('class', 'input-1 validate[required]');
        $('#regulation_verify').attr('class', 'input-1 validate[required,maxSize[256]]');
    }
}

// 点击提交按钮,修改或者新增验证规则时判断标识是否存在
function processVerifyValidate() {
    if (validateIdentifier($("#identifier_verify").val(), /^[a-z]+(\.{0,1}[a-z]+){0,}$/, /^([a-z]{0,})+((\.{0,1}[a-z]+){0,})+\.{0,1}$/)) {
        if ($('#validate_verify_setting').validationEngine('validate')) {
            if ($('#code_verify').val() == "") {
                var identifier_verify = $('#identifier_verify').val();
                $(this).load(
                    httpsHeader
                    + "s?buddle.cludove=diginter&catalog.cludove=verify.setting.validate.process&identifier=" + identifier_verify
                    + "&t=" + new Date().getTime(),
                    function (data, textStatus, jqXHR) {
                        if (textStatus == "error") {
                            // console.log(data);
                            hintError("查询验证标识重复失败！", false, "javascript:void(0)");
                            hintException(data, false, "javascript:void(0)");
                        } else if (data != "") {
                            //alert('该验证标识已存在！');
                            zdconfirm("提示", "该验证标识已存在!");
                        } else {
                            processVerifySetting()
                        }
                    })
            } else {
                processVerifySetting()
            }
            $('.configure-fr-side').hide();
        }
    } else {
        //alert("标识必须为小写字母可加.分隔");
        zdconfirm("提示", "标识必须为小写字母可加.分隔!");
        $("#identifier_verify").focus();
    }
}
// 点击提交按钮,修改或者新增验证规则
function processVerifySetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_verify_setting').validationEngine('validate')) {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        if ($('#code_verify').val().length > 0) {
            $.request(httpHeader, '修改验证规则', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'verify.setting.process'), new Array('code',
                'connection_code', 'regulation_name',
                'identifier', 'class', 'regulation', 'description'),
                new Array('code_verify', 'connection_code_verify',
                    'regulation_name_verify', 'identifier',
                    'class_verify', 'regulation_verify', 'description_verify'), 'text', null, null,
                'verifySettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证规则', new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter',
                'verify.setting.process'), new Array('regulation_name',
                'identifier', 'class', 'regulation', 'description'),
                new Array('regulation_name_verify',
                    'identifier_verify', 'class_verify',
                    'regulation_verify', 'description_verify'), 'text', null, null,
                'verifySettingSuccessCallback', 'normalErrorCallback');
        }
    }
}
$.extend({
    verifySettingSuccessCallback: function (responseText) {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        $("#basics_setting").hide();
        onVerifySetting(responseText)
    }
});

function verifyCleanoutdisplay(TagName) {
    var obj = document.getElementById(TagName);
    if (obj.style.display == "") {
        obj.style.display = "none";
    } else {
        obj.style.display = "";
        onCleanoutRegulationSearch(TagName);
        $('.cleanout_setting_display').css('display', 'none');
    }
}
// 开始验证规则下清洗规则表
function onCleanoutRegulationSearch(verify_code) {
    $("#" + verify_code + "_cleanout_search")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=verify.cleanout.search.view&verify_code=" + verify_code
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
function onCleanoutRegulationSetting(verify_code, verify_cleanout_code) {
    $("#" + verify_code + "_cleanout_setting")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=verify.cleanout.setting.view&verify_cleanout_code="
            + verify_cleanout_code
            + "&verify_code=" + verify_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
}

//查询清洗规则是否重复
function processVerifyCleanoutValidate(elem, cleanout_verify_code) {
    var verify_code = $("#" + cleanout_verify_code + "_verify_code").val();
    var cleanout_code = $("#" + cleanout_verify_code + "_cleanout_code").val();
    if ($("#" + cleanout_verify_code + "_regulation_setting").validationEngine('validate')) {
        if ($("#" + cleanout_verify_code + "_code_verify_cleanout").val() == "") {
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=verify.cleanout.class.validate.process&verify_code="
                + verify_code + "&cleanout_code=" + cleanout_code
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("查询清洗规则重复失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "true") {
                        //alert('该验证规则已添加此清洗规则！');
                        zdconfirm('提示', "该验证规则已添加此清洗规则");
                    } else {
                        processVerifyCleanoutSetting(elem, cleanout_code, cleanout_verify_code)
                    }
                })
        } else {
            processVerifyCleanoutSetting(elem, cleanout_code, cleanout_verify_code)
        }
    }
}

// 验证规则下点击提交按钮,修改或者新增清洗规则
function processVerifyCleanoutSetting(elem, cleanout_code, cleanout_verify_code) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#" + cleanout_verify_code + "_regulation_setting").validationEngine('validate')) {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        var verify_code = $("#" + cleanout_verify_code + "_verify_code").val();
        var first_content = $("#" + cleanout_verify_code + "_first_content").val();
        var second_content = $("#" + cleanout_verify_code + "_second_content").val();
        var position = $("#" + cleanout_verify_code + "_cleanout_position").val();
        var code = $("#" + cleanout_verify_code + "_code_verify_cleanout").val();
        var connection_code = $("#" + cleanout_verify_code + "_connection_code_verify_cleanout").val();
        if (code.length > 0) {
            $.request(httpHeader, '修改验证清洗', new Array('buddle.cludove',
                'catalog.cludove', 'verify_code', 'code',
                'connection_code', 'cleanout_code', 'first_content', 'second_content', 'position'),
                new Array('diginter', 'verify.cleanout.setting.process', verify_code, code, connection_code,
                    cleanout_code, first_content, second_content, position),
                new Array(), new Array(), 'text', null, null,
                'verifyCleanoutSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证清洗', new Array('buddle.cludove',
                'catalog.cludove', 'verify_code', 'cleanout_code', 'first_content', 'second_content', 'position'),
                new Array('diginter', 'verify.cleanout.setting.process',
                    verify_code, cleanout_code, first_content, second_content, position), new Array(),
                new Array(), 'text', null, null,
                'verifyCleanoutSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}
$.extend({
    verifyCleanoutSettingSuccessCallback: function (responseText) {
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
        onCleanoutRegulationSearch(responseText);
        $("#" + responseText + "_cleanout_setting").hide();
    }
});

/* 开始日志导航 */
function onJournalSearch() {
    var journalDate = new Date($("#journal_date").val());
    var pageNumber = undefined == $("#journal_page_number").val() ? 0 : $("#journal_page_number").val();
    var recordNumber = undefined == $("#journal_record_number").val() ? 15 : $("#journal_record_number").val();

    $("#monitoring_log_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=journal.search.view"
            + "&buddle_id=" + $("#journal_buddle_id").val()
            + "&journal_type=" + $("#journal_navigate_type").val()
            + "&record_host=" + $("#console_hinge_host").val()
            + "&record_year=" + journalDate.getFullYear()
            + "&record_month=" + (journalDate.getMonth() + 1)
            + "&record_day=" + journalDate.getDate()
            + "&pageNumber.cludove=" + pageNumber
            + "&recordNumber.cludove=" + recordNumber
            + "&template=" + httpHeader
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

//  搜索日志的时间
function CurentTime() {
    var now = new Date();
    var year = now.getFullYear();       //年
    var month = now.getMonth() + 1;     //月
    var day = now.getDate();     //日
    if (month < 10) {
        month = "0" + month;
    }
    if (day < 10) {
        day = "0" + day;
    }
    $('#journal_date').val(year + "-" + month + "-" + day);
    // $("#journal_page_number").val(0);
    // $("#journal_record_number").val(1);
    onJournalSearch();
}

function onJournalDate() {
    var timer = {
        event: "change",
        elem: '#journal_date',
        format: 'YYYY-MM-DD',
        istime: true,
        choose: function (dates) {
            $('#journal_page_number').val(0);
            $('#journal_record_number').val(15);
            onJournalSearch();
        }
    }
    laydate(timer);
}
//跳转数据管理界面
function onAdministration(s_resource_name, s_identifier) {
    var urls = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=db.table.data.edit.view"
        + "&resource_name=" + s_resource_name.toUpperCase() + "&connection_id=" + s_identifier; //转向网页的地址;
    var names = "数据管理"; //网页名称，可为空;
    var Widths = window.screen.width * 0.85; //弹出窗口的宽度;
    var Heights = window.screen.height * 0.85; //弹出窗口的高度;
    var Tops = (window.screen.height - 60 - Heights) / 2; //获得窗口的垂直位置;
    var Lefts = (window.screen.width - 20 - Widths) / 2; //获得窗口的水平位置;

    window.open(urls, names, 'height=' + Heights + ',,innerHeight=' + Heights + ',width=' + Widths + ',innerWidth='
        + Widths + ',top=' + Tops + ',left=' + Lefts
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

var datas = {
    inits: function () {
        datas.ManagementSetting();
        datas.ManagementSearch();
    },
    ManagementSetting: function () {
        $("#db_table_data_setting").load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.table.data.edit.setting.view"
            + "&resource_name=" + new Base64().encode( $("#c_resource_name").val() ) + ":decode"
            + "&connection_id=" + $("#c_connection_id").val()
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
    ManagementSearch: function () {

        $("#db_table_data_search").load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.table.data.edit.search.view"
            + "&resource_name=" + new Base64().encode( $("#c_resource_name").val() ) + ":decode"
            + "&connection_id=" + $("#c_connection_id").val()
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    console.log(data);
                    hintError("失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#db_table_data_search").on('click', 'table', function (e) {
                        if (e.target.tagName.toLocaleLowerCase() == 'td') {
                            $('#search_td').val($(e.target).text());
                            var search_th = $('#db_table_data_search table th:nth-child' + '(' + $(e.target).attr('position') + ')').text();
                            $('#search_th').val(search_th);
                            datas.ManagementFieldSearch();
                        }
                    })
                }
                ;
            }
        )
    },
    ManagementFieldSearch: function () {
        if ($('#search_th').val().length == 0 && $('#search_td').val().length > 0) {
            zdalert('提示', '请选择查询字段');
        } else if ($('#search_td').val().length == 0 && $('#search_th').val().length > 0) {
            zdalert('提示', '请输入查询内容');
        } else {
            var link = '';
            if ($('#search_th').val().length > 0 && $('#search_td').val().length > 0) {
                var name = $("#c_connection_id").val() + "." + $("#c_resource_name").val() + "." + $('#search_th').val();
                var search_key = $('#search_td').val();
                link = "&" + name + "=" + encodeURI(encodeURI(search_key));
            }
            $("#db_table_data_field_search").load(
                httpHeader
                + "s?buddle.cludove=diginter&catalog.cludove=db.table.data.edit.field.search.view"
                + "&resource_name=" + $("#c_resource_name").val()
                + "&connection_id=" + $("#c_connection_id").val()
                + "&pageNumber.cludove=" + $("#data_edit_label_page_number").val()
                + "&recordNumber.cludove=" + $("#data_edit_label_record_number").val()
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
//    var resource_name = $("#validate_resource_name").val().toLowerCase();
	//避免导入excel插入oracle数据出现错误，不需要转小写
    var resource_name = $("#validate_resource_name").val();
    var connection_id = $("#validate_identifier").val();
    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
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
            if (data.indexOf("success") >= 0) {
                zdalert('提示', "上传" + excel_name + "成功！")
                // window.location.reload();
            }
            else {
                try {
                    console.log(data);
                    var obj = eval('(' + data + ')');
                    zdalert('提示', obj[0].record_content)
                } catch (e) {
                    zdalert('提示', "上传" + excel_name + "失败：" + data + "！")
                    // alert("上传" + excel_name + "失败：" + data + "！");
                }
            }
        },
        error: function (data, status, e) {
            try {
                console.log("error:" + data);
                var obj = eval('(' + data + ')');
                zdalert('提示', obj[0].record_content)
            } catch (e) {
                zdalert('提示', "上传" + resource_name + "失败：" + data + "！")
                // alert("上传" + resource_name + "失败：" + data + "！");
            }
        }
    });
    return true;
}
//------批量导入数据标注excel
function ImportLabelExcel( import_file_id) {
//    var resource_name = $("#validate_resource_name").val().toLowerCase();
    //避免导入excel插入oracle数据出现错误，不需要转小写
    var connection_id = $("#db_identifier").val();
    // var connection_code = $("connection_code_resource_label_excel").val();
    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
            "catalog.cludove": "db.import.label.process",
            "style_name": 'base',
            "language_name": 'zh-cn',
            "connection_id": connection_id
            // "connection_code": connection_code
        },
        secureuri: false,
        fileElementId: import_file_id,
        dataType: 'text',
        success: function (data, status) {
            if (data.indexOf("success") >= 0) {
                zdalert('提示', "导入数据标注成功！");
                // window.location.reload();
                //刷新选中的表
                if($('#db_table_naviagate a.active')){
                    $('#db_table_naviagate a.active').trigger('click');
                }
            }
            else {
                try {
                    console.log(data);
                    var obj = eval('(' + data + ')');
                    zdalert('提示', obj[0].record_content)
                } catch (e) {
                    zdalert('提示', "导入数据标注失败：" + data + "！");
                    // alert("上传" + excel_name + "失败：" + data + "！");
                }
            }
        },
        error: function (data, status, e) {
            try {
                console.log("error:" + data);
                var obj = eval('(' + data + ')');
                zdalert('提示', obj[0].record_content)
            } catch (e) {
                zdalert('提示', "导入数据标注失败：" + data + "！");
                // alert("上传" + resource_name + "失败：" + data + "！");
            }
        }
    });
    return true;
}

//------导出XML
function onDataPreview(resource_name, connection_id) {
    var urlxml = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=db.data.preview"
        + "&resource_name=" + resource_name.toUpperCase() + "&connection_id=" + connection_id; //转向网页的地址;
    var name = "导出XML"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.70; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 80 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - iWidth) / 2; //获得窗口的水平位置;

    window.open(urlxml, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function onDataShowsearch() {
    $("#data_xml").load(
        httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=db.data.preview.search"
        + "&resource_name=" + $("#x_resource_name").val()
        + "&connection_id=" + $("#x_connection_id").val()
        + "&t="
        + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                alert("导出xml失败！" + data);
            } else
                ;
        }
    )
}
//--------导入XML
function ImportXml(style_name, language_name, xml_import_input, xml_name) {

	//oracle上传xml不需要进行转小写
//    var resource_name = $("#validate_resource_name").val().toLowerCase();
    var resource_name = $("#validate_resource_name").val();
    var connection_id = $("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
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
            if (data.indexOf("success") >= 0) {
                zdalert('提示', "上传" + xml_name + "成功！");
                // console.log("上传" + xml_name + "成功！");
                // window.location.reload();
            }
            else {
                try {
                    console.log(data);
                    var obj = eval('(' + data + ')');
                    zdalert('提示', obj[0].record_content)
                } catch (e) {
                    zdalert('提示', "上传" + xml_name + "失败：" + data + "！");
                    // alert("上传" + xml_name + "失败：" + data + "！");
                }
            }
        },
        error: function (data, status, e) {
            try {
                console.log(data);
                var obj = eval('(' + data + ')');
                zdalert('提示', obj[0].record_content)
            } catch (e) {
                zdalert('提示', "上传" + excel_name + "失败：" + data + "！")
                // alert("上传" + excel_name + "失败：" + data + "！");
            }
        }
    });
    return true;
}

/* excel文件上传 */
function uploadExcelFile(style_name, language_name, file_input_id, excel_name) {

    var buddle_id = $("#buddle_id").val();
    var catalog_id = $("#catalog_id").val();
    var resource_name = $("#validate_resource_name").val();
    var connection_id = $("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
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
            if (data.indexOf("success") >= 0) {
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

//    var resource_name = $("#validate_resource_name").val().toLowerCase();
    var resource_name = $("#validate_resource_name").val();
    var connection_id = $("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
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
    var resource_name = $("#validate_resource_name").val();
    var connection_id = $("#validate_identifier").val();

    $.ajaxFileUpload({
        url: httpHeader + "s",
        data: {
            "buddle.cludove": "diginter",
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
            if (data.indexOf("success") >= 0) {
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

//跳转依赖关系界面
function onDbTableEdit(s_resource_name, s_identifier) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=db.table.edit.view"
        + "&s_resource_name=" + s_resource_name.toUpperCase() + "&s_identifier=" + s_identifier; //转向网页的地址;
    var name = "编辑功能返回"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.85; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

//开始绘制依赖关系图表
var db = {
    myDiagram: null,
    nodeData: null,
    fieldTemplate: null,
    rightKey: null,
    g: null,
    remove_resource_name: null,
    remove_identifier: null,
    remove_s_field: null,
    remove_r_field: null,
    init: function () {
        db.g = go.GraphObject.make;  // for conciseness in defining templates
        db.myDiagram =
            db.g(go.Diagram, "myDiagramDiv",
                {
                    initialContentAlignment: go.Spot.Center,
                    validCycle: go.Diagram.CycleNotDirected,  // don't allow loops
                    "LinkRelinked": function (data) {
                        var r_resource_name;
                        var r_identifier;
                        for (var i = 0; i <= db.nodeData.length - 1; i++) {
                            if (db.nodeData[i].key == data.subject.data.to) {
                                r_resource_name = db.nodeData[i].r_resource_name;
                                r_identifier = db.nodeData[i].r_identifier;
                                break;
                            }
                        }
                        db.onDblink(r_resource_name, r_identifier, data.subject.data.fromPort, data.subject.data.toPort, db.remove_resource_name, db.remove_identifier, db.remove_s_field, db.remove_r_field);
                        db.remove_s_field = data.subject.data.fromPort;
                        db.remove_r_field = data.subject.data.toPort;
                        for (var i = 0; i <= db.nodeData.length - 1; i++) {
                            if (db.nodeData[i].key == data.subject.data.to) {
                                db.remove_resource_name = db.nodeData[i].r_resource_name;
                                db.remove_identifier = db.nodeData[i].r_identifier;
                                break;
                            }
                        }
                    },
                    "LinkDrawn": function (data) {
                        var r_resource_name;
                        var r_identifier;
                        for (var i = 0; i <= db.nodeData.length - 1; i++) {
                            if (db.nodeData[i].key == data.subject.data.to) {
                                r_resource_name = db.nodeData[i].r_resource_name;
                                db.remove_resource_name = db.nodeData[i].r_resource_name;
                                r_identifier = db.nodeData[i].r_identifier;
                                db.remove_identifier = db.nodeData[i].r_identifier
                                break;
                            }
                        }

                        db.remove_s_field = data.subject.data.fromPort;
                        db.remove_r_field = data.subject.data.toPort;
                        db.onDblink(r_resource_name, r_identifier, data.subject.data.fromPort, data.subject.data.toPort, '', '', '', '');
                    },
                    "SelectionDeleted": function (obj, a) {
                        //设置允许删除
                        db.onDbRemovelink($('#s_resource_name').val(), $('#s_identifier').val(), db.remove_s_field, db.remove_identifier, db.remove_resource_name, db.remove_r_field)
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
                    {
                        margin: new go.Margin(0, 5), column: 1, font: "bold 13px sans-serif",
                        alignment: go.Spot.Left,
                        // and disallow drawing links from or to this text:
                        fromLinkable: false, toLinkable: false
                    },
                    new go.Binding("text", "name")),
                db.g(go.TextBlock,
                    {margin: new go.Margin(0, 5), column: 2, font: "13px sans-serif", alignment: go.Spot.Left},
                    new go.Binding("text", "info"))
            );
        // This template represents a whole "record".
        db.myDiagram.nodeTemplate =
            db.g(go.Node, "Auto",
                {
                    "click": function (a, data) {
                        var r_resource_name = data.data.r_resource_name;
                        var r_identifier = data.data.r_identifier;
                        db.showDbSetting(r_resource_name, r_identifier);
                    }
                },
                {
                    movable: false,
                    copyable: false,
                    deletable: false
                },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // this rectangular shape surrounds the content of the node
                db.g(go.Shape,
                    {fill: "#EEEEEE"}),
                // the content consists of a header and a list of items
                db.g(go.Panel, "Vertical",
                    // this is the header for the whole node
                    db.g(go.Panel, "Auto",
                        {stretch: go.GraphObject.Horizontal},  // as wide as the whole node
                        db.g(go.Shape,
                            {fill: "#1570A6", stroke: null}),
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
                {
                    "click": function (a, obj) {
                        db.remove_s_field = obj.data.fromPort;
                        db.remove_r_field = obj.data.toPort;
                        for (var i = 0; i <= db.nodeData.length - 1; i++) {
                            if (db.nodeData[i].key == obj.data.to) {
                                db.remove_resource_name = db.nodeData[i].r_resource_name;
                                db.remove_identifier = db.nodeData[i].r_identifier;
                                break;
                            }
                        }
                    }
                },
                {
                    relinkableFrom: true, relinkableTo: true, // let user reconnect links
                    toShortLength: 4, fromShortLength: 2
                },
                db.g(go.Shape, {strokeWidth: 1.5}),
                db.g(go.Shape, {toArrow: "Standard", stroke: null})
            );
        // db.Drawing();

        db.showDbSetting('', '');
        db.onDbdata();
        function isValid(a, b, c, d) {
            return a.data.key == $("#s_identifier").val() + "." + $("#s_resource_name").val()
        }

        db.myDiagram.toolManager.linkingTool.linkValidation = isValid;

        db.myDiagram.toolManager.relinkingTool.linkValidation = isValid;
    },
    showDbSetting: function (r_resource_name, r_identifier) {
        $("#db_data_setting").load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.table.data.setting.view"
            + "&s_resource_name=" + $("#s_resource_name").val()
            + "&s_identifier=" + $("#s_identifier").val()
            + "&r_resource_name=" + r_resource_name
            + "&r_identifier=" + r_identifier
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                onDataConnectionIdChange();
            }
        )
    },
    onDbdata: function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter',
            'db.table.data.search.view'), new Array('s_resource_name', 's_identifier'), new Array('s_resource_name', 's_identifier'), 'text', null, null,
            'showDbDataSettingSuccessCallback', 'normalErrorCallback');
    },
    onDblink: function (r_resource_name, r_identifier, s_field, r_field, remove_resource_name, remove_identifier, remove_s_field, remove_r_field) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove', 'r_resource_name', 'r_identifier', 's_field',
            'r_field', 'remove_resource_name', 'remove_identifier', 'remove_s_field', 'remove_r_field'), new Array('diginter',
            'db.table.data.link.process', r_resource_name, r_identifier, s_field, r_field, remove_resource_name, remove_identifier, remove_s_field, remove_r_field),
            new Array('s_resource_name', 's_identifier'),
            new Array('s_resource_name', 's_identifier'), 'text', null, null,
            null, 'normalErrorCallback');
    },
    onDbRemovelink: function (s_resource_name, s_identifier, s_field, r_identifier, r_resource_name, r_field) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove', 's_resource_name', 's_identifier', 's_field',
            'r_identifier', 'r_resource_name', 'r_field'), new Array('infoinge',
            'db.table.data.link.remove.process', s_resource_name, s_identifier, s_field, r_identifier, r_resource_name, r_field),
            new Array(),
            new Array(), 'text', null, null,
            null, 'normalErrorCallback');
    },
    Drawing: function (responseText) {
        var obj = eval('(' + responseText + ')');
        var data = obj[0];
        var styleHeight = 0;
        var height = 0;
        for (var i = 0; i <= data.length - 1; i++) {
            data[i].loc = new Array();
            if (i == 0) {
                data[i].loc = "0 0";
                styleHeight = (data[i].fields.length) * 18 + 150;
            } else {

                data[i].loc = "650" + " " + height;
                height += (data[i].fields.length) * 18 + 150;
            }
        }
        if (height > styleHeight)
            styleHeight = height;
        db.nodeData = data;
        for (var i = 0; i <= data.length - 1; i++) {
            for (var r = 0; r <= data[i].fields.length - 1; r++) {
                var length = data[i].fields[r].info.length;
                data[i].fields[r].info = "[" + length + "] " + data[i].fields[r].info.substring(0, 16);
            }
        }
        if (styleHeight > 800)
            styleHeight = 800;
        $("#myDiagramDiv").css('height', styleHeight + 50 + "px");
        db.myDiagram.model =
            db.g(go.GraphLinksModel,
                {
                    linkFromPortIdProperty: "fromPort",
                    linkToPortIdProperty: "toPort",
                    nodeDataArray: data,
                    linkDataArray: obj[1]
                });

        // db.rightKey = data[0].key;
        // if(db.rightKey !=null){
        //     db.myDiagram.positionComputation = computeIntegralPosition;
        //     function computeIntegralPosition(diagram, pt) {
        //         db.myDiagram.findNodeForKey(db.rightKey).position = new go.Point(0,pt.y +100);
        //         return new go.Point(Math.floor(pt.x), Math.floor(pt.y));
        //     }
        // }
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
        disabledButton();
        if ($("#connection_id_by_db").val() != $("#r_identifier").val() || $("#resource_name_by_db").val() != $("#r_resource_name").val()) {
            if ($('#code_db').val().length > 0) {
                var is_repeat = true;
                if ($('#r_resource_name').val() == $('#resource_name_by_db').val()
                    && $('#r_identifier').val() == $('#connection_id_by_db').val())
                    is_repeat = false;
                else if (db.myDiagram.findNodeForKey($("#connection_id_by_db").val() + '.' +$("#resource_name_by_db").val()) == null)
                    is_repeat = false;

                if (is_repeat == false) {
                    $.request(httpHeader, '新增库表信息', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('diginter',
                        'db.table.data.setting.process'), new Array('code', 'connection_code', 's_identifier',
                        'r_identifier', 's_resource_name', 'r_resource_name', 'remove_identifier', 'remove_resource_name'),
                        new Array('code_db',
                            'connection_code', 's_identifier', 'connection_id_by_db',
                            's_resource_name', 'resource_name_by_db', 'r_identifier', 'r_resource_name'), 'text', null, null,
                        'dbTableSettingSuccessCallback', 'normalErrorCallback');
                }else {
                    enableButton();
                    zdalert('提示','不允许添加重复的库表关联');
                }
            } else {
                if (db.myDiagram.findNodeForKey($("#connection_id_by_db").val() + '.' +$("#resource_name_by_db").val()) == null) {
                    $.request(httpHeader, '新增库表信息', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('diginter',
                        'db.table.data.setting.process'), new Array('s_identifier',
                        'r_identifier', 's_resource_name', 'r_resource_name'),
                        new Array('s_identifier', 'connection_id_by_db',
                            's_resource_name', 'resource_name_by_db'), 'text', null, null,
                        'dbTableSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    enableButton();
                    zdalert('提示','不允许添加重复的库表关联')
                }
            }
        }
        else
            enableButton();

    }
}
$.extend({
    dbTableSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        enableButton();
        db.showDbSetting($('#resource_name_by_db').val(),$('#connection_id_by_db').val())
        db.onDbdata();

    }
});


function processDbTableRemove() {
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove'), new Array('diginter',
        'db.table.data.remove.process'), new Array('s_resource_name', 's_identifier', 'r_resource_name', 'r_identifier'), new Array('s_resource_name', 's_identifier', 'resource_name_by_db', 'connection_id_by_db'), 'text', null, null,
        'removeDbDataSettingSuccessCallback', 'normalErrorCallback');
}

$.extend({
    removeDbDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        $("#r_resource_name").val("");
        $("#r_identifier").val("");
        $(".set_data_name").html("库表关联-新增");
        $(".span_data_edit").hide();
        $('#connection_code').val('');
        $('#r_identifier').val('');
        $('#r_resource_name').val('');
        $('#data_name').focus();
        $('input:radio[name="data_select"]').attr('checked', false);
        // 刷新页面
        db.onDbdata();

    }
});


/************ 驱动处理数据元数据开始 ***********/
//跳转到驱动处理数据元数据页面
function onProcessorMetadataSetting(processor_class) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=metadata.processor.edit.view"
        + "&processor_class=" + processor_class; //转向网页的地址;
    var name = "编辑数据元数据说明"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.75; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.75; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 50 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}
function onProcessorMetadataSearch() {
    setMetadataRemoveSelectRecordButton('block', '数据元数据', 'diginter',
        'metadata.processor.remove.process', 'code',
        'processor_metadata_check_select', 'processor_metadata_select', 'removeSelectRecordMetadata');
    $("#metadata_processor_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=metadata.processor.search.view"
            + "&processor_class=" + $("#processor_class").val() + "&data_direct=" + $("#data_direct").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据元数据失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                hintMessage("载入目录样式单成功。", false);
                checkAll('span_check_processor_metadata',
                    'span_check_select_processor_metadata',
                    'processor_metadata_check_select',
                    'check_all_processor_metadata');

            });
}
function showProcessorMetadataSetting(code, data_id) {
    $("#metadata_processor_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=metadata.processor.setting.view&metadata_code="
            + code
            + "&metadata_data_id=" + data_id
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示数据元数据设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $('#metadata_processor_setting_right').show();
                    if ($('#code_processor_metadata').val() == '') {
                        $('#processor_metadata_primary_name').val($('#processor_metadata_primary_name_used').val());
                    }
                }

                /*;
                 // hintMessage("显示数据参数设置界面成功。", false);
                 $('#processor_metadata_metadata_length').spinner({
                 max: 100,
                 min: 1,
                 step: 1
                 });

                 $('#processor_metadata_metadata_length_spinner').spinner({
                 max: 100,
                 min: 1,
                 step: 1
                 });*/

            });
}
function processProcessMetadataSetting() {
    var data_id = $("#processor_class").val();
    if ($('#validate_processor_metadata_setting').validationEngine('validate')) {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        if ($('#code_processor_metadata').val().length > 0) {
            $.request(httpHeader, '修改功能参数', new Array('buddle.cludove',
                'catalog.cludove', 'data_id'), new Array('diginter', 'metadata.processor.setting.process', data_id),
                new Array('code', 'name', 'length', 'primary_name', 'type', 'remark', 'data_direct'),
                new Array('code_processor_metadata', 'processor_metadata_metadata_name', 'processor_metadata_metadata_length',
                    'processor_metadata_primary_name', 'processor_metadata_type', 'processor_metadata_remark', 'data_direct'), 'text',
                null, null, 'processorMetadataSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增功能参数', new Array('buddle.cludove',
                'catalog.cludove', 'data_id'), new Array('diginter', 'metadata.processor.setting.process', data_id),
                new Array('name', 'length', 'primary_name', 'type', 'remark', 'data_direct'),
                new Array('processor_metadata_metadata_name', 'processor_metadata_metadata_length',
                    'processor_metadata_primary_name', 'processor_metadata_type', 'processor_metadata_remark', 'data_direct'), 'text',
                null, null, 'processorMetadataSuccessCallback', 'normalErrorCallback');
        }
        $("validate_processor_metadata_setting").hide();
    }
}
$.extend({
    processorMetadataSuccessCallback: function (responseText) {
        // 刷新页面
        onProcessorMetadataSearch();
        $('#metadata_processor_setting_right').hide();
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});
/* 设置数据元数据单独批量删除按钮 */
function setMetadataRemoveSelectRecordButton(display, title, buddle_id, catalog_id,
                                             record_code_name, resource_check_select_class, select_input_name, remove_name) {
    $("#" + remove_name).css("display", display);
    if (display == "block") {
        $("#" + remove_name).attr("title", "停用所选" + title);


        $("#" + remove_name).attr(
            "onclick",
            "zdconfirm('提示','\"确认停用已选" + title
            + "吗？\"',function(confirm){if (confirm) {removeMetadataSelectRecord(this, '"
            + resource_check_select_class + "', '" + buddle_id + "', '" + catalog_id
            + "', '" + record_code_name + "');} })");

        // $('#remove_input_name').val(select_input_name);
    } else
        $("#" + remove_name).removeAttr("onclick");
}
function removeMetadataSelectRecord(check_input, class_name, buddle_id, catalog_id,
                                    record_code_name) {
    var records = $('.' + class_name);
    var record_code = '';
    var connection_code = '';
    var is_exits = 0;
    var processor_class = $('#data_id_class').val();
    for (var i = 0; i < records.length; i++) {
        if (records.eq(i).parent().parent().hasClass("on")) {
            is_exits = 1;
            break;
        }
    }
    if (is_exits == 0) {
        zdconfirm("提示", "未选中!");
        //alert("未选中");
    } else {
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];
                records.eq(i).parent().parent().attr("id", record_code);
                $.request(httpHeader, '', new Array('buddle.cludove',
                    'catalog.cludove', 'is_active', record_code_name,
                    'connection_code', 'processor_class'), new Array(buddle_id, catalog_id,
                    'false', record_code, connection_code, processor_class), new Array(),
                    new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                    'normalErrorCallback');
            }
        }
        is_exits = 0;
    }
}
/************ 数据元数据结束 ***********/
/* 设置驱动处理单独批量删除按钮 */
function setProcessorRemoveSelectRecordButton(display, title, buddle_id, catalog_id,
                                              record_code_name, resource_check_select_class, select_input_name, remove_name) {
    $("#" + remove_name).css("display", display);
    if (display == "block") {
        $("#" + remove_name).attr("title", "停用所选" + title);

        $("#" + remove_name).attr(
            "onclick",
            "zdconfirm('提示','\"确认停用已选" + title
            + "吗？\"',function(confirm){if (confirm) {removeProcessorSelectRecord(this, '"
            + resource_check_select_class + "', '" + buddle_id + "', '" + catalog_id
            + "', '" + record_code_name + "');} })");

        // $('#remove_input_name').val(select_input_name);
    } else
        $("#" + remove_name).removeAttr("onclick");
}
function removeProcessorSelectRecord(check_input, class_name, buddle_id, catalog_id,
                                     record_code_name) {
    var records = $('.' + class_name);
    var record_code = '';
    var connection_code = '';
    var processor_class = '';
    var is_exits = 0;
    for (var i = 0; i < records.length; i++) {
        if (records.eq(i).parent().parent().hasClass("on")) {
            is_exits = 1;
            break;
        }
    }
    if (is_exits == 0) {
        zdconfirm("提示", "未选中!");
        //alert("未选中");
    } else {
        for (var i = 0; i < records.length; i++) {
            if (records.eq(i).parent().parent().hasClass("on")) {
                record_code = records.eq(i).siblings('input').val().split(',')[0];
                connection_code = records.eq(i).siblings('input').val().split(',')[1];
                processor_class = records.eq(i).siblings('input').val().split(',')[2];
                records.eq(i).parent().parent().attr("id", record_code);
                $.request(httpHeader, '', new Array('buddle.cludove',
                    'catalog.cludove', 'is_active', record_code_name,
                    'connection_code', 'class'), new Array(buddle_id, catalog_id,
                    'false', record_code, connection_code, processor_class), new Array(),
                    new Array(), 'text', null, null, 'onRecordRemoveCallBack',
                    'normalErrorCallback');
            }
        }
        is_exits = 0;
    }
}
/************ 驱动处理结束 ***********/

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

//跳转响应设计界面
function onResponseDesignEdit(buddle_id, catalog_id, type,is_exchange) {
    var urls = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=response.design.edit.view"
        + "&buddle_id=" + buddle_id + "&catalog_id=" + catalog_id 
        + "&type=" + type + "&is_exchange=" + is_exchange; //转向网页的地址;
    var names = "响应设计"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.96; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.86; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(urls, names, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}
