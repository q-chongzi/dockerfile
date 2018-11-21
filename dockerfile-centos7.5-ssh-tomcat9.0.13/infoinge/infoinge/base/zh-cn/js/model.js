var model={
    myDiagram:null,
    fieldTemplate:null,
    g:null,
    nodeData:null,
    loc:[],
    rightKey:null,
    remove_r_data_code:null,
    remove_r_identifier:null,
    remove_r_resource_name:null,
    remove_r_field:null,
    remove_s_data_code:null,
    remove_s_identifier:null,
    remove_s_resource_name:null,
    remove_s_field:null,
    validate_s_data_code:null,
    link_code:null,
    primary:[],
    init:function () {
        this.showModelDataSetting('');
        this.initDraw();
    },
    initDraw:function () {
        model.g = go.GraphObject.make;  // for conciseness in defining templates
        model.myDiagram =
            model.g(go.Diagram, "myDiagramDiv",
                {
                    initialContentAlignment: go.Spot.Center,
                    validCycle: go.Diagram.CycleNotDirected,  // don't allow loops
                    "LinkRelinked": function (obj) {
                        $("#prompt_content").css('display','none');
                        if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','24%');
                        else
                            $("#data_setting>div").css('top','30%');
                        var r_data_code;
                        var r_identifier;
                        var r_resource_name;
                        var s_data_code;
                        var s_identifier;
                        var s_resource_name;
                        var fromPort = obj.subject.data.fromPort;
                        var toPort = obj.subject.data.toPort;
                        for (var i = 0;  i <= model.nodeData.length-1;i++ ){
                            if (model.nodeData[i].key == obj.subject.data.to){
                                r_data_code = model.nodeData[i].code;
                                r_identifier = model.nodeData[i].identifier;
                                r_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        for (var i = 0;  i <= model.nodeData.length-1;i++ ){
                            if (model.nodeData[i].key == obj.subject.data.from){
                                s_data_code = model.nodeData[i].code;
                                s_identifier = model.nodeData[i].identifier;
                                s_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        if(obj.parameter.data.location == 1){
                            model.remove_s_field = obj.parameter.data.name;
                            for (var i = 0;  i <= model.nodeData.length-1;i++ ) {
                                if (model.nodeData[i].code == obj.parameter.data.data_code) {
                                    model.remove_s_data_code = model.nodeData[i].code;
                                    model.remove_s_identifier = model.nodeData[i].identifier;
                                    model.remove_s_resource_name = model.nodeData[i].resource_name;
                                    break;
                                }
                            }
                        }else if (obj.parameter.data.location == 2){
                            model.remove_r_field = obj.parameter.data.name;
                            for (var i = 0;  i <= model.nodeData.length-1;i++ ) {
                                if (model.nodeData[i].code == obj.parameter.data.data_code) {
                                    model.remove_r_data_code = model.nodeData[i].code;
                                    model.remove_r_identifier = model.nodeData[i].identifier;
                                    model.remove_r_resource_name = model.nodeData[i].resource_name;
                                    break;
                                }
                            }
                        }
                            model.onModelLink(s_data_code, r_data_code, s_identifier, r_identifier, s_resource_name, r_resource_name, fromPort, toPort, model.remove_s_data_code, model.remove_s_identifier, model.remove_s_resource_name, model.remove_s_field, model.remove_r_data_code, model.remove_r_identifier, model.remove_r_resource_name, model.remove_r_field);
                            model.remove_r_data_code = r_data_code;
                            model.remove_r_identifier = r_identifier;
                            model.remove_r_resource_name = r_resource_name;
                            model.remove_r_field = toPort;
                            model.remove_s_data_code = s_data_code;
                            model.remove_s_identifier = s_identifier;
                            model.remove_s_resource_name = s_resource_name;
                    },
                    "LinkDrawn":function (data,a) {
                        data.diagram.allowDelete=false;
                        $("#prompt_content").css('display','none');
                        if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','24%');
                        else
                            $("#data_setting>div").css('top','30%');
                        var r_data_code;
                        var r_identifier;
                        var r_resource_name;
                        var s_data_code;
                        var s_identifier;
                        var s_resource_name;
                        var fromPort = data.subject.data.fromPort;
                        var toPort = data.subject.data.toPort;
                        // exchange.remove_from_port =data.subject.data.fromPort;
                        // exchange.remove_to_port = data.subject.data.toPort;
                        for (var i = 0;  i <= model.nodeData.length-1;i++ ){
                            if (model.nodeData[i].key == data.subject.data.to){
                                r_data_code = model.nodeData[i].code;
                                r_identifier = model.nodeData[i].identifier;
                                r_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        for (var i = 0;  i <= model.nodeData.length-1;i++ ){
                            if (model.nodeData[i].key == data.subject.data.from){
                                s_data_code = model.nodeData[i].code;
                                s_identifier = model.nodeData[i].identifier;
                                s_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        model.onModelLink(s_data_code,r_data_code,s_identifier,r_identifier,s_resource_name,r_resource_name,fromPort,toPort,'','','','','','','','');
                        model.remove_r_data_code = r_data_code;
                        model.remove_r_identifier = r_identifier;
                        model.remove_r_resource_name = r_resource_name;
                        model.remove_r_field = toPort;
                        model.remove_s_data_code = s_data_code;
                        model.remove_s_identifier = s_identifier;
                        model.remove_s_resource_name = s_resource_name;
                        model.remove_s_field = fromPort;
                    },
                    "SelectionDeleting":function (obj) {
                        if((model.primary.left[0].name == model.remove_s_field) && (model.primary.left[0].data_code == model.remove_s_data_code)){
                            obj.diagram.allowDelete=false;
                            alert('功能数据为迁移或同步时不允许删除主键之间的映射关系')
                        }
                    },
                    "SelectionDeleted":function (obj,a) {
                        //设置允许删除
                        // var code = obj.subject.Ea.value.data.code;
                        $("#prompt_content").css('display','none');
                        $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove','code'), new Array('infoinge',
                            'model.data.link.remove.process',model.link_code), new Array(), new Array(), 'text', null, null,
                            'removeLinkDataSettingSuccessCallback', 'normalErrorCallback');
                    },
                    "undoManager.isEnabled": true
                });
        model.fieldTemplate =
            model.g(go.Panel, "TableRow",  // this Panel is a row in the containing Table
                new go.Binding("portId", "name"),  // this Panel is a "port"
                {
                    background: "transparent",  // so this port's background can be picked by the mouse
                    fromSpot: go.Spot.Right,  // links only go from the right side to the left side
                    toSpot: go.Spot.Left,
                    // allow drawing links from or to this port:
                    fromLinkable: true, toLinkable: true
                },
                model.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 1, font: "bold 13px sans-serif",
                        alignment: go.Spot.Left,
                        // and disallow drawing links from or to this text:
                        fromLinkable: false, toLinkable: false },
                    new go.Binding("text", "name")),
                model.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 2, font: "13px sans-serif", alignment: go.Spot.Left },
                    new go.Binding("text", "info"))
            );
        // This template represents a whole "record".
        model.myDiagram.nodeTemplate =
            model.g(go.Node, "Auto",
                {"click":function (a,data) {
                    model.showModelDataSetting(data.data.code,data.data.fields[0].location)
                }},
                { movable: false,
                    copyable: false,
                    deletable: false },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // this rectangular shape surrounds the content of the node
                model.g(go.Shape,
                    { fill: "#EEEEEE" }),
                // the content consists of a header and a list of items
                model.g(go.Panel, "Vertical",
                    // this is the header for the whole node
                    model.g(go.Panel, "Auto",
                        { stretch: go.GraphObject.Horizontal },  // as wide as the whole node
                        model.g(go.Shape,
                            { fill: "#1570A6", stroke: null }),
                        model.g(go.TextBlock,
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
                    model.g(go.Panel, "Table",
                        {
                            padding: 2,
                            minSize: new go.Size(100, 10),
                            defaultStretch: go.GraphObject.Horizontal,
                            itemTemplate: model.fieldTemplate
                        },
                        new go.Binding("itemArray", "fields")
                    )  // end Table Panel of items
                )  // end Vertical Panel
            );  // end Node

        model.myDiagram.linkTemplate =
            model.g(go.Link,
                // {"selectionObject":function(a){
                //     console.log(a)
                // }},
                {"click":function (a,obj) {
                    model.link_code = obj.data.code;
                    model.remove_s_field = obj.data.fromPort;
                    for (var i = 0;  i <= model.nodeData.length-1;i++ ) {
                        if (model.nodeData[i].key ==obj.data.from) {
                            model.remove_s_data_code = model.nodeData[i].code;
                            model.remove_s_identifier = model.nodeData[i].identifier;
                            model.remove_s_resource_name = model.nodeData[i].resource_name;
                            break;
                        }
                    }

                    model.remove_r_field = obj.data.toPort;
                    for (var i = 0;  i <= model.nodeData.length-1;i++ ) {
                        if (model.nodeData[i].key ==obj.data.to) {
                            model.remove_r_data_code = model.nodeData[i].code;
                            model.remove_r_identifier = model.nodeData[i].identifier;
                            model.remove_r_resource_name = model.nodeData[i].resource_name;
                            break;
                        }
                    }
                    model.showLinkDataSetting(obj.data.code)
                }},
                {
                    relinkableFrom: true, relinkableTo: true, // let user reconnect links
                    toShortLength: 4,  fromShortLength: 2
                },
                model.g(go.Shape, { strokeWidth: 1.5 }),
                model.g(go.Shape, { toArrow: "Standard", stroke: null })
            );
        model.onModelData();
        function  isValid(a,b,c,d) {
            var is_type = true;
            var is_link = true;
            var is_repeat = true;
            if (a.data.fields[0].location == c.data.fields[0].location){
                $("#prompt_content_show").text("不允许同侧数据关联");
                $("#prompt_content").css('display','block');
                if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','18%');
                else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','24%');
                else
                    $("#data_setting>div").css('top','30%');

            }else if (parseFloat(a.data.position) >=  parseFloat(c.data.position)) {
                $("#prompt_content_show").text("数据只能映射到处理顺序大于自身的数据");
                $("#prompt_content").css('display','block');
                if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','18%');
                else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','24%');
                else
                    $("#data_setting>div").css('top','30%');

            }else if (($("#catalog_type").val() == 'migration' || ($("#catalog_type").val() == 'synchronization')) && (parseFloat(b.data.length) >  parseFloat(d.data.length))){
                is_type = false;
                $("#prompt_content_show").text("数据只能映射到数据长度大于或等于自身的数据长度");
                $("#prompt_content").css('display','block');
                if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','18%');
                else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','24%');
                else
                    $("#data_setting>div").css('top','30%');

            }else if (($("#catalog_type").val() == 'synchronization') && (a.data.operation == 'synchronize' || a.data.operation == 'mysql_sync' || a.data.operation == 'oracle_sync' || a.data.operation == 'sql_sync')
                && ((b.data.name == b.data.primary) || (d.data.name == d.data.primary))){
                is_link = false;
                $("#prompt_content_show").text("同步时主数据只能连接主数据且不可修改");
                $("#prompt_content").css('display','block');
                if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','18%');
                else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','24%');
                else
                    $("#data_setting>div").css('top','30%');

            }else if (($("#catalog_type").val() == 'migration') || ($("#catalog_type").val() == 'synchronization')){
                for (var i = 0 ;i <=  model.myDiagram.model.linkDataArray.length -1;i++){
                    if (((model.myDiagram.model.linkDataArray[i].to == c.data.key) && (model.myDiagram.model.linkDataArray[i].toPort == d.data.name)) || ((model.myDiagram.model.linkDataArray[i].from == a.data.key) && (model.myDiagram.model.linkDataArray[i].fromPort == b.data.name))){
                        is_repeat = false;
                        $("#prompt_content_show").text("迁移或同步时,映射字段不能被重复选中");
                        $("#prompt_content").css('display','block');
                        if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','24%');
                        else
                            $("#data_setting>div").css('top','30%');

                        break;
                    }
                }
            } else {
                $("#prompt_content").css('display','none');
                if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','18%');
                else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top','24%');
                else
                    $("#data_setting>div").css('top','30%');
            }

            return (a.data.fields[0].location != c.data.fields[0].location) && (parseFloat(a.data.position) <=  parseFloat(c.data.position)) && is_type && is_link && is_repeat
        }
        // console.log()
        model.myDiagram.toolManager.linkingTool.linkValidation =isValid;

        model.myDiagram.toolManager.relinkingTool.linkValidation =isValid;
    },
    onModelData:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge',
            'model.data.search.view'), new Array('buddle_id','catalog_id'), new Array('buddle_id','catalog_id'), 'text', null, null,
            'showModelDataSettingSuccessCallback', 'normalErrorCallback');
    },
    onModelLink:function (s_data_code,r_data_code,s_identifier,r_identifier,s_resource_name,r_resource_name,s_field,r_field,remove_s_data_code,remove_s_identifier,remove_s_resource_name,remove_s_field,remove_r_data_code,remove_r_identifier,remove_r_resource_name,remove_r_field) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove','s_data_code','r_data_code','s_identifier','r_identifier','s_resource_name','r_resource_name','s_field','r_field',
            'remove_s_data_code','remove_s_identifier','remove_s_resource_name','remove_s_field','remove_r_data_code','remove_r_identifier',
            'remove_r_resource_name','remove_r_field'), new Array('infoinge',
            'model.data.link.process',s_data_code,r_data_code,s_identifier,r_identifier,s_resource_name,r_resource_name,s_field,r_field,
            remove_s_data_code,remove_s_identifier,remove_s_resource_name,remove_s_field,remove_r_data_code,remove_r_identifier,
            remove_r_resource_name,remove_r_field), new Array('buddle_id','catalog_id'), new Array('buddle_id','catalog_id'), 'text', null, null,
            'onModelLinkSettingSuccessCallback', 'normalErrorCallback');
    },
    showLinkDataSetting:function (code) {
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=model.data.link.setting.view&code="
                + code + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else{
                        if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','24%');
                        else
                            $("#data_setting>div").css('top','30%');
                        
                        if ($("#data_exchange_sync_time_field").val()!=''){
                            $("#data_exchange_flag_field").removeClass("validate[required]");
                        }
                        if ($("#data_exchange_sync_time_field").val()!=''){
                            $("#data_exchange_flag_field").removeClass("validate[required]");
                            $("#data_exchange_flag_change_container").hide();
                            $("#data_exchange_flag_reset_container").hide();
                        }
                    }
                        ;
                    // hintMessage("显示目录数据设置界面成功。", false);


                });
    },
    showModelDataSetting:function (code,location) {
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=infoinge&catalog.cludove=model.data.setting.view&code="
                + code +"&location=" +location
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else{
                        if ($("#data_catalog_type").val().length > 0)
                            $('input:radio[name="data_type_select"]').attr('disabled','disabled');

                        // if ( $("#data_catalog_type").val() == 'synchronization' ||   $("#data_catalog_type").val() == 'migration') {
                        //     if ($('#code_data').val().length > 0 && ( $('#data_operation').val() != 'search' && $('#data_operation').val() != 'modify' && $('#data_operation').val() != 'build' && $('#data_operation').val() != 'remove' && $('#data_operation').val() != 'upload' && $('#data_operation').val() != 'download')) {
                        //         $("#data_position").attr('disabled','disabled');
                        //         $('#data_position').spinner({
                        //             max: 0,
                        //             min: 0,
                        //             step: 1
                        //         });
                        //
                        //     }else if ($("#data_count").val() == 0){
                        //         $("#data_position").attr('disabled','disabled');
                        //         $('#data_position').spinner({
                        //             max: 0,
                        //             min: 0,
                        //             step: 1
                        //         });
                        //
                        //     }else
                        //         $('#data_position').spinner({
                        //             max: 100,
                        //             min: 1,
                        //             step: 1
                        //         });
                        // }else {
                            $('#data_position').spinner({
                                max: 100,
                                min: 0,
                                step: 1
                            });

                        // }

                        if($("#data_is_for_each").val() == 'true')
                            $("#data_select_expression").attr('class','validate[required,maxSize[1024]]');
                        else
                            $("#data_select_expression").attr('class','validate[maxSize[1024]]');

                        if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','24%');
                        else
                            $("#data_setting>div").css('top','30%');

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

                    onDataConnectionIdChange();
                    

                    $('#data_row_number').spinner({
                        max: 100,
                        min: 0,
                        step: 1
                    });
                });
    },
    Drawing:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var w=0;
        var data=[];
        var l=0;
        var height=[];
        var styleHeight=0;
        $("#primary_prompt").hide();
        primaryData = [];
        primaryData.left = new Array();
        primaryData.right = new Array();
        /*********取出模型设计表数据***********/
        for (var h = 0;h <=obj[0].length-1;h++ ){
            height[h]=0;
            model.loc[h]=new Array();
            model.loc[h][0]=new Array();
            model.loc[h][0]=w+" "+"0";
            for (var i = 0;i <= obj[0][h].length-1;i++) {
                if (obj[0][h][i].fields.length > 0) {
                    obj[0][h][i].loc = new Array();
                    obj[0][h][i].loc = model.loc[h][i];
                    data[l] = obj[0][h][i];

                    l++;

                    model.loc[h][i + 1] = new Array();
                    height[h] += ((obj[0][h][i].fields.length) * 18 + 80);
                    model.loc[h][i + 1] = w + " " + height[h];
                }
            }
            w+=750;
            if (h == 0){
                styleHeight = height[h]
            }else {
                if(styleHeight <= height[h])
                    styleHeight = height[h]
            }
        }
        for (var i = 0; i <= data.length-1;i++){
            for (var r = 0; r<= data[i].fields.length-1;r++){
                var length = data[i].fields[r].info.length;
                data[i].fields[r].info =data[i].fields[r].info.substring(0,20);
                if (data[i].fields[r].name == data[i].fields[r].primary){
                    if (data[i].fields[r].location == 1){
                        var leftData = data[i].fields[r];
                        leftData.from = data[i].key;
                        leftData.identifier = data[i].identifier;
                        leftData.resource_name = data[i].resource_name;
                        leftData.data_code = data[i].code;
                        primaryData.left.push(leftData);
                    }else if (data[i].fields[r].location == 2){
                        var rightData = data[i].fields[r];
                        rightData.to = data[i].key;
                        rightData.identifier = data[i].identifier;
                        rightData.resource_name = data[i].resource_name;
                        rightData.data_code = data[i].code;
                        primaryData.right.push(rightData);
                    }
                }
            }
        }

        var  synchronizeData = [];
        var linkData = obj[1];
        // if ($("#catalog_type").val() == 'synchronization'){
            //取出主键信息
            for (var i = 0;i <= primaryData.right.length -1;i++){
                for (var l = 0;l <= primaryData.left.length -1;l++){
                    synchronizeData[i] = new Object();
                    synchronizeData[i].fromPort = primaryData.left[l].name;
                    synchronizeData[i].from = primaryData.left[l].from;
                    synchronizeData[i].s_data_code = primaryData.left[l].data_code;
                    synchronizeData[i].s_identifier = primaryData.left[l].identifier;
                    synchronizeData[i].s_resource_name = primaryData.left[l].resource_name;
                    synchronizeData[i].toPort = primaryData.right[i].name;
                    synchronizeData[i].to = primaryData.right[i].to;
                    synchronizeData[i].r_data_code = primaryData.right[i].data_code;
                    synchronizeData[i].r_identifier = primaryData.right[i].identifier;
                    synchronizeData[i].r_resource_name = primaryData.right[i].resource_name;

                    //为同步是左侧主键数据长度必须大于右侧数据长度
                    if (primaryData.left[l].length > primaryData.right[i].length){
                        $("#primary_prompt").show();
                        if(($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top','24%');
                        else
                            $("#data_setting>div").css('top','30%');
                    }
                }
            // }

            for (var i = 0 ;i <= synchronizeData.length-1;i++){
                var is_exits = 0;
                for (var r = 0 ;r <= obj[1].length-1;r++){
                    //判断主键是否建立连接
                    if ((obj[1][r].from == synchronizeData[i].from) && (obj[1][r].to == synchronizeData[i].to)
                       && (obj[1][r].fromPort == synchronizeData[i].fromPort) && (obj[1][r].toPort == synchronizeData[i].toPort))
                    {
                        is_exits = 1;
                        break;
                    }
                }

                if (is_exits == 0) {
                    var link_data_push = new Object();
                    link_data_push.fromPort = synchronizeData[i].fromPort;
                    link_data_push.from = synchronizeData[i].from;
                    link_data_push.toPort = synchronizeData[i].toPort;
                    link_data_push.to = synchronizeData[i].to;

                    linkData.push(link_data_push);

                    model.onModelLink(synchronizeData[i].s_data_code,synchronizeData[i].r_data_code,synchronizeData[i].s_identifier,synchronizeData[i].r_identifier,synchronizeData[i].s_resource_name,synchronizeData[i].r_resource_name,synchronizeData[i].fromPort,synchronizeData[i].toPort,'','','','','','','','');

                }
            }
        }
        model.nodeData = data;
        model.primary = primaryData;

        $("#myDiagramDiv").css('height',styleHeight+50+"px");
        model.myDiagram.model =
            model.g(go.GraphLinksModel,
                {
                    linkFromPortIdProperty: "fromPort",
                    linkToPortIdProperty: "toPort",
                    nodeDataArray: data,
                    linkDataArray:linkData
                });
        // model.myDiagram.findNodeForKey('BUDDLE_ISSUE.1509691968154001').position = new go.Point(0,500);
        // model.myDiagram.findNodeForKey('BUDDLE_ISSUE.1509691968154001').locationSpot = new go.Point(0,500);
        // console.log(model.myDiagram.findNodeForKey('BUDDLE_ISSUE.1509691968154001'));

        // for (var i = 0;i<data.length;i++){
        //     if (data[i].fields[0].location == 2){
        //         model.rightKey = data[i].key;
        //         break;
        //     }
        //
        // }
        //
        // if(model.rightKey !=null){
        //     model.myDiagram.positionComputation = computeIntegralPosition;
        //     function computeIntegralPosition(diagram, pt) {
        //         model.myDiagram.findNodeForKey(model.rightKey).position = new go.Point(700,pt.y);
        //         return new go.Point(Math.floor(pt.x), Math.floor(pt.y));
        //     }
        // }
        // console.log(model.rightKey)
    }

};

