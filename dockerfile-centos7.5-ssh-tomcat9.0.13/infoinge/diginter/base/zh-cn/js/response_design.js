var responseDesign = {
    myDiagram:null,
    fieldTemplate:null,
    g:null,
    nodeData:null,
    loc:[],
    rightKey:null,
    link_code:null,
    remove_s_data_code:null,
    remove_s_identifier:null,
    remove_s_resource_name:null,
    remove_s_field:null,
    remove_r_field:null,
    primary:[],
    init:function () {
        this.showResponseDesignDataSetting('');
        this.showResponseDesignCatalogSetting('');
        onResponseDesignDataMetadatashow('');
        this.initDraw();
    },
    initDraw:function () {
        responseDesign.g = go.GraphObject.make;  // for conciseness in defining templates
        responseDesign.myDiagram =
            responseDesign.g(go.Diagram, "myDiagramDiv",
                {
                    initialContentAlignment: go.Spot.Center,
                    validCycle: go.Diagram.CycleNotDirected,  // don't allow loops
                    "LinkRelinked": function (obj) {
                        $("#now_remove").show();
                        $("#ajax_loader_remove").show();
                        $("#prompt_content").css('display','none');
                        // obj.diagram.allowDelete=false;
                        // responseDesign.myDiagram.allowSelect=false;
                        var code = obj.subject.data.code;
                        var r_data_code = 'catalog.response';
                        var r_identifier = $('#buddle_id').val();
                        var r_resource_name = $('#catalog_id').val();
                        var s_data_code;
                        var s_identifier;
                        var s_resource_name;
                        var fromPort = obj.subject.data.fromPort;
                        var toPort = obj.subject.data.toPort;
                        var position;
                        for (var i = 0;  i <= responseDesign.nodeData.length-1;i++ ){
                            if (responseDesign.nodeData[i].key == obj.subject.data.from){
                                s_data_code = responseDesign.nodeData[i].code;
                                s_identifier = responseDesign.nodeData[i].identifier;
                                s_resource_name = responseDesign.nodeData[i].resource_name;
                                break;
                            }
                        }
                        if(obj.parameter.data.location == 1){
                            responseDesign.remove_s_field = obj.parameter.data.name;
                            responseDesign.remove_r_field = toPort;
                            position = obj.subject.data.mapping_position;
                            for (var i = 0;  i <= responseDesign.nodeData.length-1;i++ ) {
                                if (responseDesign.nodeData[i].code == obj.parameter.data.data_code) {
                                    responseDesign.remove_s_data_code = responseDesign.nodeData[i].code;
                                    responseDesign.remove_s_identifier = responseDesign.nodeData[i].identifier;
                                    responseDesign.remove_s_resource_name = responseDesign.nodeData[i].resource_name;
                                    break;
                                }
                            }
                            
                            
                        }else if (obj.parameter.data.location == 2){
                            position = obj.subject.data.mapping_position;
                            if (obj.parameter.data.name == fromPort) {
                                position = obj.subject.data.mapping_position;
                            } else {
                                position = 0;
                                for (var i = 0; i < responseDesign.myDiagram.model.linkDataArray.length - 1; i++) {
                                    if ((responseDesign.myDiagram.model.linkDataArray[i].to == ("[" + r_identifier + "].[" + r_resource_name + "]"))
                                        && responseDesign.myDiagram.model.linkDataArray[i].toPort == toPort) {
                                        if (parseFloat(responseDesign.myDiagram.model.linkDataArray[i].mapping_position) >= position)
                                            position = parseFloat(responseDesign.myDiagram.model.linkDataArray[i].mapping_position) + 1;
                                    }
                                }
                            }
                            responseDesign.remove_s_data_code = s_data_code;
                            responseDesign.remove_s_identifier = s_identifier;
                            responseDesign.remove_s_resource_name = s_resource_name;
                            responseDesign.remove_s_field = fromPort;
                            responseDesign.remove_r_field = obj.parameter.data.name;
                        }
                        responseDesign.onResponseDesignLink(s_data_code,r_data_code,s_identifier,r_identifier,s_resource_name,r_resource_name,fromPort,toPort,'','',responseDesign.remove_s_data_code, responseDesign.remove_s_identifier, responseDesign.remove_s_resource_name, responseDesign.remove_s_field,responseDesign.remove_r_field,position);
                    },
                    "LinkDrawn":function (data,a) {
                        $("#now_remove").show();
                        $("#ajax_loader_remove").show();
                        $("#prompt_content").css('display','none');
                        // data.diagram.allowDelete=false;

                        // responseDesign.myDiagram.allowSelect=false;
                        var r_data_code = 'catalog.response';
                        var r_identifier = $('#buddle_id').val();
                        var r_resource_name = $('#catalog_id').val();
                        var s_data_code;
                        var s_identifier;
                        var s_resource_name;
                        var fromPort = data.subject.data.fromPort;
                        var toPort = data.subject.data.toPort;
                        var s_field_type;
                        var r_field_type;
                        // exchange.remove_from_port =data.subject.data.fromPort;
                        // exchange.remove_to_port = data.subject.data.toPort;
                        for (var i = 0;  i <= responseDesign.nodeData.length-1;i++ ) {
                            if (responseDesign.nodeData[i].key == data.subject.data.from){
                                s_data_code = responseDesign.nodeData[i].code;
                                s_identifier = responseDesign.nodeData[i].identifier;
                                s_resource_name = responseDesign.nodeData[i].resource_name;
                                break;
                            }
                        }

                        var count = 0;
                        for (var i = 0; i< responseDesign.myDiagram.model.linkDataArray.length-1;i++){
                            if ((responseDesign.myDiagram.model.linkDataArray[i].to == ("[" + r_identifier + "].[" + r_resource_name + "]"))
                                && responseDesign.myDiagram.model.linkDataArray[i].toPort == toPort){
                                if (parseFloat(responseDesign.myDiagram.model.linkDataArray[i].mapping_position) >= count)
                                    count =   parseFloat(responseDesign.myDiagram.model.linkDataArray[i].mapping_position) + 1;
                            }
                        }


                        var r_type_obj = responseDesign.myDiagram.findNodeForKey(data.subject.data.to).data;
                        for (var r = 0; r <= r_type_obj.fields.length - 1; r++) {
                            if (r_type_obj.fields[r].name == toPort) {
                                r_field_type = r_type_obj.fields[r].type != 'String' ? r_type_obj.fields[r].type : '12';
                                break;
                            }
                        }

                        var s_type_obj = responseDesign.myDiagram.findNodeForKey(data.subject.data.from).data;
                        for (var r = 0; r <= s_type_obj.fields.length - 1; r++) {
                            if (s_type_obj.fields[r].name == fromPort) {
                                s_field_type = s_type_obj.fields[r].type != 'String' ? s_type_obj.fields[r].type : '12';
                                break;
                            }
                        }

                        responseDesign.onResponseDesignLink(s_data_code,r_data_code,s_identifier,r_identifier,s_resource_name,r_resource_name,fromPort,toPort,s_field_type,r_field_type,'','','','','',count);
                    },
                    "SelectionDeleted":function (obj,a) {
                        obj.diagram.allowDelete=false;
                        $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove','code'), new Array('diginter',
                            'response.design.link.remove.process',responseDesign.link_code), new Array(), new Array(), 'text', null, null,
                            'removeLinkResponseDesignSettingSuccessCallback', 'normalErrorCallback');
                    },
                    "undoManager.isEnabled": true
                });
        responseDesign.fieldTemplate =
            responseDesign.g(go.Panel, "TableRow",  // this Panel is a row in the containing Table
                new go.Binding("portId", "name"),  // this Panel is a "port"
                {
                    background: "transparent",  // so this port's background can be picked by the mouse
                    fromSpot: go.Spot.Right,  // links only go from the right side to the left side
                    toSpot: go.Spot.Left,
                    // allow drawing links from or to this port:
                    fromLinkable: true, toLinkable: true
                },
                responseDesign.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 1, font: "bold 13px sans-serif",
                        alignment: go.Spot.Left,
                        // and disallow drawing links from or to this text:
                        fromLinkable: false, toLinkable: false },
                    new go.Binding("text", "name")),
                responseDesign.g(go.TextBlock,
                    { margin: new go.Margin(0, 5), column: 2, font: "13px sans-serif", alignment: go.Spot.Left },
                    new go.Binding("text", "info"))
            );
        // This template represents a whole "record".
        responseDesign.myDiagram.nodeTemplate =
            responseDesign.g(go.Node, "Auto",
                {"click":function (a,data) {
                    if (data.data.code == "catalog.response" && data.data.fields[0].location == 1) {
                        responseDesign.showResponseDesignRelevanceDataSetting(data.data.identifier, data.data.resource_name)
                    }else if (data.data.code == "catalog.response" && data.data.fields[0].location == 2) {
                        responseDesign.showResponseDesignDataSetting()
                    } else if (data.data.code != "catalog.response") {
                        responseDesign.showResponseDesignDataSetting(data.data.code)
                    }
                }},
                { movable: false,
                    copyable: false,
                    deletable: false },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // this rectangular shape surrounds the content of the node
                responseDesign.g(go.Shape,
                    { fill: "#EEEEEE" }),
                // the content consists of a header and a list of items
                responseDesign.g(go.Panel, "Vertical",
                    // this is the header for the whole node
                    responseDesign.g(go.Panel, "Auto",
                        { stretch: go.GraphObject.Horizontal },  // as wide as the whole node
                        responseDesign.g(go.Shape,
                            { fill: "#1570A6", stroke: null }),
                        responseDesign.g(go.TextBlock,
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
                    responseDesign.g(go.Panel, "Table",
                        {
                            padding: 2,
                            minSize: new go.Size(100, 10),
                            defaultStretch: go.GraphObject.Horizontal,
                            itemTemplate: responseDesign.fieldTemplate
                        },
                        new go.Binding("itemArray", "fields")
                    )  // end Table Panel of items
                )  // end Vertical Panel
            );  // end Node

        responseDesign.myDiagram.linkTemplate =
            responseDesign.g(go.Link,
                // {"selectionObject":function(a){
                //     console.log(a)
                // }},
                {"click":function (a,obj) {
                    responseDesign.link_code = obj.data.code;
                    responseDesign.showResponseDesignLinkSetting(obj.data.code);
                }},
                {
                    relinkableFrom: true, relinkableTo: true, // let user reconnect links
                    toShortLength: 4,  fromShortLength: 2
                },
                responseDesign.g(go.Shape, { strokeWidth: 1.5 }),
                responseDesign.g(go.Shape, { toArrow: "Standard", stroke: null })
            );

        responseDesign.myDiagram.positionComputation = computeIntegralPosition;
        function computeIntegralPosition(diagram, pt) {
//                实现右侧图像可以跟随滑轮滚动
            var key = "[" + $('#buddle_id').val() + "].[" + $('#catalog_id').val() + "]";
            if (responseDesign.myDiagram.findNodeForKey(key) != null)
                responseDesign.myDiagram.findNodeForKey(key).position = new go.Point(700,pt.y +100);
            return new go.Point(Math.floor(pt.x), Math.floor(pt.y));
        }

        responseDesign.onResponseDesignData();

        function  isValid(a,b,c,d) {
            var is_link = true;
            var is_repeat = true;
            if (a.data.fields[0].location == c.data.fields[0].location){
                $("#prompt_content_show").text("不允许同侧数据关联");
                $("#prompt_content").css('display','block');

            } else {
                var from_data = [],symbol_length = 0,s_field_length = 0,r_field_length = 0,is_exits = 0;
                for (var i = 0; i <= responseDesign.myDiagram.model.linkDataArray.length - 1; i++) {

                    if (responseDesign.myDiagram.model.linkDataArray[i].from == a.data.key
                        && responseDesign.myDiagram.model.linkDataArray[i].fromPort == b.data.name) {
                        is_repeat = false;
                        $("#prompt_content_show").text("映射字段不允许重复映射");
                        $("#prompt_content").css('display', 'block');
                        is_exits = 1;
                        break;
                    }

                    if ((responseDesign.myDiagram.model.linkDataArray[i].to == c.data.key)
                        && (responseDesign.myDiagram.model.linkDataArray[i].toPort == d.data.name)
                        && (responseDesign.myDiagram.model.linkDataArray[i].from == a.data.key)
                    ) {
                        is_repeat = false;
                        $("#prompt_content_show").text("映射字段不能被同一表重复选中");
                        $("#prompt_content").css('display', 'block');
                        is_exits = 1;
                        break;

                    }
                }

                if (is_exits == 0) {
                    for (var r = 0; r <= responseDesign.myDiagram.model.linkDataArray.length - 1; r++) {
                        if ((responseDesign.myDiagram.model.linkDataArray[r].to == c.data.key)
                            && (responseDesign.myDiagram.model.linkDataArray[r].toPort == d.data.name)) {
                            symbol_length += parseFloat(responseDesign.myDiagram.model.linkDataArray[r].prefix_symbol.length)
                                + parseFloat(responseDesign.myDiagram.model.linkDataArray[r].suffix_symbol.length);
                            var data = {
                                from: responseDesign.myDiagram.model.linkDataArray[r].from,
                                fromPort: responseDesign.myDiagram.model.linkDataArray[r].fromPort
                            };
                            from_data.push(data);
                        }
                    }

                    for (var h = 0; h < responseDesign.myDiagram.model.nodeDataArray.length; h++) {
                        for (var r = 0; r < from_data.length; r++) {
                            if (from_data[r].from == responseDesign.myDiagram.model.nodeDataArray[h].key) {
                                for (var l = 0; l < responseDesign.myDiagram.model.nodeDataArray[h].fields.length; l++) {
                                    if (from_data[r].fromPort == responseDesign.myDiagram.model.nodeDataArray[h].fields[l].name) {
                                        s_field_length += parseFloat(responseDesign.myDiagram.model.nodeDataArray[h].fields[l].length);
                                        break;
                                    }
                                }
                            }
                        }

                        if (responseDesign.myDiagram.model.nodeDataArray[h].key == a.data.key) {
                            for (var l = 0; l < responseDesign.myDiagram.model.nodeDataArray[h].fields.length; l++) {
                                if (b.data.name == responseDesign.myDiagram.model.nodeDataArray[h].fields[l].name) {
                                    s_field_length += parseFloat(responseDesign.myDiagram.model.nodeDataArray[h].fields[l].length);
                                    break;
                                }
                            }
                        }

                        if (responseDesign.myDiagram.model.nodeDataArray[h].key == c.data.key) {
                            for (var l = 0; l < responseDesign.myDiagram.model.nodeDataArray[h].fields.length; l++) {
                                if (d.data.name == responseDesign.myDiagram.model.nodeDataArray[h].fields[l].name) {
                                    r_field_length += parseFloat(responseDesign.myDiagram.model.nodeDataArray[h].fields[l].length);
                                    break;
                                }
                            }
                        }
                    }


                    var s_length = s_field_length + symbol_length;
                    var r_length = r_field_length;
                    if (s_length > r_length) {
                        is_link = false;
                        $("#prompt_content_show").text("数据只能映射到数据长度大于或等于自身的数据长度");
                        $("#prompt_content").css('display', 'block');
                    }
                }

            }
            // } else
            //     $("#prompt_content").css('display','none');

            return (a.data.fields[0].location != c.data.fields[0].location) && is_link && is_repeat;
        }
        // console.log()
        responseDesign.myDiagram.toolManager.linkingTool.linkValidation =isValid;

        responseDesign.myDiagram.toolManager.relinkingTool.linkValidation =isValid;
    },
    onResponseDesignData:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter',
            'response.design.search.view'), new Array('buddle_id','catalog_id'), new Array('buddle_id','catalog_id'), 'text', null, null,
            'showResponseDesignDataSettingSuccessCallback', 'normalErrorCallback');
    },
    onResponseDesignCatalogContentType:function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter',
            'response.design.catalog.setting.process'), new Array('buddle_id','catalog_id','content_type'), new Array('buddle_id','catalog_id','catalog_content_type'), 'text', null, null,
            null, 'normalErrorCallback');
    },
    onResponseDesignLink:function (s_data_code,r_data_code,s_identifier,r_identifier,s_resource_name,r_resource_name,s_field,r_field,s_field_type,r_field_type,remove_s_data_code,remove_s_identifier,remove_s_resource_name,remove_s_field,remove_r_field,mapping_position) {
            $.request(httpHeader, '', new Array('buddle.cludove',
                'catalog.cludove','s_data_code','r_data_code','s_identifier',
                'r_identifier','s_resource_name','r_resource_name','s_field','r_field','s_field_type','r_field_type',
                'remove_s_data_code','remove_s_identifier','remove_s_resource_name','remove_s_field','remove_r_field',
                'position'), new Array('diginter',
                'response.design.link.process',s_data_code,r_data_code,
                s_identifier,r_identifier,s_resource_name,r_resource_name,s_field,r_field,s_field_type,r_field_type,
                remove_s_data_code,remove_s_identifier,remove_s_resource_name,remove_s_field,remove_r_field,
                mapping_position.toString()), new Array('buddle_id','catalog_id'), new Array('buddle_id','catalog_id'), 'text', null, null,
                'onResponseDesignLinkSettingSuccessCallback', 'normalErrorCallback');
    },
    showResponseDesignLinkSetting:function (code) {
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=response.design.data.link.setting.view&code="
                + code + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                    ;
                    // hintMessage("显示目录数据设置界面成功。", false);


                });
    },
    showResponseDesignDataSetting:function (code,location) {
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=response.design.data.setting.view&code="
                + code + "&location=" + location
                + "&is_exchange=" + $("#is_exchange").val()
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else{
                        if ($("#data_catalog_type").val().length > 0){
                            // $('input:radio[name="data_type_select"]').attr('disabled','disabled');
                            $('#data_type_metadata').hide();
                            $('#data_type_metadata_lable').hide();
                            $('.data_type_metadata_br').hide();
                        }
                        if ($('#data_position').val() == '0') {
                            $('#data_position').attr('disabled','disabled');
                            $('#data_position').spinner({
                                max: 0,
                                min: 0,
                                step: 1
                            }); 
                        } else {
                            $('#data_position').spinner({
                                max: 100,
                                min: 1,
                                step: 1
                            });
                        }
                        

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

                    if ($("#data_type").val() == 'Hinge')
                        onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");

                    onDataConnectionIdChange();


                    $('#data_row_number').spinner({
                        max: 100,
                        min: 0,
                        step: 1
                    });


                    if ($('#is_exchange').val() == 'true'
                        && $('#data_position').val() == '0') {
                        $($('#data_operation option')[2]).hide();
                        $($('#data_operation option')[3]).hide();
                        $($('#data_operation option')[4]).hide();
                        $($('#data_operation option')[5]).hide();
                    }

                    showRemoveRepeatField();
                });
    },
    showResponseDesignRelevanceDataSetting:function (s_identifier,s_resource_name) {
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=response.design.data.relevance.setting.view&s_identifier="
                + s_identifier + "&s_resource_name=" + s_resource_name
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        onResponseDesignDataResourceRelevanceshow()
                    ;
                });
    },
    showResponseDesignCatalogSetting:function () {
        $("#catalog_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=response.design.catalog.select.view"
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        ;
                });
    },
    Drawing:function (responseText) {
        var obj = eval('(' + responseText + ')');
        var w=0;
        var data=[];
        var l=0;
        var height=[];
        var styleHeight=0;
        // $("#primary_prompt").hide();
        // primaryData = [];
        // primaryData.left = new Array();
        // primaryData.right = new Array();
        /*********取出模型设计表数据***********/
        for (var h = 0;h <=obj[0].length-1;h++ ){
            height[h]=0;
            responseDesign.loc[h]=new Array();
            responseDesign.loc[h][0]=new Array();
            responseDesign.loc[h][0]=w+" "+"0";
            for (var i = 0;i <= obj[0][h].length-1;i++) {
                if (obj[0][h][i].fields.length > 0) {
                    obj[0][h][i].loc = new Array();
                    obj[0][h][i].loc = responseDesign.loc[h][i];
                    data[l] = obj[0][h][i];

                    l++;
                    var key_height = Math.ceil(parseFloat(obj[0][h][i].key.length)/20) * 30 + 50;
                    responseDesign.loc[h][i + 1] = new Array();
                    height[h] += ((obj[0][h][i].fields.length) * 18 + key_height);
                    responseDesign.loc[h][i + 1] = w + " " + height[h];
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
            }
        }

        responseDesign.nodeData = data;

        var linkData = obj[1];
        var r_height;
        if (obj[0][1] != '')
            r_height = ((obj[0][1][0].fields.length) * 18 + 80);

        if (r_height > 700)
            styleHeight = r_height + 100;
        else
            styleHeight = 800;

        $("#myDiagramDiv").css('height',styleHeight + 'px');
        responseDesign.myDiagram.model =
            responseDesign.g(go.GraphLinksModel,
                {
                    linkFromPortIdProperty: "fromPort",
                    linkToPortIdProperty: "toPort",
                    nodeDataArray: data,
                    linkDataArray:linkData
                });
    }
}

