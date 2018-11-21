var monitor={
    key:null,
    text:null,
    loc:[],
    g:null,
    myDiagram:null,
    init:function () {
        monitor.g = go.GraphObject.make;
        monitor.myDiagram =monitor.g(go.Diagram, "monitoring_center_main",{
            initialAutoScale: go.Diagram.Uniform,
            contentAlignment: go.Spot.Center,
            "ChangedSelection":function (a) {
                monitor.processTopologySetting(monitor.key,monitor.text,monitor.loc)
            },
            layout:monitor.g(go.ForceDirectedLayout, {
                    defaultSpringLength: 30,
                    defaultElectricalCharge: 30
                }
            )
        });
        monitor.myDiagram.nodeTemplate =
            monitor.g(go.Node, "Vertical",
                // {dragComputation:monitor.moveNode},
                // new go.Binding('location', 'loc',go.Point.parse),
                monitor.g(go.Picture,
                    { width: 49, height: 56},
                    new go.Binding("source")),
                monitor.g(go.TextBlock,
                    { font: "700 15px Droid Serif, sans-serif",
                        textAlign: "center",
                        margin: 1, maxSize: new go.Size(80, NaN) },
                    new go.Binding("text", "name"))
            );
        monitor.myDiagram.linkTemplate =
            monitor.g(go.Link,  // the whole link panel
                {toShortLength:-8,fromShortLength:-8},
                monitor.g(go.Shape,  // the link shape
                    { strokeWidth: 0.7,stroke: "rgb(200,200,200)" })
            );

    },
    onTopologyData:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge',
            'topology.show.view'), new Array(), new Array(), 'text', null, null,
            'topologyShowSuccessCallback', 'normalErrorCallback');
    },
    Drawing:function (data) {
        // $("#monitoring_center_main").css('display','block');

        var obj = eval('(' + data + ')');
        var nodeDataArray=obj[0];
        var linkDataArray=obj[1];
        monitor.myDiagram.model = new go.GraphLinksModel(nodeDataArray,linkDataArray);
    },
    moveNode:function (part,pt,gridpt) {
        var diagram = part.diagram;
        if(diagram === null) return pt;
//           计算视口内的区域
        var v = diagram.viewportBounds.copy();
        v.subtractMargin(diagram.padding);
        //获取被拖动的部分的边界
        var b = part.actualBounds;
        var l = part.location;
        //现在适当地限制位置
        var x = Math .max(v.x + 1,Math .min(pt.x,v.right-b.width- 2))+(l.x-b.x);
        var y = Math.max(v.y + 1,Math .min(pt.y,v.bottom-b.height- 2))+(l.y-b.y);
        monitor.key=part.data.key;
        monitor.text=part.data.name;
        monitor.loc=[x+600,y+350].toString();

        return  new go.Point(x,y);
    },
    processTopologySetting:function (key,text,loc) {
        if (key != null)
            $.request(httpHeader, '新增拓扑节点', new Array('buddle.cludove',
                'catalog.cludove', 'connection_id', 'connection_name', 'position'), new Array('infoinge',
                'topology.setting.process', key, text, loc), new Array(), new Array(), 'text', null, null,
                null, 'normalErrorCallback');
    }
};
$.extend({
    topologyShowSuccessCallback: function (responseText) {
        monitor.Drawing(responseText);
    }
});
//
// setInterval(function () {
//     if ($("#monitoring_center_main").css('display')=="block"){
//         $.request(httpHeader, '', new Array('buddle.cludove',
//             'catalog.cludove'), new Array('infoinge',
//             'topology.show.view'), new Array(), new Array(), 'text', null, null,
//             'topologyShowSuccessCallback', 'normalErrorCallback');
//     }else
//         ;
// },60000);

/* 开始监控中心 */
function onMonitoringCenter() {
    $("#removeSelectRecord").css('display','none');
    changeDisplayZone('monitoring_center');
    onExceptionJournal();
    monitor.onTopologyData();
    var timerJournal =setInterval(function () {
        if ($("#monitoring_center_main").css('display')=="none"){
            clearInterval(timerJournal);
        }else {
            onExceptionJournal();
        }
    },60000);
    onResourceIcon();
}

