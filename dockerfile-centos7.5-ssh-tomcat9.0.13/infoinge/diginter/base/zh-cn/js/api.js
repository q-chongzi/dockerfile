$(document).ready(function(){
    setupHttpHeader();

    if($('#api_account').val() == ''){
        onApiIndexShow($("#resource_name").val(), $("#resource_identifier").val());
    }else{
        $.request(httpHeader, '正在登陆', new Array('buddle.cludove', 'catalog.cludove', 'password.cludove'),
            new Array('infoinge', 'logon.build.process', hex_md5($('#api_password').val())),
            new Array('account.cludove'), new Array('api_account'), 'text', 'hint_error', null,
            'SuccessCallback', 'ErrorCallback');
    }
});

$.extend({
    SuccessCallback : function(responseText) {
        onApiIndexShow($("#resource_name").val(), $("#resource_identifier").val());
    },
    ErrorCallback : function(responseText){
        //console.log(responseText);
    }
});

function onApiIndexShow(resource_name, resource_identifier) {
    setCookie('account', $("#api_account").val(), 24 * 365 * 100, httpHeader);
    //setCookie('password', $("#api_buddle").attr("api_password"), 24 * 365 * 100, '/');

    $("#api").load(
        httpHeader + "s?buddle.cludove=diginter&catalog.cludove=api.show.view&has_permission="
        + $("#permission").val() + "&resource_name=" + encodeURI(encodeURI(resource_name))
        + "&api_account=" + $("#api_account").val()
        + "&resource_identifier=" + resource_identifier
        + "&telephone=" + $("#api_tele").val()
        + "&email=" + $("#api_email").val()
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("显示问题诊断界面失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                onApiBuddleShow();
                onApiDescriptionShow('', '', $("#api_buddle").attr("permission"),'');
                onApiCatalogShow('');
            }
        });
}

/************ API应用插件加载开始 ***********/
function onApiBuddleShow(){
    $("#api_buddle").load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=api.application.show.view"
        + "&resource_name=" + encodeURI(encodeURI($("#api_buddle").attr("resource_name")))
        + "&resource_identifier=" + $("#api_buddle").attr("resource_identifier")
        + "&telephone=" + $("#api_buddle").attr("telephone")
        + "&email=" + $("#api_buddle").attr("email")
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                hintError("显示API应用界面失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else{
                //点击应用，显示相应的功能目录
                $("#api_buddle").on("click", ".api_buddle", function(){
                    onApiDescriptionShow($(this).attr("api_buddle_id"), '', $("#api_buddle").attr("permission"), 'function');
                });
                //点击功能目录，显示相应的功能参数
                $("#api_catalog").on("click", ".api_catalog", function(){
                    onApiDescriptionShow($(this).attr("buddle_id"), $(this).attr("catalog_id"), $("#api_buddle").attr("permission"),'');
                });
            }
        }
    );
}

/************ API功能描述加载开始 ***********/
function onApiDescriptionShow(buddle_id, catalog_id, permission, type){
    var link = "s?buddle.cludove=diginter&catalog.cludove=api.description.load.view&has_permission=" + permission
        + "&resource_identifier=" + $("#api_buddle").attr("resource_identifier")
        + "&telephone=" + $("#api_buddle").attr("telephone")
        + "&email=" + $("#api_buddle").attr("email")
        + "&catalog_type=" + type;
    if (buddle_id != ''){
        link += "&buddle_id=" + buddle_id;
    }
    if (catalog_id != ''){
        link += "&catalog_id=" + catalog_id;
    }

    $("#api_description")
        .load(
            httpsHeader + link +"&t="+ new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示API功能目录界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    var base64 = new Base64();
                    $('#catalog_return_content').html(base64.decode($('#catalog_return_content').text()));
                    $('td[class~="des"]').each(function(idx, obj) {
                        $(obj).html(base64.decode($(obj).text()));
                    });
                }
            });
}

/*********** 加载API功能目录查询功能 ***********/
function onCatalogSearch(buddle_id) {
    var kw = $("#search_keyword").val();
    if( kw != ''){
        $("#api_description")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=api.catalog.search.view&search_keyword="
                + encodeURI(encodeURI($("#search_keyword").val()))
                + "&buddle_id=" + buddle_id
                + "&resource_identifier=" + $("#api_buddle").attr("resource_identifier")
                + "&telephone=" + $("#api_buddle").attr("telephone")
                + "&email=" + $("#api_buddle").attr("email")
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("显示API功能目录界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else{
                        var base64 = new Base64();
                        $('#catalog_return_content').html(base64.decode($('#catalog_return_content').text()));
                        $('td[class~="des"]').each(function(idx, obj) {
                            $(obj).html(base64.decode($(obj).text()));
                        });
                        $("#search_keyword").val(kw);
                    }
                });
    }
}

function keySearch(buddle_id){
    if (event.keyCode==13)  //回车键的键值为13
        onCatalogSearch(buddle_id);
}

/*********加载API功能目录界面***********/
function onApiCatalogShow(buddle_id) {
    $("#api_catalog")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=api.catalog.load.view&buddle_id="
            +buddle_id + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示API功能目录界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    $("#catalog_toggle li").eq(0).children("a").css({"background-color": "#5cb9f8", "color":"#fff"}).next().slideDown();
                    $("#catalog_toggle").on('click','.catalog_toggle',function(e){
                        e.stopPropagation();
                        onApiDescriptionShow(buddle_id, '', $("#api_buddle").attr("permission"), $(this).attr("title"));
                        $(this).parent("li").siblings("li").children("a").css({"background-color":"#fff","color":"#000"}).next().slideUp();
                        $(this).css({"background-color": "#5cb9f8", "color":"#fff"}).next().slideToggle();
                    });
                    $("#catalog_toggle").on("click",".catalog a",function(){
                        $(".catalog a").css("color","#000");
                        $(this).css("color","rgb(92, 185, 248)");
                    })
                }
            });
}


//追加评论
function showComment() {
    if ($("#comment_content").css('display') == 'none')
        $("#comment_content").css('display','block');
    else $("#comment_content").css('display','none');
}

//提交评论
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
        'catalog.cludove','comment_time','buddle_id','catalog_id','is_active'), new Array('diginter','api.catalog.comment.setting.process',
        now,buddle_id,catalog_id,'true'), new Array('content'),
        new Array('catalog_comment_content'), 'text',
        null, null, 'catalogCommentSettingSuccessCallback',
        'normalErrorCallback');
}
$.extend({
    catalogCommentSettingSuccessCallback: function (responseText) {
        $("#comment_content").hide();
        $("#catalog_comment_content").val("");
        onShowCatalogComment($("#api_search").attr("buddle_id"), $("#api_search").attr("catalog_id"));
    }
});

//显示功能评论
function onShowCatalogComment(buddle_id,catalog_id) {
    $("#show_catalog_comment_content")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=api.catalog.comment.show.view"
            + "&buddle_id=" + buddle_id
            + "&catalog_id=" + catalog_id
            +"&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == 'error') {
                    hintError("载入资源连接列表失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
}
