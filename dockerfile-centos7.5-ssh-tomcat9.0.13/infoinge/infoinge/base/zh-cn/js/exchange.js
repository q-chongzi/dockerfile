function onExchangeDesignNaviagate(buddle_id,code,catalog_id) {
    $("#"+buddle_id+"_exchange_design_container").load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=exchange.design.navigate.view"
            + "&buddle_id=" + buddle_id
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("导航功能目录失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                $("#buddle_id").val(buddle_id)
                // hintMessage("导航功能目录成功。", false);
            }
    );

    setRemoveSelectRecordButton('block', '交换设计', 'exchange.design.remove.process',
        'design_record_code', 'design_check_select', 'design_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=exchange.design.search.view"
            + "&buddle_id=" + buddle_id
            + "&t="
            + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入交换设计失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
                // hintMessage("载入功能目录成功。", false);

                checkAll('span_check_design',
                    'span_check_select_design',
                    'design_check_select', 'check_all_design');
                locateRecord(code, 'design_check',
                    'design_select', 'showDesignSetting(\'' + code + '\', \'' + catalog_id + '\', 0)');
                // showCatalogSetting(record_code, catalog_id);
            });

    $("#resource_setting_right").load(
        $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=exchange.design.setting.view"
        + "&code=" +code
        + "&t="
        + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("载入交换设计失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else
                $('#design_name').focus();
            ;
        }
    );
}

function showDesignSetting(code) {
    $("#resource_setting_right").load(
        $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=exchange.design.setting.view"
        + "&code=" + code + "&t="
        + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("载入功能目录失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else
                $('#design_name').focus();
            ;
        }
    );
}

function onDesignNavigate(code,container_id) {
    $("#design_code").val(code);
    $("#container_id").val(container_id);
    onDesignSetting(code,container_id);
}

function onDesignSetting(code,container_id) {
    $("#" + $("#container_id").val() + "")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=exchange.catalog.navigate.view"
            + "&design_code=" +   $("#design_code").val()
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
                onDesignCatalogSetting(code, "", 0);

            });

}

function processDesignSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_design_setting').validationEngine('validate')) {
        if ($('#code_design').val().length > 0) {
            $.request(httpHeader, '修改交互设计', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'exchange.design.setting.process'), new Array('code',
                'connection_code','name', 'description'), new Array('code_design',
                'connection_code_design','design_name','design_description'), 'text',
                null, null, 'designSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增交互设计', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'exchange.design.setting.process'), new Array('buddle_id',
                'connection_code','name', 'description'), new Array('buddle_id',
                'connection_code_design','design_name','design_description'), 'text',
                null, null, 'designSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    designSettingSuccessCallback:function (responseText) {
        flag = 1;
        // 刷新页面
        onExchangeDesignNaviagate($("#buddle_id").val(),responseText);
    }
});


/* 开始功能目录配置 */