$.extend({
    showResponseDesignDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        // console.log(responseText);
        responseDesign.Drawing(responseText);
    }
});

$.extend({
    onResponseDesignLinkSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        var obj = eval('(' + responseText + ')');
        // console.log(obj);
        // console.log(model.myDiagram.model.linkDataArray);
        for (var i = 0;i <= responseDesign.myDiagram.model.linkDataArray.length-1;i++){
            if (responseDesign.myDiagram.model.linkDataArray[i].from == obj.from && responseDesign.myDiagram.model.linkDataArray[i].to == obj.to
                && responseDesign.myDiagram.model.linkDataArray[i].fromPort == obj.fromPort && responseDesign.myDiagram.model.linkDataArray[i].toPort == obj.toPort
            ){
                responseDesign.myDiagram.model.linkDataArray[i].mapping_position = obj.mapping_position;
                responseDesign.myDiagram.model.linkDataArray[i].code = obj.code;
                responseDesign.myDiagram.model.linkDataArray[i].prefix_symbol = obj.prefix_symbol;
                responseDesign.myDiagram.model.linkDataArray[i].suffix_symbol = obj.suffix_symbol;
                responseDesign.link_code = obj.code;
                responseDesign.showResponseDesignLinkSetting(obj.code)

            }
        }
        // responseDesign.myDiagram.allowDelete=true;
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});

