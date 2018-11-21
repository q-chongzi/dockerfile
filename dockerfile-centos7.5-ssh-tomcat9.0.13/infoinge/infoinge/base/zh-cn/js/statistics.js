﻿var statistics={
    statisticsLine:null,
    statisticsCircular:null,
    statisticsCircularCatalog:null,
    optionLine:null,
    optionCircular:null,
    optionCircularCatalog:null,
    param:null,
    init:function () {
        this.showStatisticIcon();
    },
    showStatisticIcon:function () {
        statistics.statisticsLine = echarts.init(document.getElementById('monitoring_network_main'));
        statistics.statisticsCircular = echarts.init(document.getElementById('statistics_buddle_name'));
        statistics.statisticsCircularCatalog = echarts.init(document.getElementById('statistics_catalog_name'));
        statistics.optionLine = statistics.optionLine;
        statistics.optionCircular = statistics.optionCircular;
        statistics.optionCircularCatalog = statistics.optionCircular;
        statistics.onStatisticRate();
    },
    report:function () {
        this.showReportIcon();
    },
    showReportIcon:function () {
        statistics.statisticsLine = echarts.init(document.getElementById('monitoring_network_main'));
        statistics.statisticsCircular = echarts.init(document.getElementById('statistics_buddle_name'));
        statistics.statisticsCircularCatalog = echarts.init(document.getElementById('statistics_catalog_name'));
        statistics.optionLine = statistics.optionLine;
        statistics.optionCircular = statistics.optionCircular;
        statistics.optionCircularCatalog = statistics.optionCircular;
        statistics.onReportStatisticRate();
    },
    optionLine: {
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
        series: []
    },
    optionCircular:{
        title : {
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: []
        },
        series : [
            {
                name: '来源',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[],
                label:{
                    normal:{
                        show:true
                    }
                },
                labelLine:{
                    normal:{
                        show:true
                    }
                },
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    },
    onCatalogStatisticRate:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'statistics_number','buddle_name'), new Array('infoinge',
            '10',statistics.param.name), new Array('catalog.cludove','journal_type'), new Array('statistics_navigate_catalog_cludove','statistics_navigate_type'), 'text', null, null,
            'statisticsCatalogMinuteRateShowSuccessCallback', 'normalErrorCallback');
    },
    onStatisticRate:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'statistics_number'), new Array('infoinge',
            '10'), new Array('catalog.cludove','journal_type'), new Array('statistics_navigate_catalog_cludove','statistics_navigate_type'), 'text', null, null,
            'statisticsMinuteRateShowSuccessCallback', 'normalErrorCallback');
    },
    onCatalogReportStatisticRate:function () {
    	var myDate = new Date();
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove','buddle_name','year','month','day'), new Array('infoinge',
            'statistics.report.rate.search.view',statistics.param.name,myDate.getFullYear() + '',(myDate.getMonth() + 1) + '',myDate.getDate() + ''), new Array('journal_type','report_time'), new Array('statistics_navigate_type','report_time'), 'text', null, null,
            'catalogReportRateShowSuccessCallback', 'normalErrorCallback');
    },
    onReportStatisticRate:function () {
    	var myDate = new Date();
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove','year','month','day'), new Array('infoinge',
            'statistics.report.rate.search.view',myDate.getFullYear() + '',(myDate.getMonth() + 1) + '',myDate.getDate() + ''), new Array('journal_type','report_time'), new Array('statistics_navigate_type','report_time'), 'text', null, null,
            'statisticsReportRateShowSuccessCallback', 'normalErrorCallback');
    },
    slideToggle:function () {
        $("#monitoring_diagram_tree_list").on('click','li>a',function () {
            $('#monitoring_diagram_tree_list a').css('color','#fff');
            $(this).css('color',"#ff633b");
            $(this).siblings("ul").slideToggle();
        });
    }
};