function onDesignCatalogSetting(record_code, catalog_id) {
    $("#catalog_id").val(catalog_id);
    setRemoveSelectRecordButton('block', '功能目录', 'catalog.remove.process',
        'catalog_record_code', 'catalog_check_select', 'catalog_select');

    $("#resource_setting_main")
        .load(
            $("#hinge_header").val()
            + "s?buddle.cludove=infoinge&catalog.cludove=exchange.catalog.search.view"
            + "&design_code=" + $("#design_code").val() + "&t="
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
                    'catalog_select', 'showDesignCatalogSetting(\'' + record_code + '\', \'' + catalog_id + '\', 0)');
                showDesignCatalogSetting(record_code);
            });
}
//使用is_locate_record来判断是否应该调用locateNavigate
function showDesignCatalogSetting(code,is_locate_record) {
    $("#resource_setting_right")
        .load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=exchange.catalog.setting.view&code="
            + code + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("显示功能目录设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
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

function processDesignCatalogSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_catalog_setting').validationEngine('validate')) {
        if ($('#code_catalog').val().length > 0) {
            $.request(httpHeader, '修改功能目录', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'exchange.catalog.setting.process'), new Array('code',
                'connection_code', 'buddle_id', 'identifier', 'name',
                'type', 'content_type', 'is_permit', 'is_home', 'is_pause',
                'is_for_each', 'select_expression', 'is_running',
                'timing_year', 'timing_month', 'timing_day', 'timing_hour',
                'timing_minute','description','design_code'), new Array('code_catalog',
                'connection_code_catalog', 'buddle_id',
                'catalog_identifier', 'catalog_name', 'catalog_type',
                'catalog_content_type', 'catalog_is_permit',
                'catalog_is_home', 'catalog_is_pause',
                'catalog_is_for_each', 'catalog_select_expression',
                'catalog_is_running', 'catalog_timing_year',
                'catalog_timing_month', 'catalog_timing_day',
                'catalog_timing_hour', 'catalog_timing_minute','catalog_description','design_code'), 'text',
                null, null, 'catalogDesignSettingSuccessCallback',
                'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增功能目录', new Array('buddle.cludove',
                'catalog.cludove'), new Array('infoinge',
                'exchange.catalog.setting.process'), new Array('buddle_id',
                'identifier', 'name', 'type', 'content_type', 'is_permit',
                'is_home', 'is_pause', 'is_for_each', 'select_expression',
                'is_running', 'timing_year', 'timing_month', 'timing_day',
                'timing_hour', 'timing_minute','design_code'), new Array('buddle_id',
                'catalog_identifier', 'catalog_name', 'catalog_type',
                'catalog_content_type', 'catalog_is_permit',
                'catalog_is_home', 'catalog_is_pause',
                'catalog_is_for_each', 'catalog_select_expression',
                'catalog_is_running', 'catalog_timing_year',
                'catalog_timing_month', 'catalog_timing_day',
                'catalog_timing_hour', 'catalog_timing_minute','design_code'), 'text',
                null, null, 'catalogDesignSettingSuccessCallback',
                'normalErrorCallback');
        }
    }
}

$.extend({
    catalogDesignSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        onDesignSetting(responseText);
    }
});

