//导航开关、服务注册、总线注册、数据异常刷新
function monitorInit() {
    switchIint();
    onResourceRegistSearch();
    onResourceDsbRegistSearch();
    dataExceptionShow();
}

//首页下面四个显示框,若用户未进行操作，30秒后隐藏;
function indexConInit(delayed){
    var time_delayed = delayed !='' ? delayed : 0.5;
    timeUserFun(time_delayed, document.getElementById("index-con1"), $(".left-spr"), $("#monitoring_center_right"));  //异常报警
    timeUserFun(time_delayed, document.getElementById("index-con2"), $(".right-spr"), $("#exception_page"));  //数据异常
    timeUserFun(time_delayed, document.getElementById("index-con3"), $(".left-spr2"), $("#serve_page"));  //服务总线
    //timeUserFun(0.5, document.getElementById("index-con4"), $(".right-spr2"));
}


/************ 判断用户是否进行过操作开始 ***********/
function timeUserFun(time, elem, btn, info){
    var time = time || 2;
    var userTime = time*60;
    var objTime = {
        init:0,
        time:function(){
            objTime.init += 1;
            if(objTime.init == userTime){  // 用户到达未操作事件 做一些处理
                $(elem).hide();
                $(info).hide();
                $(btn).show();
            }
        },
        eventFun:function(){
            clearInterval(testUser);
            objTime.init = 0;
            testUser = setInterval(objTime.time,1000);
        }
    }

    var testUser = setInterval(objTime.time,1000);

    elem.addEventListener("click",objTime.eventFun);
    elem.addEventListener("mouseover",objTime.eventFun);
    elem.addEventListener("mousemove",objTime.eventFun);
    elem.addEventListener("mousewheel",objTime.eventFun);
}
/************ 判断用户是否进行过操作结束 ***********/


/************ 导航栏开关开始 ***********/
function switchIint(){
    $('input.switchP').lc_switch();
    $('body').delegate('.lcs_check', 'lcs-statuschange', function() {
        var status = ($(this).is(':checked')) ? 'checked' : 'unchecked';
    });

    $('body').delegate('.lcs_check', 'lcs-on', function() {
        //console.log('field is checked');
    });


    $('body').delegate('.lcs_check', 'lcs-off', function() {
        //console.log('field is unchecked');
    });

    $(".is_integration")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=switch.integration.process"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    // hintError("显示服务注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else{
                    if(data == 'is_locked'){
                        $("#is_integration").lcs_on();
                        $("#is_integration").next().css("background-color","#FF6339");
                    }else if(data =='true'){
                        $("#is_integration").lcs_on();
                        $("#is_integration").next().css("background-color","#009CCE");
                    }else{
                        $("#is_integration").lcs_off();
                    }
                }
            });

    $(".is_colony")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=switch.colony.process"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    // hintError("显示服务注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else{
                    if(data == 'is_locked'){
                        $("#is_colony").lcs_on();
                        $("#is_colony").next().css("background-color","#FF6339");
                    }else if(data =='true'){
                        $("#is_colony").lcs_on();
                        $("#is_colony").next().css("background-color","#FFFF6B");
                    }else{
                        $("#is_colony").lcs_off();
                    }
                }
            });

    $(".is_dsb")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=switch.dsb.process"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    // hintError("显示服务注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else{
                    if(data == 'is_locked'){
                        $("#is_dsb").lcs_on();
                        $("#is_dsb").next().css("background-color","#FF6339");
                    }else if(data =='true'){
                        $("#is_dsb").lcs_on();
                        $("#is_dsb").next().css("background-color","#63FF6B");
                    }else{
                        $("#is_dsb").lcs_off();
                    }
                }
            });
}
/************ 导航栏开关结束 ***********/