$.extend({
    statisticsCatalogMinuteRateShowSuccessCallback: function (responseText) {
        var obj = eval('(' + responseText + ')');
        if (obj.length > 0) {
            var timer = [];
            var catalog_name = [];
            var dataLine = [];
            /*******开始绘制catalog折现图***********/
            /*****循环取出所有catalog_name*****/
            for (var i = 0; i <= obj.length - 1; i++) {
                timer.push(obj[i].time);
                var statisticsData = obj[i].content[0].statistics;
                for (var r = 0; r <= statisticsData.length - 1; r++) {
                    var is_exist = 0;
                    for (var h = 0; h <= catalog_name.length - 1; h++) {
                        if (statisticsData[r].catalog_name == catalog_name[h]) {
                            is_exist = 1;
                            break;
                        }
                    }
                    if (is_exist == 0)
                        catalog_name.push(statisticsData[r].catalog_name);
                }
            }
            ;
            for (var i = 0; i <= catalog_name.length - 1; i++) {
                dataLine[i] = new Array();
            }
            var series = [];
            /******循环catalog_name为data赋值********/
            for (var i = 0; i <= catalog_name.length - 1; i++) {
                for (var r = 0; r <= obj.length - 1; r++) {
                    let is_exist = 0;
                    for (var h = 0; h <= obj[r].content[0].statistics.length - 1; h++) {
                        if (obj[r].content[0].statistics[h].catalog_name == catalog_name[i]) {
                            dataLine[i].push(parseFloat(obj[r].content[0].statistics[h].effect_number));
                            is_exist = 1;
                            break;
                        }
                    }
                    if (is_exist == 0) {
                        dataLine[i].push(0);
                    }
                }
                ;
                series[i] = {
                    name: catalog_name[i],
                    type: "line",
                    data: dataLine[i]
                }
            }
            ;
            statistics.optionLine.legend.data = catalog_name;
            statistics.optionLine.xAxis.data = timer;
            statistics.optionLine.series = series;
            statistics.statisticsLine.setOption(statistics.optionLine, true);


            /******开始绘制功能对比饼图********/
            var dataCircular = [];
            var nameCircular = [];
            var objCircular = obj[obj.length - 1].content[0].statistics;
            for (var i = 0; i <= objCircular.length - 1; i++) {
                nameCircular[i] = objCircular[i].catalog_name;
                dataCircular[i] = {
                    value: objCircular[i].effect_number, name: objCircular[i].catalog_name
                }
            }

            // 隐藏斜线提示
            statistics.optionCircularCatalog.series[0].label.normal.show = false ;
            statistics.optionCircularCatalog.series[0].labelLine.normal.show = false ;

            statistics.optionCircularCatalog.title.text = "功能对比";
            statistics.optionCircularCatalog.legend.data = nameCircular;
            statistics.optionCircularCatalog.series[0].data = dataCircular;
            statistics.statisticsCircularCatalog.setOption(statistics.optionCircularCatalog, true);
        }
    }
});

$.extend({
    statisticsMinuteRateShowSuccessCallback: function (responseText) {
        var obj = eval('(' + responseText + ')');
        if (obj.length>0){
            var timer=[];
            var dataLine=[];
            var buddle_name=[];
            /*****循环取出所有buddle_name*****/
            for (var i = 0; i <= obj.length-1; i++){
                timer.push(obj[i].time);
                var contentData = obj[i].content;
                for (var r = 0; r <= contentData.length - 1; r++) {
                    var is_exist = 0;
                    for (var h = 0; h <= buddle_name.length - 1; h++){
                        if (contentData[r].buddle_name == buddle_name[h]){
                            is_exist = 1;
                            break;
                        }
                    }
                    if (is_exist == 0)
                        buddle_name.push(contentData[r].buddle_name);
                }
            };
            for (var i=0;i<=buddle_name.length-1;i++){
                dataLine[i]=new Array();
            }
            var series=[];
            /******循环buddle_name为data赋值********/
            for (var i = 0; i<= buddle_name.length-1;i++ ){
                for (var r = 0;r <= obj.length-1;r++){
                    let is_exist = 0;
                    for (var h = 0;h <= obj[r].content.length-1;h++ ){
                        if (obj[r].content[h].buddle_name == buddle_name[i]){
                            var effect_number=0;
                            for (var v=0;v <= obj[r].content[h].statistics.length-1;v++){
                                effect_number+=parseFloat(obj[r].content[h].statistics[v].effect_number);
                            }
                            dataLine[i].push(effect_number) ;
                            is_exist = 1;
                            break;
                        }
                    }
                    if (is_exist == 0){
                        dataLine[i].push(0);
                    }
                };
                series[i] = {
                    name:buddle_name[i],
                    type:"line",
                    data:dataLine[i]
                }
            };
            statistics.optionLine.legend.data=buddle_name;
            statistics.optionLine.xAxis.data = timer;
            statistics.optionLine.series=series;
            statistics.statisticsLine.setOption(statistics.optionLine,true);
            /**********开始绘制应用对比饼图**************/
            var dataCircular=[];
            var nameCircular=[];
            var objCircular=obj[obj.length-1].content;
            for (var i=0;i<=objCircular.length-1;i++){
                var effect_number=0;
                for (var h=0;h<=objCircular[i].statistics.length-1;h++) {
                    effect_number+= parseFloat(objCircular[i].statistics[h].effect_number);
                };
                nameCircular[i]=objCircular[i].buddle_name;
                dataCircular[i] ={
                    value: effect_number,name:objCircular[i].buddle_name
                }
            }
            statistics.optionCircularCatalog.series[0].label.normal.show = true ;
            statistics.optionCircularCatalog.series[0].labelLine.normal.show = true ;

            statistics.optionCircular.title.text="应用对比";
            statistics.optionCircular.legend.data=nameCircular;
            statistics.optionCircular.series[0].data=dataCircular;
            statistics.statisticsCircular.setOption(statistics.optionCircular,true);
            statistics.statisticsCircular.on('click',function (param) {
                statistics.param = param;
                statistics.onCatalogStatisticRate()
            })
        }
    }
});