$.extend({
    removeLinkResponseDesignSettingSuccessCallback: function (responseText) {
        // 刷新页面
        responseDesign.myDiagram.allowDelete=true;
    }
});

//修改目录数据时提示删除数据映射
function confirmModifyDataSetting() {
    var connection_id,resource_name,resource_buddle;
    if ($('#data_type').val() == 'DB') {
        connection_id = $('#data_connection_id').val();
        resource_name = $('#data_resource_name').val();
    } else if ($('#data_type').val() == 'WS' || $('#data_type').val() == 'Class') {
        connection_id = $('#class_connection_id').val();
        resource_name = '';
    } else if ($('#data_type').val() == 'Hinge') {
        connection_id = $('#data_connection_id').val();
        resource_name = $('#data_resource_name').val();
        resource_buddle = $('#data_resource_buddle').val();
    }
    validateResponseResource($('#buddle_id').val(),$('#catalog_id').val(),connection_id,resource_name,resource_buddle,$('#data_type').val(),$('#code_data').val());

}

//验证目录数据条件库表是否添加过
function validateResponseResource(buddle_id,catalog_id,connection_id,resource_name,resource_buddle,type,data_code) {
    $(window).load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=data.resource.validate.process&connection_id="
        + connection_id + "&resource_name=" + resource_name
        + "&data_code=" + data_code
        + "&buddle_id=" + buddle_id
        + "&catalog_id=" + catalog_id
        + "&data_type=" + type
        + "&resource_buddle=" + resource_buddle
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                console.log(data);
                hintError("查询目录标识失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if (data == 'yes') {
                    if ($('#code_data').val().length > 0) {
                        var is_confirm = false;
                        if ($('#data_type_init').val() != $('#data_type').val()) {
                            is_confirm = true;
                        } else {
                            if ($('#data_type').val() == 'DB') {
                                if ($('#data_connection_id').val() != $('#remove_connection_id_by_db').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_name').val() != $('#remove_resource_name_by_db').val()) {
                                    is_confirm = true;
                                } else if ($('#data_operation').val() != $('#remove_operation_by_db').val()) {
                                    is_confirm = true;
                                }
                            } else if ($('#data_type').val() == 'Hinge') {
                                if ($('#data_connection_id').val() != $('#remove_connection_id_by_db').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_buddle').val() != $('#resource_buddle_by_hinge').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_name').val() != $('#resource_name_by_hinge').val()) {
                                    is_confirm = true
                                } else if ($('#data_operation').val() != $('#remove_operation_by_db').val()) {
                                    is_confirm = true;
                                }
                            } else if ($('#data_type').val() == 'Class' || $('#data_type').val() == 'WS') {
                                if ($('#class_connection_id').val() != $('#remove_connection_id_by_db').val()) {
                                    is_confirm = true;
                                } else if ($('#data_connection_id').val() != $('#remove_resource_name_by_db').val()) {
                                    is_confirm = true
                                } else if ($('#data_operation').val() != $('#remove_operation_by_db').val()) {
                                    is_confirm = true;
                                }
                            }
                        }
                        if (is_confirm == true) {
                            zdconfirm('提示', '提交后，相关的映射关系会被清除!',
                                function (confirm) {
                                    if (confirm) {
                                        processResponseDesignDataSetting();
                                    }
                                }
                            );
                            $('#data_is_mapping').val('true');
                        } else
                            processResponseDesignDataSetting();
                    } else {
                        processResponseDesignDataSetting();
                    }
                } else
                    zdalert('提示','不允许添加重复的库表定义');
            }
        })
}


