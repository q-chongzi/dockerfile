
/*********加载API应用标识界面***********/

function onApiApplication() {
    $("#api_application")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=api.application.load.view"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示API应用界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $(this).on('click','li>a',function () {
                        $(this).parent().siblings('li').children().css('color','#4A6782');
                        $(this).css('color','#ff633b');
                        // parent.apiDescription.location.reload(httpHeader +  "s?buddle.cludove=infoinge&catalog.cludove=api.description.show.view&buddle_id="+buddle_id);
                    })
                        ;
            });
}


/*********加载API功能目录界面***********/

function onApiCatalog(buddle_id,buddle_name) {
    parent.apiDescription.location.replace(httpHeader +  "s?buddle.cludove=infoinge&catalog.cludove=api.description.show.view&buddle_id="+buddle_id);
    $("#api_catalog")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=api.catalog.load.view&buddle_id="
            +buddle_id
            +"&name="
            +buddle_name
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示API功能目录界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $(this).on('click','li>a',function () {
                        $(this).parent().siblings('li').children().css('color','#4A6782');
                        $(this).css('color','#ff633b');
                    });
            });
}
/*********加载API功能参数查询功能***********/
function onCatalogSearch() {
    $("#api_catalog_list")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=api.catalog.search.view&search_keyword="
            +encodeURI(encodeURI($("#search_keyword").val()))
            +"&buddle_id="+$("#buddle_id").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示API功能目录界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    var base64 = new Base64();
                    $('#catalog_return_content').html(base64.decode($('#catalog_return_content').text()));
                    $('div[class~="catalog_parameter_requirement"]').each(function(idx, obj) {
                        $(obj).html(base64.decode($(obj).text()));
                    });
                }
            });
}

function keySearch(){
    if (event.keyCode==13)  //回车键的键值为13
        onCatalogSearch();
}
/*********加载API功能参数描述界面***********/
function onApiDescription(buddle_id, catalog_id) {
    var link = "s?buddle.cludove=infoinge&catalog.cludove=api.description.load.view";
    if (buddle_id != '')
        link += "&buddle_id=" + buddle_id;
    if (catalog_id != '')
        link += "&catalog_id=" + catalog_id;
    $("#api_description")
        .load(
            httpsHeader
            + link +"&t="+ new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示API功能目录界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    var base64 = new Base64();
                    $('#catalog_return_content').html(base64.decode($('#catalog_return_content').text()));
                    $('div[class~="catalog_parameter_requirement"]').each(function(idx, obj) {
                        $(obj).html(base64.decode($(obj).text()));
                    });
                    onShowCatalogComment();
                }
            });
}

function onApiConsoleHingeChange() {
    $.request(httpHeader, '改变监控讯枢节点', new Array('buddle.cludove',
        'catalog.cludove'), new Array('infoinge', 'resource.connection.show.view'), new Array('code'),
        new Array('console_hinge_select'), 'text', null, null,'ApiConsoleHingeChangeSuccessCallback',
        'normalErrorCallback');
}

$.extend({
    ApiConsoleHingeChangeSuccessCallback: function (responseText) {
        var resource_connection = eval('(' + responseText	+ ')');
        if (resource_connection != null) {
            httpHeader = resource_connection.http_header.substring(0,resource_connection.http_header.length-1);

            $('#console_hinge_host').val(resource_connection.host);
            onApiApplication();
        }
    }
});


function onApiResourceConnectionSelect(select_id, type, select_blank,
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

function showComment() {
    if ($("#comment_content").css('display') == 'none')
      $("#comment_content").css('display','block');
    else $("#comment_content").css('display','none');
}

function onCatalogComment(buddle_id,catalog_id) {
    var myDate = new Date();
//获取当前年
    var year=myDate.getFullYear();
//获取当前月
    var month=myDate.getMonth()+1;
//获取当前日
    var date=myDate.getDate();
    var h=myDate.getHours();       //获取当前小时数(0-23)
    var m=myDate.getMinutes();     //获取当前分钟数(0-59)
    var s=myDate.getSeconds();

    var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
    $.request(httpHeader, '新增功能目录效果评论', new Array('buddle.cludove',
        'catalog.cludove','comment_time','buddle_id','catalog_id','is_active'), new Array('infoinge','api.catalog.comment.setting.process',
        now,buddle_id,catalog_id,'true'), new Array('content'),
        new Array('catalog_comment_content'), 'text',
        null, null, 'commentSettingSuccessCallback',
        'normalErrorCallback');
}

$.extend({
    commentSettingSuccessCallback: function (responseText) {
        $("#comment_content").hide();
        $("#catalog_comment_content").val('');
        onShowCatalogComment();
    }
});

function onShowCatalogComment() {
    // $("#show_catalog_comment_content")

    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove'),
        new Array('infoinge','api.catalog.comment.show.view'),
        new Array('buddle_id','catalog_id'),
        new Array('buddle_id','catalog_id'), 'text',
        null, null, 'commentShowSuccessCallback',
        'normalErrorCallback');
}

$.extend({
    commentShowSuccessCallback: function (responseText) {
        var obj = eval('(' + responseText + ')');
        var html = '';
        for (var i = obj.length -1;i>0;i--) {
            html+= `<li><p>${obj[i].content}</p><div style="float:right;color:#6c6c6c;">${obj[i].comment_time}</div></li>`;
        }

        $("#show_catalog_comment_content").html(html)

    }
});