$.extend({
    showModelDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        model.Drawing(responseText);
    }
});

$.extend({
    removeLinkDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        model.myDiagram.allowDelete=true;
        model.showModelDataSetting();
    }
});



$.extend({
    onModelLinkSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        var obj = eval('(' + responseText + ')');

        // console.log(model.myDiagram.model.linkDataArray);
        for (var i = 0;i <= model.myDiagram.model.linkDataArray.length-1;i++){
            if (model.myDiagram.model.linkDataArray[i].from == obj.from && model.myDiagram.model.linkDataArray[i].to == obj.to
                && model.myDiagram.model.linkDataArray[i].fromPort == obj.fromPort && model.myDiagram.model.linkDataArray[i].toPort == obj.toPort
            ){
                model.myDiagram.model.linkDataArray[i].code = obj.code;
                model.link_code = obj.code;
                model.showLinkDataSetting(obj.code)

            }
        }
        model.myDiagram.allowDelete=true;
    }
});

function processModelDataSetting() {
    if ($("#data_exchange_flag_field").val()!=''){
        $("#data_exchange_sync_time_field").removeClass("validate[required]");
    }
    if ($("#data_exchange_sync_time_field").val()!=''){
        $("#data_exchange_flag_field").removeClass("validate[required]");
        $("#data_exchange_flag_change").removeClass("validate[required]");
        $("#data_exchange_flag_reset").removeClass("validate[required]");
    }
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#data_type").val() == 'DB'){
        $("#data_resource_name").attr('class','validate[required]')
    }else {
        $("#data_resource_name").removeAttr('class','validate[required]');
        $("#data_is_for_each").val('false');
    }

    if( $("#data_is_for_each").val() == 'false')
        $("#data_select_expression").val('');
    if (($("#data_catalog_type").val() != '') && ($("#data_count_right").val() >= 1 ) && ($('#code_data').val().length == 0) &&($('#data_operation').val() == 'build')){
        alert('选择功能为迁移或同步时，保存操作必须唯一')
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
                        'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb'),
                        new Array('infoinge', 'model.data.setting.process',
                            'false', 'false','false'), new Array('code',
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
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb'),
                            new Array('infoinge', 'model.data.setting.process',
                                'false', 'false','false'), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id', 
                                'remove_resource_name', 'location', 'remove_operation','code_data_migr'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'remove_connection_id_by_db', 'remove_resource_name_by_db', 
                                'data_location', 'remove_operation_by_db','code_data_migr'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb'),
                            new Array('infoinge', 'model.data.setting.process',
                                'false', 'false','true'), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'remove_connection_id', 'remove_resource_name', 'location',
                                'remove_operation', 'flag_change', 'flag_reset','code_data_migr'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name','data_operation_migr',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression',
                                'data_is_permit', 'data_exchange_flag_field', 'remove_connection_id_by_db',
                                'remove_resource_name_by_db', 'data_location', 'remove_operation_by_db',
                                'data_exchange_flag_change', 'data_exchange_flag_reset','code_data_migr'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
            } else {
                if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend'),
                        new Array('infoinge', 'model.data.setting.process',
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
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend'),
                            new Array('infoinge', 'model.data.setting.process',
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
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb'),
                            new Array('infoinge', 'model.data.setting.process',
                                'false', 'false','true'), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field', 'flag_change', 'flag_reset','code_data_migr'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation_migr', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression', 'data_is_permit', 'data_exchange_flag_field', 'data_exchange_flag_change', 'data_exchange_flag_reset','code_data_migr'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
            }
        }
    }
}