/************ 导航栏开关悬停弹框 ***********/
// 在登录页、首页、顶部节点，鼠标悬停时，弹出提示
function nodeInformationShow(obj,node_id) {
    var objDiv = $("#"+node_id+"");
    $(objDiv).css("display","block");
    $(objDiv).css("left", event.clientX - 800);
    $(objDiv).css("top", event.clientY + 10);
    if(node_id =='integrated_node_view'){
        $('#integrated_node_view').load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.information.view"
            + "&node_view=integration"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入集成节点失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
    }else if (node_id =='cluster_node_view'){
        $('#cluster_node_view').load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.information.view"
            + "&node_view=colony"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入集群节点失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else;
            });
    }else if (node_id =='bus_node_view'){
        $('#bus_node_view').load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.information.view"
            + "&node_view=dsb"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入总线节点失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else;
            });
    }
}
// 在登录页、首页、顶部节点，鼠标移除时，关闭提示
function nodeInformationHide(obj,node_id) {
    var objDiv = $("#"+node_id+"");
    $(objDiv).css("display", "none");
}
/************ 导航栏开关悬停弹框结束 ***********/


/************ 监控资源注册开始 ***********/
//服务注册检查
function onResourceRegistSearch() {
    $('#diginter_dsb')
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.monitor.navigate.view&type=Hinge&reg_status=regist"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    // hintError("显示服务注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else{
                    $(".serve_dsb_data>span").text(
                        eval($(".serve_dsb_data>span").attr("time"))
                    );
                }
            });
}

//总线注册检查
function onResourceDsbRegistSearch() {
    $('#diginter_serve')
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=serve.resource.show.process"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // // console.log(data);
                    // hintError("显示总线注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else{
                    $(".serve_dsb_data>span").text(
                        eval($(".serve_dsb_data>span").attr("time"))
                    );
                }
            });
}

//总线服务注册详情页
function onResourceMonitorEdit(code) {
    $('#serve_page')
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.monitor.edit.view"
            + "&code=" + code
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // // console.log(data);
                    // hintError("显示总线注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else;
            });
    if($('#serve_page').css("display") == 'none'){
        $('#serve_page').css("display", "block");
    }else{
        $('#serve_page').css("display", "none");
    }
}

//总线注册错误详情页
function onResourceMonitorDsbEdit(code,status) {
    $('#serve_page')
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.connection.monitor.dsb.edit.view"
            + "&code=" + code + "&status=" + status
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // // console.log(data);
                    // hintError("显示总线注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else;
            });
    if($('#serve_page').css("display") == 'none'){
        $('#serve_page').css("display", "block");
    }else{
        $('#serve_page').css("display", "none");
    }
}

function processResourceMonitor(code,reg_status) {
    $.request(httpHeader, '修改注册状态',new Array('buddle.cludove',
        'catalog.cludove','code','reg_status'), new Array('diginter', 'resource.connection.monitor.edit.process',code,reg_status),
        new Array(),
        new Array(),
        'text', null, null,
        null, 'normalErrorCallback')
}
/************ 监控资源注册结束 ***********/


/************ 数据异常查看开始 ***********/
//登录页数据异常显示
function dataExceptionIndexShow() {
    $("#data_exception_index")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=exception.navigate.view&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据异常失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else;
            });
}

//数据异常显示
function dataExceptionShow() {
    $("#diginter_exception")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=exception.navigate.view&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入数据异常失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    $(".diginter_data_exception>span").text(
                        eval($(".diginter_data_exception>span").attr("time"))
                    );
                }
            });
}

//数据异常详细信息
function onExceptionMonitorEdit(code){
    $('#exception_page')
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=exception.search.view"
            + "&code=" + code + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // // console.log(data);
                    // hintError("显示总线注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else;
            });
    if($("#exception_page").css("display") == 'none'){
        $("#exception_page").css("display", 'block');
    }else{
        $("#exception_page").css("display", 'none');
    }
}
/************ 数据异常查看结束 ***********/


/************ 预警信息查看开始 ***********/
function onExceptionWarningJournal(){
    $("#exception_warning_view")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=exception.warning.navigate.view"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示预警信息界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    $(this).off('click');
                    $(this).on('click','a',function () {
                        $('#exception_warning_view a').css({
                            'color':'#FC6767'
                        });
                        $(this).css({
                            'color':"red"
                        });
                    })
                }
            });
}

function onExceptionWarningSetting(record_minute,request_id) {
    $("#monitoring_center_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.question.show.view&record_minute="
            + record_minute
            +"&request_id="
            +request_id
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示问题诊断界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                ;
                // hintMessage("显示项目取值设置界面成功。", false);

            }).toggle();
}
/************ 预警信息查看结束 ***********/