$.extend({
    statisticsReportRateShowSuccessCallback:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var timer=[];
        var buddle_name_line=[];
        var buddle_name_circular=[];
        for (var i=0;i<=obj.length-1;i++){
            var is_exits=0;
            for (var r = 0;r <= timer.length-1;r++){
                if (obj[i].time == timer[r]){
                    is_exits = 1;
                    break;
                }
            }
            if (is_exits == 0){
                timer.push(obj[i].time);
            }

            var is_exit=0;
            for (var h=0;h <= buddle_name_line.length-1;h++){
                if (obj[i].buddle_name == buddle_name_line[h]){
                    is_exit = 1;
                    break;
                }
            }
            if (is_exit == 0){
                buddle_name_line.push(obj[i].buddle_name);
            }
        };
        var effect_number_line=[];
        for (var i = 0;i <= buddle_name_line.length-1;i++){
            effect_number_line[i] = new Array();
            for (var r = 0;r<=timer.length-1;r++) {
                effect_number_line[i][r] = 0;
            }
        };
        var series=[];
        for (var i = 0,v = timer.length-1;i<=timer.length-1;i++){
            for (var r=0;r <= buddle_name_line.length-1;r++){
                for (var h = 0;h<obj.length-1;h++){
                    if (timer[i] == obj[h].time){
                        if (buddle_name_line[r] == obj[h].buddle_name ){
                            effect_number_line[r][v]+=parseFloat(obj[h].effect_number);
                        }
                    }
                }
            };
            v--;
        };
        for (var i=0;i<=buddle_name_line.length-1;i++){
            series[i] = {
                name:buddle_name_line[i],
                type:"line",
                data:effect_number_line[i]
            }
        }
        var data_time=[];
        for (var i = timer.length-1,r=0;i >= 0 ;i--){
            data_time[r]=timer[i];
            r++;
        }
        statistics.optionLine.legend.data=buddle_name_line;
        statistics.optionLine.xAxis.data = data_time;
        statistics.optionLine.series=series;
        statistics.statisticsLine.setOption(statistics.optionLine,true);
        var effect_number_circular=[];
        for (var i = 0;i <= obj.length-1;i++){
            if (timer[0] == obj[i].time){
                let is_exits=0;
                for (var r = 0;r <= buddle_name_circular.length-1;r++){
                    if (obj[i].buddle_name == buddle_name_circular[r]){
                        is_exits = 1;
                        break;
                    }
                }
                if (is_exits == 0){
                    buddle_name_circular.push(obj[i].buddle_name);
                }
            }
        };
        var dataCircular=[];
        for (var i=0;i <= buddle_name_circular.length-1;i++){
            effect_number_circular[i]=0;
        }

        for (var i = 0;i <= buddle_name_circular.length-1;i++){
            for (var r = 0;r <= obj.length-1;r++){
                if (timer[0] == obj[r].time){
                    if (buddle_name_circular[i] == obj[r].buddle_name)
                    effect_number_circular[i]+=parseFloat(obj[r].effect_number);
                }
            }
            dataCircular[i] ={
                value: effect_number_circular[i],name: buddle_name_circular[i]
            }
        }
        statistics.optionCircularCatalog.series[0].label.normal.show = true ;
        statistics.optionCircularCatalog.series[0].labelLine.normal.show = true ;
        statistics.optionCircular.title.text="应用对比";
        statistics.optionCircular.legend.data=buddle_name_circular;
        statistics.optionCircular.series[0].data=dataCircular;
        statistics.statisticsCircular.setOption(statistics.optionCircular,true);
        statistics.statisticsCircular.on('click',function (param) {
            statistics.param = param;
            statistics.onCatalogReportStatisticRate()
        })
    }
});