function processResponseDesignDataSetting() {
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

    var is_length = false;
    var remove_repeat_field = '';
    if ($('#data_type').val() == 'DB' && $('#operation_by_db').val() == 'build') {
        var text = removeRepeatField();
        if (text === false) {
            zdalert('提示', '去重字段长度不能大于2048');
            is_length = true;
        } else
            remove_repeat_field = text;
    }
    
    if (($("#data_catalog_type").val() != '') && ($("#data_count_right").val() >= 1 ) && ($('#code_data').val().length == 0) &&($('#data_operation').val() == 'build')){
        zdconfirm("提示","选择功能为迁移或同步时，保存操作必须唯一!");
    }else if (is_length == false) {

        if ($('#validate_data_setting').validationEngine('validate')) {
            if ($("#data_operation_migrate_container").css('display') == 'none'){
                $('#data_exchange_migr_field').val('');
                $('#data_exchange_sync_field').val('');
                $('#data_exchange_sync_time_field').val('');
                $('#data_exchange_flag_field').val('');
                $('#data_exchange_flag_change').val('');
            }
            $("#now_remove").show();
            $("#ajax_loader_remove").show();
            if ($('#code_data').val().length > 0) {
                if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb','remove_repeat_field'),
                        new Array('diginter', 'response.design.data.setting.process',
                            'false', 'false','false',remove_repeat_field), new Array('code',
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify','data_is_mapping','data_main_code','is_exchange'), new Array('code_data',
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit',
                            'data_classify','data_is_mapping','data_main_code','is_exchange'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb','remove_repeat_field'),
                            new Array('diginter', 'response.design.data.setting.process',
                                'false', 'false','false',remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id',
                                'remove_resource_name', 'location', 'remove_operation','code_data_migr'
                                ,'data_is_mapping','data_main_code','is_exchange'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'remove_connection_id_by_db', 'remove_resource_name_by_db',
                                'data_location', 'remove_operation_by_db','code_data_migr',
                                'data_is_mapping','data_main_code','is_exchange'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');

                    else if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search')){
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb','remove_repeat_field'),
                            new Array('diginter', 'response.design.data.setting.process',
                                'false', 'false','false',remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id',
                                'remove_resource_name', 'location', 'remove_operation','code_data_migr',
                                'r_identifier', 'r_resource_name','r_field','s_field',
                                'resource_relevance_code','data_is_mapping','data_main_code','is_exchange'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'remove_connection_id_by_db', 'remove_resource_name_by_db',
                                'data_location', 'remove_operation_by_db','code_data_migr',
                                'data_r_identifier','data_r_resource_name','data_r_field',
                                'data_s_field','resource_relevance_code','data_is_mapping',
                                'data_main_code','is_exchange'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');}
                    else
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb','remove_repeat_field'),
                            new Array('diginter', 'response.design.data.setting.process',
                                'false', 'false','true',remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'remove_connection_id', 'remove_resource_name', 'location',
                                'remove_operation', 'flag_change', 'flag_reset',
                                'code_data_migr','data_is_mapping','data_main_code','is_exchange'), new Array('code_data',
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
                                'data_exchange_flag_change', 'data_exchange_flag_reset',
                                'code_data_migr','data_is_mapping','data_main_code','is_exchange'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
            } else {
                if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend','remove_repeat_field'),
                        new Array('diginter', 'response.design.data.setting.process',
                            'false', 'false',remove_repeat_field), new Array(
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify','is_exchange'), new Array(
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit', 'data_classify','is_exchange'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','remove_repeat_field'),
                            new Array('diginter', 'response.design.data.setting.process',
                                'false', 'false',remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit','code_data_migr','is_exchange'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit','code_data_migr','is_exchange'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else if ($("#data_catalog_type").val() .length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search')){
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','remove_repeat_field'),
                            new Array('diginter', 'response.design.data.setting.process',
                                'false', 'false',remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit','code_data_migr','r_identifier',
                                'r_resource_name','r_field','s_field','is_exchange'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit','code_data_migr',
                                'data_r_identifier','data_r_resource_name','data_r_field','data_s_field','is_exchange'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    }
                    else
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend','is_synced_dsb','remove_repeat_field'),
                            new Array('diginter', 'response.design.data.setting.process',
                                'false', 'false','true',remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit',
                                'flag_field', 'flag_change', 'flag_reset','code_data_migr','is_exchange'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation_migr', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression',
                                'data_is_permit', 'data_exchange_flag_field', 'data_exchange_flag_change',
                                'data_exchange_flag_reset','code_data_migr','is_exchange'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
            }
        }
    }
}

$.extend({
    dataModelSettingSuccessCallback: function (responseText) {
        // flag = 1;
        // 刷新页面
        // console.log(responseText);
        var dataRefresh = localStorage.getItem("dataRefresh");
        if (dataRefresh == null || dataRefresh > 100) {
            localStorage.setItem("dataRefresh", 1);
        } else {
            localStorage.setItem("dataRefresh", parseInt(dataRefresh) + 1);
        }
        responseDesign.onResponseDesignData();
        var obj = eval('(' + responseText + ')');
        responseDesign.showResponseDesignDataSetting(obj.data_code,obj.location);
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});


function processResponseDesignDataRemove() {
    if ($('#code_data').val().length > 0) {
        if ($('#code_data').val() == $('#data_main_code').val()) {
            zdconfirm('提示', '删除该条主数据，会把该功能目录下的所有的目录数据都删除，确定？',
                function (confirm) {
                    if (confirm) {
                        $.request(httpHeader, '',new Array('buddle.cludove',
                            'catalog.cludove'), new Array('diginter', 'response.design.data.remove.process'),
                            new Array('code','data_code_migr','data_main_code','buddle_id','catalog_id','s_identifier','s_resource_name','position','is_exchange'),
                            new Array('code_data','code_data_migr','data_main_code','buddle_id','catalog_id','data_connection_id','data_resource_name','data_position','is_exchange'),
                            'text', null, null,
                            'responseDesignDataRemoveSuccessCallback', 'normalErrorCallback'
                        )
                    }
                }
            );
        } else {
            $.request(httpHeader, '',new Array('buddle.cludove',
                'catalog.cludove'), new Array('diginter', 'response.design.data.remove.process'),
                new Array('code','data_code_migr','data_main_code','buddle_id','catalog_id','s_identifier','s_resource_name','position','is_exchange'),
                new Array('code_data','code_data_migr','data_main_code','buddle_id','catalog_id','data_connection_id','data_resource_name','data_position','is_exchange'),
                'text', null, null,
                'responseDesignDataRemoveSuccessCallback', 'normalErrorCallback'
            )
        }
    }
}

$.extend({
    responseDesignDataRemoveSuccessCallback: function (responseText) {

        responseDesign.onResponseDesignData();
        responseDesign.showResponseDesignDataSetting();
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});
function onResponseDesignDataResourceRelevanceshow() {
    // 为查询时本表字段
    $("#data_s_association_field")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=data.resource.relevance.metadata.view&"
            + "&connection_id="
            + $("#s_identifier").val()
            + "&resource_name="
            + $("#s_resource_name").val()
            + "&r_resource_name="
            + $("#r_resource_name").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示库表关联失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    $("#data_s_association_field").show();
                ;
                // hintMessage("显示数据交换设置界面成功。", false);
            });
    // 选择关联的字段
    $("#data_r_association_field")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=data.resource.relevance.view&"
            + "&connection_id="
            + $("#r_identifier").val()
            + "&resource_name="
            + $("#r_resource_name").val()
            + "&s_resource_name="
            + $("#s_resource_name").val()
            + "&data_r_type="
            + $("#r_type").val()
            + "&buddle_id="
            + $("#buddle_id").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    console.log(data);
                    hintError("显示库表关联失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#data_r_association_field").show();
                    $("#data_r_identifier_view").val($('#r_identifier').val());
                    $('#r_resource_name_view').val($('#r_resource_name').val());
                }
                ;
                // hintMessage("显示数据交换设置界面成功。", false);
            });
}

function processResponseDesignDataResourceRelevance() {
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove'), new Array('diginter',
        'data.resource.relevance.process'),
        new Array('buddle_id','catalog_id','connection_id',
            'resource_name','s_field','r_identifier','r_resource_name','r_field','resource_relevance_code'),
        new Array('buddle_id','catalog_id','s_identifier',
            's_resource_name','data_s_field','r_identifier','r_resource_name','data_r_field','resource_relevance_code'), 'text', null, null,
        'processResponseDesignDataResourceRelevanceSuccessCallback', 'normalErrorCallback');
}

$.extend({
    processResponseDesignDataResourceRelevanceSuccessCallback: function (responseText) {
        zdalert('提示','修改库表关联成功！');
        onResponseDesignDataResourceRelevanceshow();
    }
});


//显示数据元数据字段数据设置
function onResponseDesignDataMetadatashow() {
$("#data_metadata_setting")
    .load(
        httpsHeader
        + "s?buddle.cludove=diginter&catalog.cludove=response.design.metadata.field.setting.view&"
        + "&buddle_id="
        + $("#buddle_id").val()
        + "&catalog_id="
        + $("#catalog_id").val()
        + "&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // hintError("显示库表关联失败！", false, "javascript:void(0)");
                // hintException(data, false, "javascript:void(0)");
            } else
            ;
            // hintMessage("显示数据交换设置界面成功。", false);
        });
}