function onExceptionJournal(){
    $("#monitoring_center_tree_list")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=exception.navigate.view"
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
                        $('#monitoring_center_tree_list a').css({
                            'color':'#fff',
                            'background':'url(infoinge/base/zh-cn/img/icon24.png) no-repeat left center'
                        });
                        $(this).css({
                            'color':"#ffd132",
                            'background':'url(infoinge/base/zh-cn/img/icon24-1.png) no-repeat left center'
                        });
                    })
                }
                    ;
                // hintMessage("显示项目取值设置界面成功。", false);

            });
}
function onResourceIcon() {
    $("#monitoring_center_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.monitor.view"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示资源使用界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else{
                    myChart.init();
                }
                    ;
                // hintMessage("显示项目取值设置界面成功。", false);

            });
}

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
                    data:['线程池使用率','内存使用率','系统负载']
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
                    {
                        name:'线程池使用率',
                        type:'line',
                        data:[]
                    },
                    {
                        name:'内存使用率',
                        type:'line',
                        data:[]
                    },
                    {
                        name:'系统负载',
                        type:'line',
                        data:[]
                    }
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
        for (var i=0;i<=obj.length-1;i++){
            if (myChart.connect[i].length >= 10) {
                myChart.connect[i] = myChart.connect[i].splice(1, 9).concat(obj[i].usage);
            } else {
                myChart.connect[i].push(obj[i].usage);
            }
            myChart.connectName[i]=obj[i].name;
            myChart.connectSeries[i]={
                name:myChart.connectName[i],
                type:'line',
                data: myChart.connect[i]
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
        for (var i=0;i<=obj.length-1;i++){
            if (myChart.usage[i].length >= 10) {
                myChart.usage[i] = myChart.usage[i].splice(1, 9).concat(obj[i].usage);
            } else {
                myChart.usage[i].push(obj[i].usage);
            }
            myChart.threadName[i]=obj[i].name;
            // console.log(myChart.usage[i]);
            myChart.threadSeries[i]={
                name:myChart.threadName[i],
                type:'line',
                data: myChart.usage[i]
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

function onExceptionSetting(record_minute,request_id) {
    $("#monitoring_center_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.question.show.view&record_minute="
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

            });
}

//开始监控资源注册
function onResourceRegistSearch() {
    $('#resource_regist_navigate')
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.monitor.navigate.view&type=Hinge&reg_status=regist"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    // hintError("显示服务注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示项目取值设置界面成功。", false);

            });
}

//总线注册检查
function onResourceDsbRegistSearch() {
    $('#resource_dsb_regist_navigate')
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=serve.resource.show.process"
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // // console.log(data);
                    // hintError("显示总线注册界面失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("显示项目取值设置界面成功。", false);

            });
}

function onResourceMonitorEdit(code) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.monitor.edit.view"
        + "&code=" + code; //转向网页的地址;
    var name = "服务注册"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.3; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.35; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = 300; //获得窗口的水平位置;

   var monitorWindow =  window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function onResourceMonitorDsbEdit(code,status) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=resource.connection.monitor.dsb.edit.view"
        + "&code=" + code + "&status=" + status; //转向网页的地址;
    var name = "总线注册"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.3; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.35; //弹出窗口的高度;
    var iTop = (window.screen.height - 50 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = 300; //获得窗口的水平位置;

    var monitorWindow =  window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

function processResourceMonitor(code,reg_status) {
    $.request(httpHeader, '修改注册状态',new Array('buddle.cludove',
        'catalog.cludove','code','reg_status'), new Array('infoinge', 'resource.connection.monitor.edit.process',code,reg_status),
        new Array(),
        new Array(),
        'text', null, null,
        'processResourceMonitorSuccessCallback', 'normalErrorCallback')
}

$.extend({
    processResourceMonitorSuccessCallback : function(responseText) {
        window.close();
    }
});