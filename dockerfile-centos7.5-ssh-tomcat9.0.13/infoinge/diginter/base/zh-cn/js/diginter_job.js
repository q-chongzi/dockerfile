/***开始作业管理配置***/

function onJobSetting() {
    setRemoveSelectRecordButton('block', '作业','diginter', 'job.infoinge.remove.process',
        'infoinge_job_record_code', 'infoinge_job_check_select', 'infoinge_job_select','removeSelectRecordBusiness');

    $("#resource_setting_main")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=job.infoinge.search.view"
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

                // showJobSetting(record_code);
            });

}


function showJobSetting(code) {
    disabledButton();
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=job.infoinge.setting.view&code="
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

                    $(this).show();
                    enableButton();
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
            zdalert('提示','开始时间无效！');
        } else if ($("#infoinge_job_run_finish_minute").val() != '' && $("#infoinge_job_run_finish_hour").val() == '') {
            zdalert('提示','结束时间无效！');
        } else if($("#infoinge_job_run_start_hour").val() != '' && $("#infoinge_job_run_finish_hour").val() == '') {
            zdalert('提示','请输入结束时间！');
        } else if ($("#infoinge_job_run_finish_hour").val() != '' && $("#infoinge_job_run_start_hour").val() == '') {
            zdalert('提示','请输入开始时间！');
        } else if ($("#infoinge_job_run_finish_hour").val() == '' || $("#infoinge_job_run_start_hour").val() == '') {
            zdalert('提示','请填写时间！');
        } else {
            if ($("#infoinge_job_run_start_hour").val() != '' && $("#infoinge_job_run_start_minute").val() == '')
                $("#infoinge_job_run_start_minute").val('00');
            if ($("#infoinge_job_run_finish_hour").val() != '' && $("#infoinge_job_run_finish_minute").val() == '')
                $("#infoinge_job_run_finish_minute").val('00');
            var start_time = parseFloat($("#infoinge_job_run_start_hour").val()) * 3600 + parseFloat($("#infoinge_job_run_start_minute").val()) * 60;
            var finish_time = parseFloat($("#infoinge_job_run_finish_hour").val()) * 3600 + parseFloat($("#infoinge_job_run_finish_minute").val()) * 60;
            if (($("#infoinge_job_run_start_hour").val() != '' && $("#infoinge_job_run_finish_hour").val() != '') && (start_time > finish_time)) {
                zdalert('提示','结束时间必须大于开始时间！');
            } else {
                disabledButton();
                if ($('#code_infoinge_job').val().length > 0) {
                    $.request(httpHeader, '修改讯枢作业', new Array('buddle.cludove',
                        'catalog.cludove'), new Array('diginter',
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
                        'catalog.cludove'), new Array('diginter',
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
        $('#resource_setting_right').hide();
        enableButton();
        // 刷新页面
        onJobSetting();
    }
});


function onJobEdit(code) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=job.catalog.edit.view"
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
            + "s?buddle.cludove=diginter&catalog.cludove=job.catalog.setting.view"
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
            + "s?buddle.cludove=diginter&catalog.cludove=job.catalog.catalog.search.view"
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
                'catalog.cludove','buddle_name','catalog_name','catalog_code'), new Array('diginter',
                'job.catalog.setting.process',buddle_name,catalog_name,catalog_code), new Array('code',
                'connection_code', 'buddle_id', 'catalog_id', 'position','job_code'), new Array('code_job_catalog',
                'connection_code_job_catalog', 'job_catalog_buddle_id',
                'job_catalog_catalog_id', 'job_catalog_position','code_job'), 'text', null, null,
                'jobCatalogSettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增讯枢作业', new Array('buddle.cludove',
                'catalog.cludove','buddle_name','catalog_name','catalog_code'), new Array('diginter',
                'job.catalog.setting.process',buddle_name,catalog_name,catalog_code), new Array( 'buddle_id', 'catalog_id', 'position','job_code'), new Array(
                'job_catalog_buddle_id',
                'job_catalog_catalog_id', 'job_catalog_position','code_job'), 'text', null, null,
                'jobCatalogSettingSuccessCallback', 'normalErrorCallback');
        }
    }
}
$.extend({
    jobCatalogSettingSuccessCallback: function (responseText) {

        // 刷新页面
        job.onJobData();
        enableButton()
        onJobCatalogSetting(responseText);
        // setTimeout(function() {
        //     onBuddleManage(responseText);
        // }, 1000);
    }
});

function removeJobCatalogSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    $.request(httpHeader, '修改讯枢作业', new Array('buddle.cludove', 'catalog.cludove'), new Array('diginter',
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
            'catalog.cludove'), new Array('diginter',
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


//手工作业执行
function onJobExecute(code,name,frequentness) {
    onJobJournalExecuteEdit(code,frequentness,'execution')
    $.request(httpHeader, '手工作业执行', new Array('buddle.cludove', 'catalog.cludove','code','name'), new Array('diginter',
        'job.infoinge.execute.process',code,name), new Array(), new Array(), 'text', null, null,
        null, 'normalErrorCallback');
}

//跳转作业日志记录界面
function onJobJournalExecuteEdit(request_id,frequentness,status) {
    var url = httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=job.journal.execute.edit.view"
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
        + "s?buddle.cludove=diginter&catalog.cludove=job.journal.show.view"
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
            + "s?buddle.cludove=diginter&catalog.cludove=job.journal.show.view"
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
            + "s?buddle.cludove=diginter&catalog.cludove=job.journal.show.view"
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
            + "s?buddle.cludove=diginter&catalog.cludove=job.journal.show.view"
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
            + "s?buddle.cludove=diginter&catalog.cludove=job.journal.search.view&journal_type=5"
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
    var executionHtml = '<div class="main_tab" job-status="execution"><table><tr><td>作业名字</td><td>频度类型</td><td>间隔时间</td><td>加入时间</td><td>开始时间</td><td>结束时间</td><td>是否执行</td><td>操作</td></tr>';
    // console.log(executionHtml);
    var soonHtml = '<div class="main_tab" job-status="soon"><table><tr><td>作业名字</th><td>频度类型</th><td>间隔时间</th><td>加入时间</th><td>开始时间</th><td>结束时间</th><td>是否执行</th><td>操作</th></tr>';
    var dormancyHtml = '<div class="main_tab" job-status="dormancy"><table><tr><td>作业名字</th><td>频度类型</th><td>间隔时间</th><td>加入时间</th><td>开始时间</th><td>结束时间</th><td>是否执行</th><td>操作</th></tr>';
    var endHtml = '<div class="main_tab" job-status="end"><table><tr><td>作业名字</th><td>频度类型</th><td>间隔时间</th><td>加入时间</th><td>开始时间</th><td>结束时间</th><td>是否执行</th><td>操作</th></tr>';
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
            html += `<td><a class="check-icon" href="javascript:void(0)" is-click="true" onclick="showJobCatalogMonitor(${obj[i].code})" title="作业功能"/></a></td>`;
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
    var monitoring_job_type = $('#monitoring_job_type').val();

    if (monitoring_job_type == 'execution')
        $("#monitoring_job_main").html(executionHtml);
    else if (monitoring_job_type == 'soon')
        $("#monitoring_job_main").html(soonHtml);
    else if (monitoring_job_type == 'dormancy')
        $("#monitoring_job_main").html(dormancyHtml);
    else if (monitoring_job_type == 'end')
        $("#monitoring_job_main").html(endHtml);

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


    html += `<div style="line-height: 24px;" class="configure1-fr-tit" id="${request_id}_journal_time">`;

    if (frequentness == 'year') {
        html += `<select class="job_frequentness_year" rel="${nowYear}" id="${request_id}_job_frequentness_year"></select>`
    } else if (frequentness == 'month'){
        html += `<select class="job_frequentness_year" rel="${nowYear}" id="${request_id}_job_frequentness_year"></select>`
    } else if (frequentness == 'day') {
        html += `<select class="job_frequentness_year" rel="${nowYear}" id="${request_id}_job_frequentness_year"></select>`
        html += `<select class="job_frequentness_month" rel="${nowMonth}" id="${request_id}_job_frequentness_month"></select>`
    } else {
        html += `<select class="job_frequentness_year" rel="${nowYear}" id="${request_id}_job_frequentness_year"></select>`
        html += `<select class="job_frequentness_month" rel="${nowMonth}" id="${request_id}_job_frequentness_month"></select>`
        html += `<select class="job_frequentness_day" rel="${nowDay}" id="${request_id}_job_frequentness_day"</select>`
    }
    html += `<input type="button" value="查询" onclick="onChangeJobJournalRecord(${request_id})">`;
    html += `</div>`;

    $("#journal_main_time").html(html)
    $.ms_DatePicker({
        YearSelector: ".job_frequentness_year",
        MonthSelector: ".job_frequentness_month",
        DaySelector: ".job_frequentness_day"
    });
    $.ms_DatePicker();
    onChangeJobJournalRecord(request_id);
    if (status == 'execution'){
        setInterval(function () {
            onChangeJobJournalRecord(request_id);
        },10000)
    }

}

function onChangeJobJournalRecord(request_id) {
    var record_year = $("#" + request_id +"_job_frequentness_year").val();
    var record_month = $("#" + request_id +"_job_frequentness_month").val();
    var record_day = $("#" + request_id +"_job_frequentness_day").val();

    if (record_month == undefined)
        record_month = '';

    if (record_day == undefined)
        record_day = '';

    var record_host = $("#record_host").val();

    showJobJournalRecord(request_id,record_year,record_month,record_day,record_host);
}

//显示作业日志记录表格
function showJobJournalRecord(request_id,record_year,record_month,record_day,record_host) {
    $("#journal_main_content")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=job.journal.search.view&journal_type=6"
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

function onJobMonitorEdit(code) {
    var url = httpHeader
        + "s?buddle.cludove=diginter&catalog.cludove=job.catalog.monitor.edit.view"
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