//显示数据元数据字段数据设置
function showResponseDesignDataMetadataSetting(name) {
    $("#metadata_container")
        .load(
            httpsHeader
            + "s?buddle.cludove=diginter&catalog.cludove=response.design.metadata.setting.view&"
            + "&buddle_id="
            + $("#buddle_id").val()
            + "&catalog_id="
            + $("#catalog_id").val()
            + "&name="
            + name
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // hintError("显示库表关联失败！", false, "javascript:void(0)");
                    // hintException(data, false, "javascript:void(0)");
                } else {
                    if ($('#select_method').val() == 'text') {
                        $('#text_container').show();
                        $('#class_container').hide();
                    } else {
                        $('#text_container').hide();
                        $('#class_container').show();
                    }
                    $('#metadata_container').show();
                    $('#data_metadata_setting').css('height','300px');
                    $('#data_setting').css('top','425px')
                }
                    ;
                // hintMessage("显示数据交换设置界面成功。", false);
            });
}


function onResponseDesignDataMetadataSetting() {
    if ($('#validate_metadata_response_setting').validationEngine('validate')) {
        if ($('#select_method').val() == 'text') {
            $('#metadata_expression').val('');
            $('#metadata_class').val('');
        } else {
            $('#metadata_text_handle').val('');
            $('#metadata_text_converter').val('');
        }
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter',
            'response.design.metadata.setting.process'),
            new Array('buddle_id','catalog_id','name',
                'expression','class','text_handle','text_converter'),
            new Array('buddle_id','catalog_id','metadata_name',
                'metadata_expression','metadata_class','metadata_text_handle','metadata_text_converter'), 'text', null, null,
            'onResponseDesignDataMetadataSettingSuccessCallback', 'onResponseDesignDataMetadataSettingErrorCallback');
    }
}