$.extend({
    dataModelSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        model.onModelData();
        enableButton();
        var obj = eval('(' + responseText + ')');
        model.showModelDataSetting(obj.data_code,obj.location);
        $("#data_operation").find("option").eq(1).attr("selected","selected");
    }
});

function processModelDataRemove() {
    if ($('#code_data').val().length > 0) {
        $.request(httpHeader, '删除目录数据',new Array('buddle.cludove',
            'catalog.cludove'), new Array('infoinge', 'model.data.remove.process'),
            new Array('code','location','data_code_migr'),
            new Array('code_data','data_location','code_data_migr'),
            'text', null, null,
            'modelDataRemoveSuccessCallback', 'normalErrorCallback'
        )
    }
}

$.extend({
    modelDataRemoveSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        model.onModelData(responseText);
        model.showModelDataSetting();
    }
});

function processLinkDataSetting() {
    if ($("#data_is_main").val() == 'true'){
        $('#data_mapping_test_expression').val('');
    }
    $.request(httpHeader, '修改库表主数据',new Array('buddle.cludove',
        'catalog.cludove'), new Array('infoinge', 'model.data.link.setting.process'),
        new Array('code','is_main','test_expression'),
        new Array('code_data_mapping','data_is_main','data_mapping_test_expression'),
        'text', null, null,
        null, 'normalErrorCallback'
    )
};