var monitor={
    g:null,
    myDiagram:null,
    init:function () {
        monitor.g = go.GraphObject.make;
        monitor.myDiagram =monitor.g(go.Diagram, "myDiagramDiv_network",
            {
                initialAutoScale: go.Diagram.Uniform,  // an initial automatic zoom-to-fit
                contentAlignment: go.Spot.Center,  // align document to the center of the viewport
                // background: "#001829" ,
                layout:
                    monitor.g(go.ForceDirectedLayout,  // automatically spread nodes apart
                        { defaultSpringLength: 30, defaultElectricalCharge: 100 }),
                "undoManager.isEnabled": true
            });
        monitor.myDiagram.nodeTemplate =
            monitor.g(go.Node, "Vertical",
                // the entire node will have a light-blue background
                {"click":function (a,data) {
                    // console.log(data);
                    // console.log(data.data.source);
                    if(data.data.source == "img/icon101.png" || data.data.source == "img/icon102.png"){
                        var resource_identifier = data.data.identifier;
                        var resource_name = data.data.name;
                        var template = data.data.template;
                        $('.header-con .itsm-nav').hide();
                        $("#api_login")
                            .load(
                                httpHeader
                                + "s?buddle.cludove=diginter&catalog.cludove=api.login.view"
                                + "&resource_identifier=" + resource_identifier
                                + "&t=" + new Date().getTime(),
                                function (data, textStatus, jqXHR) {
                                    if (textStatus == "error") {
                                        // // console.log(data);
                                    } else{
                                        var telephone = $("#api_tele").val(),
                                            email = $("#api_email").val();
                                        if($("#api_account").val().length >0  && $("#api_password").val().length >0){
                                            permission = true;
                                        }else{
                                            permission = false;
                                        }
                                        window.open (
                                            template + "s?buddle.cludove=diginter&catalog.cludove=api.logon.view&has_permission="
                                            + permission + "&resource_name=" + encodeURI(encodeURI(resource_name))
                                            + "&api_account=" + $("#api_account").val()
                                            + "&api_password=" + encodeURI(encodeURI($("#api_password").val()))
                                            + "&resource_identifier=" + resource_identifier
                                            + "&telephone=" + telephone
                                            + "&email=" + email
                                        );
                                    }
                                });
                    }else if (data.data.source == "img/icon100.png") {
                        $('.header-con .itsm-nav').show();
                    }else if(data.data.source == "img/icon106.png"){}
                    else {
                        showContact(data.data.identifier);
                    }
                }},
                {copyable: false,
                    deletable: false },
                { background: "transparent" },
                monitor.g(go.Picture,
                    // Pictures should normally have an explicit width and height.
                    // This picture has a red background, only visible when there is no source set
                    // or when the image is partially transparent.
                    { margin: 0, width: 50, height: 50, background: "" ,cursor:"pointer"},
                    // Picture.source is data bound to the "source" attribute of the model data
                    new go.Binding("source")),
                monitor.g(go.TextBlock,
                    " ",  // the initial value for TextBlock.text
                    // some room around the text, a larger font, and a white stroke:
                    { margin: 1, stroke: "white", font: "bold 10pt helvetica, bold arial, sans-serif"},
                    // TextBlock.text is data bound to the "name" attribute of the model data
                    new go.Binding("text", "name")),
                { mouseEnter: function(e, obj, prev) {  // change group's background brush
                    indexMap.mouseMapDataView(obj.data.code);
                }, mouseLeave: function(e, obj, next) {  // restore to original brush
                    $('#connection_node_mouse_view').css('display','none');
                } }
            );
        monitor.myDiagram.linkTemplate =
            monitor.g(go.Link,
                {
                    layerName: "Background",
                    curve: go.Link.Bezier,
                    curviness: 2
                },
                monitor.g(go.Shape, {strokeWidth: 1, stroke: "#98F5FF"}),  //连线
                monitor.g(go.Shape,  // 箭头
                    {toArrow: "standard", fill: "#98F5FF", stroke: null})
                /*$(go.Panel, "Auto",   //连接名称
                 $(go.Shape,  // the label background, which becomes transparent around the edges
                 { fill: $(go.Brush, "Radial", { 0: "rgb(240, 240, 240)", 0.3: "rgb(240, 240, 240)", 1: "rgba(240, 240, 240, 0)" }),
                 stroke: null }),
                 $(go.TextBlock,  // the label text
                 { textAlign: "center",
                 font: "10pt helvetica, arial, sans-serif",
                 stroke: "#555555",
                 margin: 4 },
                 new go.Binding("text", "text"))
                 )*/
            );

        monitor.myDiagram.nodeTemplateMap.add("token",
            monitor.g(go.Part,
                {locationSpot: go.Spot.Center, layerName: "Foreground"},
                monitor.g(go.Shape, "Circle",   //运动的小球
                    {width: 10, height: 10, fill: "#CC99CC", strokeWidth: 0},
                    new go.Binding("fill", "color"))
            ));
        $('#myDiagramDiv_network canvas').css('background','#002942');
        // monitor.onTopologyData();
    },
    onTopologyData:function () {
        disabledButton();
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter',
            'topology.show.view'), new Array(), new Array(), 'text', null, null,
            'topologyShowSuccessCallback', 'normalErrorCallback');
    },
    Drawing:function (data) {
        // $("#monitoring_center_main").css('display','block');

        var obj = eval('(' + data + ')');
        var link_data_array;
        if ($('#link_data_array').val()!=''){
            link_data_array = eval('(' + $('#link_data_array').val() + ')');
        }
        if (obj.length > 0){
            for (var i = 0 ;i< obj.length; i++){
                if (obj[i].name.length > 15)
                    obj[i].name =  obj[i].name.substring(0,14) + "...";
            }
        }
        var nodeDataArray=obj;
        var linkDataArray=link_data_array;
        //两点之间数据传输连接箭头
        // var linkDataArray = [
        //     {from: "1487918907372001", to: "1523872080093001"},
        //     {from: "1523872080093001", to: "1523952432275001"},
        //     {from: "1523952432275001", to: "1522289778443001"}
        // ];
        if ($('#link_data_array').val() ==''){
            monitor.myDiagram.model = new go.GraphLinksModel(nodeDataArray);
        }else {
            monitor.myDiagram.model = new go.GraphLinksModel(nodeDataArray,linkDataArray);
            //进入运动的小球
            monitor.initTokens(linkDataArray);
        }

        $('#network_view_display').hide();
        $('#city_network_view_display').show();
        $('#map').hide();
        $('#network_view').show();
        enableButton();
    },initTokens:function (linkDataArray) {
        var oldskips = monitor.myDiagram.skipsUndoManager;
        monitor.myDiagram.skipsUndoManager = true;

        var sports_ball="";
        for ( key in linkDataArray){
            sports_ball += '{category: "token",at:"' + linkDataArray[key].from + '", color: "#63FF6B"},';
        }
        sports_ball= "[" + sports_ball.substring(0,sports_ball.length-1) + "]";
        var sports_ball_all = eval('(' + sports_ball + ')');
        monitor.myDiagram.model.addNodeDataCollection(sports_ball_all);
        // indexMap.myDiagram.model.addNodeDataCollection([
        //         {category: "token", at: "1487918907372001", color: "#00b0fb"},
        //         {category: "token", at: "1523872080093001", color: "#00b0fb"},
        //         {category: "token", at: "1523952432275001", color: "#00b0fb"}
        //     ]);
        monitor.myDiagram.skipsUndoManager = oldskips;
        window.requestAnimationFrame(monitor.updateTokens);

    },updateTokens:function () {
        var oldskips = monitor.myDiagram.skipsUndoManager;
        monitor.myDiagram.skipsUndoManager = true;  // 不要在UndoManager中记录这些更改！
        var temp = new go.Point();
        monitor.myDiagram.parts.each(function (token) {
            var data = token.data;
            if (!data) return;
            var at = data.at;
            if (at === undefined) return;
            var from = monitor.myDiagram.findNodeForKey(at);
            if (from === null) return;
            var frac = data.frac;
            if (frac === undefined) frac = 0.0;
            var next = data.next;
            var to = monitor.myDiagram.findNodeForKey(next);
            if (to === null) {  //无处可去？
                // monitor.positionTokenAtNode(token, from);  // 暂时停留在当前节点
                data.next = monitor.chooseDestination(token, from);  // 决定下一步去哪里
            } else {  // 继续往“to”端口
                var link = from.findLinksTo(to).first();
                if (link !== null) {
                    token.location = link.path.getDocumentPoint(link.path.geometry.getPointAlongPath(frac, temp));
                } else {  // 停留在当前节点
                    // monitor.positionTokenAtNode(token, from);
                }
                if (frac >= 1.0) {  // 如果超出了结尾，它就是“AT”NEXT节点
                    data.frac = 0.0;
                    data.at = next;
                    // data.next = undefined;  // 不知道下一步该去哪里
                    // data.next = from.data.key;
                    isFirst = true;
                    $('#link_data_array').val('');
                    monitor.onTopologyData();
                } else {  // /否则，移动到更接近NEXT节点
                    data.frac = frac + 0.01;
                }
            }
        });
        monitor.myDiagram.skipsUndoManager = oldskips;
        window.requestAnimationFrame(monitor.updateTokens);

    },positionTokenAtNode:function (token, node) {
        // these details depend on the node template
        token.location = node.position.copy().offset(4 + 6, 5 + 6);

    },chooseDestination:function (token, node) {
        var dests = new go.List().addAll(node.findNodesOutOf());
        if (dests.count > 0) {
            var dest = dests.elt(Math.floor(Math.random() * dests.count));
            return dest.data.key;
        }
        var arr = monitor.myDiagram.model.nodeDataArray;
        // 随机选择一个不是当前节点或标记的对象
        var data = null;
        while (data = arr[Math.floor(Math.random() * arr.length)],
        data.category === "token" || data === node.data) {
        }
        return data.key;
    }
}