$.extend({
    onResponseDesignDataMetadataSettingSuccessCallback: function (responseText) {
        zdalert('提示','提交成功！');
    },
    onResponseDesignDataMetadataSettingErrorCallback: function (responseText) {
        zdalert('提示','提交失败！');
    }
});

function clearResponseDesignDataMetadataSetting() {
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove', 'expression',
        'class','text_handle','text_converter'), new Array('diginter',
        'response.design.metadata.setting.process','','','',''),
        new Array('buddle_id','catalog_id','name'),
        new Array('buddle_id','catalog_id','metadata_name'), 'text', null, null,
        'clearResponseDesignDataMetadataSettingSuccessCallback',
        'clearResponseDesignDataMetadataSettingErrorCallback');

}
$.extend({
    clearResponseDesignDataMetadataSettingSuccessCallback: function (responseText) {
        zdalert('提示','清除成功！');
        $('#metadata_expression').val('');
        $('#metadata_class').val('');
        $('#metadata_text_handle').val('');
        $('#metadata_text_converter').val('');
    },
    clearResponseDesignDataMetadataSettingErrorCallback: function (responseText) {
        zdalert('提示','清除失败！');
    }
});

//数据名称改变
function onDataMetadataChange(that) {
    if (that.value != '') {
        showResponseDesignDataMetadataSetting(that.value)
    } else {
        $('#metadata_container').hide();
        $('#data_metadata_setting').css('height', '60px');
        $('#data_setting').css('top', '200px');
    }
}