function onDesignReturnEdit(identifier) {
    var url = $("#hinge_header").val()
        + "s?buddle.cludove=infoinge&catalog.cludove=exchange.catalog.edit.view"
        + "&buddle_id="+$("#buddle_id").val()+"&identifier="+identifier; //转向网页的地址;
    var name = "编辑功能返回"; //网页名称，可为空;
    var iWidth = window.screen.width * 0.85; //弹出窗口的宽度;
    var iHeight = window.screen.height * 0.85; //弹出窗口的高度;
    var iTop = (window.screen.height - 60 - iHeight) / 2; //获得窗口的垂直位置;
    var iLeft = (window.screen.width - 20 - iWidth) / 2; //获得窗口的水平位置;

    window.open(url,name,'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth='
        + iWidth + ',top=' + iTop + ',left=' + iLeft
        + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}

var exchange={
    myDiagram:null,
    fieldTemplate:null,
    g:null,
    loc:[],
    isExits:0,
    nodeData:null,
    remove_to_port:null,
    remove_form_port:null,
    select_expression:null,
    remove_key:'',
    init:function () {
        exchange.g = go.GraphObject.make;  // for conciseness in defining templates
        exchange.myDiagram =
            exchange.g(go.Diagram, "myDiagramDiv",
                {
                    initialContentAlignment: go.Spot.Center,
                    validCycle: go.Diagram.CycleNotDirected,  // don't allow loops
                    "LinkRelinked": function (obj) {
                        var  toPort = obj.subject.data.toPort;
                        var  fromPort = obj.subject.data.fromPort;
                        var data_select_expression = obj.subject.data.from;
                        if(obj.parameter.data.position == 1){
                            exchange.remove_from_port = obj.parameter.data.name;
                        }else if (obj.parameter.data.position == 2){
                            exchange.remove_to_port = obj.parameter.data.name;
                        }
                        var data_code;
                        for (var i = 0;  i <= exchange.nodeData.length-1;i++ ){
                            if (exchange.nodeData[i].key == obj.subject.data.to){
                                data_code = exchange.nodeData[i].code;
                                break;
                            }
                        }
                        var remove_data_code='';
                        for (var i = 0;  i <= exchange.nodeData.length-1;i++ ){
                            if (exchange.nodeData[i].key == exchange.remove_key){
                                remove_data_code = exchange.nodeData[i].code;
                                break;
                            }
                        }
                        exchange.onExchangeLink(data_code,data_select_expression,toPort,fromPort,exchange.remove_to_port,exchange.remove_from_port,remove_data_code);
                        exchange.remove_from_port =obj.subject.data.fromPort;
                        exchange.remove_to_port = obj.subject.data.toPort;
                    },
                    "LinkDrawn":function (data) {
                        var data_code;
                        var fromPort = data.subject.data.fromPort;
                        var toPort = data.subject.data.toPort;
                        var data_select_expression = data.subject.data.from;
                        exchange.remove_from_port =data.subject.data.fromPort;
                        exchange.remove_to_port = data.subject.data.toPort;
                        for (var i = 0;  i <= exchange.nodeData.length-1;i++ ){
                            if (exchange.nodeData[i].key == data.subject.data.to){
                                data_code = exchange.nodeData[i].code;
                                break;
                            }
                        }
                        exchange.remove_key = data.subject.data.to;
                       exchange.onExchangeLink(data_code,data_select_expression,toPort,fromPort,'','','');
                    },
                    "undoManager.isEnabled": true
                });
        exchange.fieldTemplate =
            exchange.g(go.Panel, "TableRow",  // this Panel is a row in the containing Table
                new go.Binding("portId", "name"),  // this Panel is a "port"
                {
                    background: "transparent",  // so this port's background can be picked by the mouse
                    fromSpot: go.Spot.Right,  // links only go from the right side to the left side
                    toSpot: go.Spot.Left,
                    // allow drawing links from or to this port:
                    fromLinkable: true, toLinkable: true
                },
                exchange.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 1, font: "bold 13px sans-serif",
                        alignment: go.Spot.Left,
                        // and disallow drawing links from or to this text:
                        fromLinkable: false, toLinkable: false },
                    new go.Binding("text", "name")),
                exchange.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 2, font: "13px sans-serif", alignment: go.Spot.Left },
                    new go.Binding("text", "info"))
            );
        // This template represents a whole "record".
        exchange.myDiagram.nodeTemplate =
            exchange.g(go.Node, "Auto",
                {"click":function (a,data) {
                    if(data.data.fields[0].position == 1){
                        exchange.select_expression = data.data.key;
                    }else {
                        exchange.select_expression = '';
                    }
                    exchange.showExchangeSetting(data.data.code)
                }},
                { movable: false,
                    copyable: false,
                    deletable: false },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // this rectangular shape surrounds the content of the node
                exchange.g(go.Shape,
                    { fill: "#EEEEEE" }),
                // the content consists of a header and a list of items
                exchange.g(go.Panel, "Vertical",
                    // this is the header for the whole node
                    exchange.g(go.Panel, "Auto",
                        { stretch: go.GraphObject.Horizontal },  // as wide as the whole node
                        exchange.g(go.Shape,
                            { fill: "#1570A6", stroke: null }),
                        exchange.g(go.TextBlock,
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
                    exchange.g(go.Panel, "Table",
                        {
                            padding: 2,
                            minSize: new go.Size(100, 10),
                            defaultStretch: go.GraphObject.Horizontal,
                            itemTemplate: exchange.fieldTemplate
                        },
                        new go.Binding("itemArray", "fields")
                    )  // end Table Panel of items
                )  // end Vertical Panel
            );  // end Node

        exchange.myDiagram.linkTemplate =
            exchange.g(go.Link,
                {"click":function (a,obj) {
                    exchange.remove_from_port = obj.data.fromPort;
                    exchange.remove_to_port = obj.data.toPort;
                    exchange.remove_key = obj.data.to;
                }},
                {
                    relinkableFrom: true, relinkableTo: true, // let user reconnect links
                    toShortLength: 4,  fromShortLength: 2
                },
                exchange.g(go.Shape, { strokeWidth: 1.5 }),
                exchange.g(go.Shape, { toArrow: "Standard", stroke: null })
            );
        // exchange.Drawing();
        exchange.showExchangeSetting();
        exchange.onExchangeData();
        function  isValid(a,b,c,d) {
            if (a.data.fields[0].position == c.data.fields[0].position)
                alert("不允许类型相同的库表关联")
           return a.data.fields[0].position != c.data.fields[0].position
        }
        exchange.myDiagram.toolManager.linkingTool.linkValidation =isValid;

        exchange.myDiagram.toolManager.relinkingTool.linkValidation =isValid;

    },
    onExchangeLink:function (data_code,data_select_expression,to_port,from_port,remove_tag_name,remove_select_expression,remove_data_code) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove','data_code','tag_name','select_expression','remove_tag_name','remove_select_expression','data_select_expression','remove_data_code'), new Array('infoinge',
            'exchange.design.data.link.process',data_code,to_port,from_port,remove_tag_name,remove_select_expression,data_select_expression,remove_data_code), new Array('buddle_id','catalog_id'), new Array('buddle_id','catalog_id'), 'text', null, null,
            null, 'normalErrorCallback');
    },
    onExchangeData:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge',
            'exchange.design.data.search.view'), new Array('buddle_id','catalog_id'), new Array('buddle_id','catalog_id'), 'text', null, null,
            'showDesignDataSettingSuccessCallback', 'normalErrorCallback');
    },
    showExchangeSetting:function (code) {
        $("#exchange_data_setting").load(
            httpsHeader
            + "s?buddle.cludove=infoinge&catalog.cludove=exchange.design.data.setting.view&code="
            +code
            +"&buddle_id="+$("#buddle_id").val()
            +"&catalog_id="+$("#catalog_id").val()
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
    Drawing:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var w=0;
        var data=[];
        var l=0;
        var height=[];
        var styleHeight=0;
        /*********取出交换设计表数据***********/
        for (var h = 0;h <=obj[0].length-1;h++ ){
            height[h]=0;
            exchange.loc[h]=new Array();
            exchange.loc[h][0]=new Array();
            exchange.loc[h][0]=w+" "+"0";
            for (var i = 0;i <= obj[0][h].length-1;i++){
                obj[0][h][i].loc=new Array();
                obj[0][h][i].loc=exchange.loc[h][i];
                data[l]= obj[0][h][i];
                l++;
                exchange.loc[h][i+1]=new Array();
                height[h]+=((obj[0][h][i].fields.length)*18+50);
                exchange.loc[h][i+1]=w+" "+height[h];
            }
            w+=650;
            if (h == 0){
                styleHeight = height[h]
            }else {
                if(styleHeight <= height[h])
                    styleHeight = height[h]
            }
        }
        for (var i = 0; i <= data.length-1;i++){
            for (var r = 0; r<= data[i].fields.length-1;r++){
                data[i].fields[r].info = data[i].fields[r].info.substring(0,16);
            }
        }
        /********取出交换设计连接数据***********/
        var linkData=[];
        var l=0;
        for (var i = 0; i <= obj[1].length-1;i++){
            for (var r = 0,h = 0; r <= obj[1][i].fromPort.length-1;r++){
                linkData[l] = new Array();
                linkData[l].fromPort = new Array();
                linkData[l].from = new Array();
                linkData[l].fromPort = obj[1][i].fromPort[r];
                linkData[l].from = obj[1][i].from;
                linkData[l].toPort = new Array();
                linkData[l].to = new Array();
                linkData[l].toPort = obj[1][i].toPort[r];
                linkData[l].to = obj[1][i].to;
                l++;
            }
        }
        exchange.nodeData=data;
        $("#myDiagramDiv").css('height',styleHeight+50+"px");
        exchange.myDiagram.model =
            exchange.g(go.GraphLinksModel,
                {
                    linkFromPortIdProperty: "fromPort",
                    linkToPortIdProperty: "toPort",
                    nodeDataArray: data,
                    linkDataArray:linkData
                });
        exchange.isExits = 0;
        for (var i = 0;i <= data.length-1;i++){
            if (data[i].fields[0].position == '1'){
                exchange.isExits = 1;
                break;
            }
        }
    }
};