$.extend({
    topologyShowSuccessCallback: function (responseText) {
        monitor.Drawing(responseText);
    }
});

//查询联系方式

function showContact(identifier) {
    $("#show_contact")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.contact.setting.view"
            + "&identifier=" + identifier
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // // console.log(data);
                    // hintError("显示总线注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else
                    ;
            }).show();
}


/************ 时间格式化开始 ***********/
function getTime(time){
    var t=new Date(parseFloat(time));
    var y=t.getFullYear();
    var m=t.getMonth()+1;
    var d=t.getDate();
    return y+"-"+m+"-"+d;
}
/************ 时间格式化结束 ***********/


/* 开始监控中心 */
var myChart={
    myChartThread:null,
    myChartConnect:null,
    optionThread:null,
    optionConnect:null,
    flag:0,
    chartFlag:0,
    connectionTime:[],
    threadTime:[],
    usage:[],
    connect:[],
    connectName:[],
    connectSeries:[],
    threadName:[],
    threadSeries:[],
    init:function () {
        this.showResourceIcon();
    },
    showResourceIcon:function () {
        myChart.myChartThread = echarts.init(document.getElementById('resource_monitor_thread'));
        myChart.myChartConnect = echarts.init(document.getElementById('resource_monitor_connect'));
        myChart.optionConnect = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data:[]
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: [],
                axisLabel: {
                    interval: 0,
                    rotate: 30
                }
            },
            yAxis: {
                type: 'value'
            },
            series: [

            ]
        };
        myChart.optionThread = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data:['线程池使用率','内存使用率'/*,'系统负载'*/],
                textStyle:{
                    color: '#ffffff'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: [],
                axisLabel: {
                    interval: 0,
                    rotate: 30,
                    color: '#ffffff'
                }
            },
            yAxis: {
                type: 'value',
                axisLabel: {
                    color: '#ffffff'
                }
            },
            series: [
                {
                    name:'线程池使用率',
                    type:'line',
                    data:[]
                },
                {
                    name:'内存使用率',
                    type:'line',
                    data:[]
                }
                // ,
                // {
                //     name:'系统负载',
                //     type:'line',
                //     data:[]
                // }
            ]
        };
        if (myChart.chartFlag==0) {
            this.onUsageRate();
            this.onConnectionRate();
        }else {
            myChart.optionConnect.legend.data=myChart.connectName;
            myChart.optionConnect.xAxis.data = myChart.connectionTime;
            myChart.optionConnect.series=myChart.connectSeries;
            myChart.myChartConnect.setOption(myChart.optionConnect,true);
            myChart.optionThread.legend.data=myChart.threadName;
            myChart.optionThread.xAxis.data = myChart.threadTime;
            myChart.optionThread.series=myChart.threadSeries;
            myChart.myChartThread.setOption(myChart.optionThread,true);
        }

    },
    onConnectionRate:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge',
            'resource.connection.rate.search.view'), new Array(), new Array(), 'text', null, null,
            'resourceConnectionRateShowSuccessCallback', 'normalErrorCallback');
    },
    onUsageRate:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge',
            'resource.usage.rate.search.view'), new Array(), new Array(), 'text', null, null,
            'resourceUsageRateShowSuccessCallback', 'normalErrorCallback');
    }
};