//调换处理顺序

function onChangePosition(that) {
    var elem = $(that).parent();
    var data_position = elem.attr('data-position'),
        position =parseFloat(elem.attr('position')),
        code = elem.attr('data-code'),
        modify_position,modify_code,location;
    if ($(that).attr('position-type') == 'up'){
        modify_position = elem.prev().attr('data-position');
        modify_code = elem.prev().attr('data-code');
        if (position == '2') {
            $('#' + code + "_data_mapping_operation").parent().hide();
            $('#' + modify_code + "_data_mapping_operation").parent().show();
        }
        var  html =elem.html();
        html = `<div class="div_list" data-code ="${code}" position="${position - 1}" data-position ="${modify_position}">${html}</div>`;
        var prev =  elem.prev();
        elem.remove();
        prev.before(html);
        $('#' + code + "_data_mapping_operation").val('string_add');
        $('#' + modify_code + "_data_mapping_operation").val('string_add');
        $('div[data-code =' + modify_code +']').attr('data-position',data_position);
        $('div[data-code =' + modify_code +']').attr('position',position);

        if ($('#position_count').val() == 2){
            $('div[data-code =' + modify_code +'] a.position-up').show();
            $('div[data-code =' + modify_code +'] a.position-down').hide();
            $('div[data-code =' + code +'] a.position-up').hide();
            $('div[data-code =' + code +'] a.position-down').show();
        }else {
            if (position == 2){
                $('div[data-code =' + modify_code +'] a.position-up').show();
                $('div[data-code =' + modify_code +'] a.position-down').show();
                $('div[data-code =' + code +'] a.position-up').hide();
                $('div[data-code =' + code +'] a.position-down').show();
            }else if (position == $('#position_count').val()) {
                $('div[data-code =' + modify_code +'] a.position-up').show();
                $('div[data-code =' + modify_code +'] a.position-down').hide();
                $('div[data-code =' + code +'] a.position-up').show();
                $('div[data-code =' + code +'] a.position-down').show();
            } else {
                $('div[data-code =' + modify_code +'] a.position-up').show();
                $('div[data-code =' + modify_code +'] a.position-down').show();
                $('div[data-code =' + code +'] a.position-up').show();
                $('div[data-code =' + code +'] a.position-down').show();
            }
        }

        // console.log(prev.parent().children("div.list:last-child"))
        // location = elem.prev().offset().top - elem.offset().top;
        // elem.css('top',parseFloat(elem.css('top')) + location);
        // elem.prev().css('top',parseFloat(elem.prev().css('top')) - location);
    } else {
        modify_position = elem.next().attr('data-position');
        modify_code = elem.next().attr('data-code');
        if (position == '1') {
            $('#' + code + "_data_mapping_operation").parent().show();
            $('#' + modify_code + "_data_mapping_operation").parent().hide();
        }

        var  html =elem.html();
        html = `<div class="div_list" data-code ="${code}" data-position ="${modify_position}" position="${position + 1}">${html}</div>`;
        var next = elem.next();
        elem.remove();
        next.after(html);
        $('#' + code + "_data_mapping_operation").val('string_add');
        $('#' + modify_code + "_data_mapping_operation").val('string_add');
        $('div[data-code =' + modify_code +']').attr('data-position',data_position);
        $('div[data-code =' + modify_code +']').attr('position',position);

        if ($('#position_count').val() == 2){
            $('div[data-code =' + modify_code +'] a.position-up').hide();
            $('div[data-code =' + modify_code +'] a.position-down').show();
            $('div[data-code =' + code +'] a.position-up').show();
            $('div[data-code =' + code +'] a.position-down').hide();
        }else {
            if (position == 1){
                $('div[data-code =' + modify_code +'] a.position-up').hide();
                $('div[data-code =' + modify_code +'] a.position-down').show();
                $('div[data-code =' + code +'] a.position-up').show();
                $('div[data-code =' + code +'] a.position-down').show();
            }else if (position + 1 == $('#position_count').val()) {
                $('div[data-code =' + modify_code +'] a.position-up').show();
                $('div[data-code =' + modify_code +'] a.position-down').show();
                $('div[data-code =' + code +'] a.position-up').show();
                $('div[data-code =' + code +'] a.position-down').hide();
            } else {
                $('div[data-code =' + modify_code +'] a.position-up').show();
                $('div[data-code =' + modify_code +'] a.position-down').show();
                $('div[data-code =' + code +'] a.position-up').show();
                $('div[data-code =' + code +'] a.position-down').show();
            }
        }
        // location = elem.next().offset().top - elem.offset().top;
        // elem.css('top',parseFloat(elem.css('top')) + location);
        // elem.next().css('top',parseFloat(elem.next().css('top')) - location);
    }

    processLinkPosition(code,modify_code,data_position,modify_position)
}