function processExchangeDataRemove() {
    var exchange_select_expression = '';
    if ($('#data_operation').val() == 'migrate' || $('#data_operation').val() == 'search' || $('#data_operation').val() == 'synchronize'){
        exchange_select_expression="1";
    }
    if ($('#code_data').val().length > 0) {
        $.request(httpHeader, '删除目录数据',new Array('buddle.cludove',
            'catalog.cludove','exchange_select_expression'), new Array('infoinge', 'exchange.design.data.remove.process',exchange_select_expression),
            new Array('code'),
            new Array('code_data'),
            'text', null, null,
            'designDataRemoveSuccessCallback', 'normalErrorCallback'
        )
    }
}

$.extend({
    designDataRemoveSuccessCallback: function (responseText) {
        $(".set_data_name").html("目录数据-新增");
        $(".span_data_edit").hide();
        $('#code_data').val('');
        $('#connection_code_data').val('');
        $('#data_name').focus();
        $('input:radio[name="data_select"]').attr('checked',false);
        $("#exchange_resource_name").val('');
        flag = 1;
        // 刷新页面
        exchange.onExchangeData(responseText);
    }
});

function processExchangeDataSetting() {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($('#validate_data_setting').validationEngine('validate')) {
        if ($('#data_operation').val() == 'migrate') {
            $('#data_sync_field').val('');
            $('#data_sync_time_field').val('');
        } else if ($('#data_operation').val() == 'synchronize')
            $('#data_migr_field').val('');
        else {
            $('#data_migr_field').val('');
            $('#data_sync_field').val('');
            $('#data_sync_time_field').val('');
        }
        var key = "cludove.crest.spruce." +$("#data_resource_name").val();
        var is_exits = 0;
        for (var i = 0;i <= exchange.nodeData.length-1;i++){
            if (key == exchange.nodeData[i].key){
                is_exits = 1;
                break;
            }
        }
        var is_add=0;
        if ($('#data_operation').val() == 'migrate' || $('#data_operation').val() == 'search' || $('#data_operation').val() == 'synchronize'){
            is_add="1";
        }
        var exchangeName= "cludove.crest.spruce." +$("#exchange_resource_name").val();
        if (exchangeName == key){
            is_exits = 0;
        }
        var  exchange_select_expression = exchange.select_expression;
        if (is_add == '1' && exchange.isExits =='1' && $('#code_data').val().length == 0){
            alert("左侧表格只允许添加一个")
        }else {
            if (is_exits == 1){
                alert("数据库表不能重复")
            }else if (is_exits == 0){
                $("#buttonExchangeDataSetting").removeAttr('onclick');
                if ($('#code_data').val().length > 0) {
                    if ($('#data_operation').val() !=  'migrate' && $('#data_operation').val() !=  'synchronize')
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','exchange_select_expression'),
                            new Array('infoinge', 'exchange.data.setting.process',
                                'false', 'false',exchange_select_expression), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit'), 'text', null, null,
                            'designDataSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','exchange_select_expression'),
                            new Array('infoinge', 'exchange.data.setting.process',
                                'false', 'false',exchange_select_expression), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression', 'data_is_permit'), 'text', null, null,
                            'designDataSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($('#data_operation').val() !=  'migrate' && $('#data_operation').val() !=  'synchronize')
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend'),
                            new Array('infoinge', 'exchange.data.setting.process',
                                'false', 'false'), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit'), 'text', null, null,
                            'designDataSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend'),
                            new Array('infoinge', 'exchange.data.setting.process',
                                'false', 'false'), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression', 'data_is_permit'), 'text', null, null,
                            'designDataSettingSuccessCallback', 'normalErrorCallback');
                }
            }
        }
    }
}

$.extend({
    designDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        $("#buttonExchangeDataSetting").attr('onclick','processExchangeDataSetting()');
        exchange.onExchangeData(responseText);
    }
});

$.extend({
    showDesignDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        exchange.Drawing(responseText);
    }
});