$.extend({
    resourceConnectionRateShowSuccessCallback: function (responseText) {
        var time = new Date();
        var t=time.getMinutes() + ":"
            + time.getSeconds();
        var obj = eval('(' + responseText + ')');
        if(myChart.flag == 0){
            for (var r=0;r<=obj.length-1;r++){
                myChart.connect[r]=new Array()
            }
        }
        for (var i=0;i<=obj.length-2;i++){
            if (myChart.connect[i].length >= 10) {
                myChart.connect[i] = myChart.connect[i].splice(1, 9).concat(obj[i].usage);
            } else {
                myChart.connect[i].push(obj[i].usage);
            }
            myChart.connectName[i]=obj[i].name;
            if(obj[i].name == '内存使用率'){
                myChart.connectSeries[i]={
                    name:myChart.connectName[i],
                    type:'line',
                    itemStyle : {
                        normal : {
                            color:'#08A5F6',
                            lineStyle:{
                                color:'#08A5F6'
                            }
                        }
                    },
                    data: myChart.connect[i]
                }
            } else {
                myChart.connectSeries[i]={
                    name:myChart.connectName[i],
                    type:'line',
                    data: myChart.connect[i]
                }
            }
        }
        if (myChart.connectionTime.length >= 10) {
            myChart.connectionTime = myChart.connectionTime.splice(1, 9).concat(t);
        } else {
            myChart.connectionTime.push(t);
        }
        myChart.optionConnect.legend.data=myChart.connectName;
        myChart.optionConnect.xAxis.data = myChart.connectionTime;
        myChart.optionConnect.series=myChart.connectSeries;
        myChart.myChartConnect.setOption(myChart.optionConnect,true);
        myChart.chartFlag=1;
    }
});