function processLinkPosition(code,modify_code,position,modify_position) {
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove', 'code','modify_code',
        'position', 'modify_position'), new Array('diginter',
        'model.link.position.setting.process', code, modify_code,position ,modify_position),
        new Array(), new Array(), 'text', null, null,
        'processLinkPositionSuccessCallback', 'normalErrorCallback');
}

$.extend({
    processLinkPositionSuccessCallback: function (responseText) {
    }
});

function processLinkDataSetting(code) {
    // if ($('#validate_data_link_setting').validationEngine('validate')) {
    var toPort,to,from_data = [],symbol_length = 0,s_field_length = 0,r_field_length = 0,from,fromPort;
    for (var i = 0; i< responseDesign.myDiagram.model.linkDataArray.length ;i++) {
        if (responseDesign.myDiagram.model.linkDataArray[i].code == code) {
            toPort = responseDesign.myDiagram.model.linkDataArray[i].toPort;
            to = responseDesign.myDiagram.model.linkDataArray[i].to;
            fromPort = responseDesign.myDiagram.model.linkDataArray[i].fromPort;
            from = responseDesign.myDiagram.model.linkDataArray[i].from;
            break;
        }
    }

    for (var i = 0; i< responseDesign.myDiagram.model.linkDataArray.length ;i++ ) {
        if (responseDesign.myDiagram.model.linkDataArray[i].toPort == toPort
            && responseDesign.myDiagram.model.linkDataArray[i].to == to) {
            var data = {from:responseDesign.myDiagram.model.linkDataArray[i].from,fromPort:responseDesign.myDiagram.model.linkDataArray[i].fromPort};
            from_data.push(data);
            if (responseDesign.myDiagram.model.linkDataArray[i].code != code) {
                symbol_length+= parseFloat(responseDesign.myDiagram.model.linkDataArray[i].prefix_symbol.length) + parseFloat(responseDesign.myDiagram.model.linkDataArray[i].suffix_symbol.length);
            }
        }
    }

    for (var i = 0; i< responseDesign.myDiagram.model.nodeDataArray.length ;i++ ) {
        for (var r = 0 ; r < from_data.length ; r++) {
            if (from_data[r].from == responseDesign.myDiagram.model.nodeDataArray[i].key) {
                for (var l = 0;l < responseDesign.myDiagram.model.nodeDataArray[i].fields.length;l++){
                    if  (from_data[r].fromPort == responseDesign.myDiagram.model.nodeDataArray[i].fields[l].name) {
                        s_field_length+= parseFloat(responseDesign.myDiagram.model.nodeDataArray[i].fields[l].length);
                        break;
                    }
                }
            }
        }

        if (responseDesign.myDiagram.model.nodeDataArray[i].key == to) {
            for (var l = 0;l < responseDesign.myDiagram.model.nodeDataArray[i].fields.length;l++){
                if (toPort == responseDesign.myDiagram.model.nodeDataArray[i].fields[l].name) {
                    r_field_length+= parseFloat(responseDesign.myDiagram.model.nodeDataArray[i].fields[l].length);
                    break;
                }
            }
        }
    }

    var s_length = s_field_length + symbol_length + parseFloat($('#'+code + '_data_mapping_prefix_symbol').val().length) + parseFloat($('#'+code + '_data_mapping_suffix_symbol').val().length);
    var r_length = r_field_length;

    if (s_length > r_length) {
        zdalert('提示','前置符号或后置符号的字符长度过长，请修改！');
    } else {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove', 'code'), new Array('diginter', 'response.design.data.link.setting.process', code),
            new Array('prefix_symbol', 'suffix_symbol', 'operation'),
            new Array('' + code + '_data_mapping_prefix_symbol', '' + code + '_data_mapping_suffix_symbol', '' + code + '_data_mapping_operation'),
            'text', null, null,
            'processLinkDataSettingSuccessCallback', 'normalErrorCallback'
        )
    }
    // }
};

$.extend({
    processLinkDataSettingSuccessCallback: function (responseText) {
        var obj = eval('(' + responseText + ')');
        // console.log(obj);
        // console.log(model.myDiagram.model.linkDataArray);
        for (var i = 0;i <= responseDesign.myDiagram.model.linkDataArray.length-1;i++){
            if (responseDesign.myDiagram.model.linkDataArray[i].code == obj.code){
                responseDesign.myDiagram.model.linkDataArray[i].prefix_symbol = obj.prefix_symbol;
                responseDesign.myDiagram.model.linkDataArray[i].suffix_symbol = obj.suffix_symbol;

            }
        }
        
        responseDesign.showResponseDesignLinkSetting(obj.code);
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});