$.extend({
    catalogReportRateShowSuccessCallback:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var timer=[];
        var catalog_name_line=[];
        var catalog_name_circular=[];
        for (var i=0;i<=obj.length-1;i++){
            var is_exits=0;
            for (var r = 0;r <= timer.length-1;r++){
                if (obj[i].time == timer[r]){
                    is_exits = 1;
                    break;
                }
            }
            if (is_exits == 0){
                timer.push(obj[i].time);
            }

            var is_exit=0;
            for (var h=0;h <= catalog_name_line.length-1;h++){
                if (obj[i].catalog_name == catalog_name_line[h]){
                    is_exit = 1;
                    break;
                }
            }
            if (is_exit == 0){
                catalog_name_line.push(obj[i].catalog_name);
            }
        };
        var effect_number_line=[];
        for (var i = 0;i <= catalog_name_line.length-1;i++){
            effect_number_line[i] = new Array();
            for (var r = 0;r<=timer.length-1;r++) {
                effect_number_line[i][r] = 0;
            }
        };
        var series=[];
        for (var i = 0,v = timer.length-1;i<=timer.length-1;i++){
            for (var r=0;r <= catalog_name_line.length-1;r++){
                for (var h = 0;h<= obj.length-1;h++){
                    if (timer[i] == obj[h].time){
                        if (catalog_name_line[r] == obj[h].catalog_name ){
                            effect_number_line[r][v]=parseFloat(obj[h].effect_number);
                        }
                    }
                }
            };
            v--;
        };
        for (var i=0;i<=catalog_name_line.length-1;i++){
            series[i] = {
                name:catalog_name_line[i],
                type:"line",
                data:effect_number_line[i]
            };
        }
        var data_time=[];
        for (var i = timer.length-1,r=0;i >= 0 ;i--){
            data_time[r]=timer[i];
            r++;
        }

        statistics.optionLine.legend.data=catalog_name_line;
        statistics.optionLine.xAxis.data = data_time;
        statistics.optionLine.series=series;
        statistics.statisticsLine.setOption(statistics.optionLine,true);
        var effect_number_circular=[];
        for (var i = 0;i <= obj.length-1;i++){
            if (timer[0] == obj[i].time){
                let is_exits=0;
                for (var r = 0;r <= catalog_name_circular.length-1;r++){
                    if (obj[i].catalog_name == catalog_name_circular[r]){
                        is_exits = 1;
                        break;
                    }
                }
                if (is_exits == 0){
                    catalog_name_circular.push(obj[i].catalog_name);
                }
            }
        };
        var dataCircular=[];
        for (var i=0;i <=catalog_name_circular.length-1;i++){
            effect_number_circular[i]=0;
        }
        for (var i = 0;i <= catalog_name_circular.length-1;i++){
            for (var r = 0;r <= obj.length-1;r++){
                if (timer[0] == obj[r].time){
                    if (catalog_name_circular[i] == obj[r].catalog_name)
                        effect_number_circular[i]=parseFloat(obj[r].effect_number);
                }
            }
            dataCircular[i] ={
                value: effect_number_circular[i],name: catalog_name_circular[i]
            }
        }

        // 隐藏斜线提示
        statistics.optionCircularCatalog.series[0].label.normal.show = false ;
        statistics.optionCircularCatalog.series[0].labelLine.normal.show = false ;

        statistics.optionCircularCatalog.title.text="功能对比";
        statistics.optionCircularCatalog.legend.data=catalog_name_circular;
        statistics.optionCircularCatalog.series[0].data=dataCircular;
        statistics.statisticsCircularCatalog.setOption(statistics.optionCircularCatalog,true);
    }
})