$.extend({
    resourceUsageRateShowSuccessCallback: function (responseText) {
        var time = new Date();
        var t=time.getMinutes() + ":"
            + time.getSeconds();
        var obj = eval('(' + responseText + ')');
        if(myChart.flag== 0){
            for (var r=0;r<=obj.length-1;r++){
                myChart.usage[r]=new Array()
            }
        }
        for (var i=0;i<=obj.length-2;i++){
            if (myChart.usage[i].length >= 10) {
                myChart.usage[i] = myChart.usage[i].splice(1, 9).concat(obj[i].usage);
            } else {
                myChart.usage[i].push(obj[i].usage);
            }
            myChart.threadName[i]=obj[i].name;
            // console.log(myChart.usage[i]);
            if(obj[i].name == '内存使用率'){
                myChart.threadSeries[i]={
                    name:myChart.threadName[i],
                    type:'line',
                    itemStyle : {
                        normal : {
                            color:'#08A5F6',
                            lineStyle:{
                                color:'#08A5F6'
                            }
                        }
                    },
                    data: myChart.usage[i]
                }
            } else {
                myChart.threadSeries[i]={
                    name:myChart.threadName[i],
                    type:'line',
                    data: myChart.usage[i]
                }
            }
        }
        if (myChart.threadTime.length >= 10) {
            myChart.threadTime=myChart.threadTime.splice(1, 9).concat(t);
        }else {
            myChart.threadTime.push(t);
        }
        myChart.optionThread.legend.data=myChart.threadName;
        myChart.optionThread.xAxis.data = myChart.threadTime;
        myChart.optionThread.series=myChart.threadSeries;
        myChart.myChartThread.setOption(myChart.optionThread,true);
    }
});