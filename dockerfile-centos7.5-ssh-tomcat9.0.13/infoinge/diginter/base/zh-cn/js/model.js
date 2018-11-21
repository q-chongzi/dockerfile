var model = {
    myDiagram: null,
    fieldTemplate: null,
    g: null,
    nodeData: null,
    loc: [],
    rightKey: null,
    remove_r_data_code: null,
    remove_r_identifier: null,
    remove_r_resource_name: null,
    remove_r_field: null,
    remove_s_data_code: null,
    remove_s_identifier: null,
    remove_s_resource_name: null,
    remove_s_field: null,
    validate_s_data_code: null,
    link_code: null,
    primary: [],
    init: function () {
        this.showModelDataSetting('');
        this.initDraw();
    },
    initDraw: function () {
        model.g = go.GraphObject.make;  // for conciseness in defining templates
        model.myDiagram =
            model.g(go.Diagram, "myDiagramDiv",
                {
                    initialContentAlignment: go.Spot.Center,
                    validCycle: go.Diagram.CycleNotDirected,  // don't allow loops
                    "LinkRelinked": function (obj) {
                        $("#now_remove").show();
                        $("#ajax_loader_remove").show();
                        $("#prompt_content").css('display', 'none');
                        if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '24%');
                        else
                            $("#data_setting>div").css('top', '30%');
                        var r_data_code;
                        var r_identifier;
                        var r_resource_name;
                        var s_data_code;
                        var s_identifier;
                        var s_resource_name;
                        var fromPort = obj.subject.data.fromPort;
                        var toPort = obj.subject.data.toPort;
                        var s_field_type;
                        var r_field_type;
                        for (var i = 0; i <= model.nodeData.length - 1; i++) {
                            if (model.nodeData[i].key == obj.subject.data.to) {
                                r_data_code = model.nodeData[i].code;
                                r_identifier = model.nodeData[i].identifier;
                                r_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        for (var i = 0; i <= model.nodeData.length - 1; i++) {
                            if (model.nodeData[i].key == obj.subject.data.from) {
                                s_data_code = model.nodeData[i].code;
                                s_identifier = model.nodeData[i].identifier;
                                s_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        if (obj.parameter.data.location == 1) {
                            model.remove_s_field = obj.parameter.data.name;
                            for (var i = 0; i <= model.nodeData.length - 1; i++) {
                                if (model.nodeData[i].code == obj.parameter.data.data_code) {
                                    model.remove_s_data_code = model.nodeData[i].code;
                                    model.remove_s_identifier = model.nodeData[i].identifier;
                                    model.remove_s_resource_name = model.nodeData[i].resource_name;
                                    break;
                                }
                            }
                        } else if (obj.parameter.data.location == 2) {
                            model.remove_r_field = obj.parameter.data.name;
                            for (var i = 0; i <= model.nodeData.length - 1; i++) {
                                if (model.nodeData[i].code == obj.parameter.data.data_code) {
                                    model.remove_r_data_code = model.nodeData[i].code;
                                    model.remove_r_identifier = model.nodeData[i].identifier;
                                    model.remove_r_resource_name = model.nodeData[i].resource_name;
                                    break;
                                }
                            }
                        }
                        var r_type_obj = model.myDiagram.findNodeForKey(data.subject.data.to).data;
                        for (var r = 0; r <= r_type_obj.fields.length - 1; r++) {
                            if (r_type_obj.fields[r].name == toPort) {
                                r_field_type = r_type_obj.fields[r].type != 'String' ? r_type_obj.fields[r].type : '12';
                                break;
                            }
                        }

                        var s_type_obj = model.myDiagram.findNodeForKey(data.subject.data.from).data;
                        for (var r = 0; r <= s_type_obj.fields.length - 1; r++) {
                            if (s_type_obj.fields[r].name == fromPort) {
                                s_field_type = s_type_obj.fields[r].type != 'String' ? s_type_obj.fields[r].type : '12';
                                break;
                            }
                        }
                        model.onModelLink(s_data_code, r_data_code, s_identifier, r_identifier, s_resource_name, r_resource_name, fromPort, toPort, s_field_type, r_field_type, model.remove_s_data_code, model.remove_s_identifier, model.remove_s_resource_name, model.remove_s_field, model.remove_r_data_code, model.remove_r_identifier, model.remove_r_resource_name, model.remove_r_field, obj.subject.data.mapping_position);
                        model.remove_r_data_code = r_data_code;
                        model.remove_r_identifier = r_identifier;
                        model.remove_r_resource_name = r_resource_name;
                        model.remove_r_field = toPort;
                        model.remove_s_data_code = s_data_code;
                        model.remove_s_identifier = s_identifier;
                        model.remove_s_resource_name = s_resource_name;
                    },
                    "LinkDrawn": function (data, a) {
                        $("#now_remove").show();
                        $("#ajax_loader_remove").show();
                        // data.diagram.allowDelete = false;
                        $("#prompt_content").css('display', 'none');
                        if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '24%');
                        else
                            $("#data_setting>div").css('top', '30%');
                        var r_data_code;
                        var r_identifier;
                        var r_resource_name;
                        var s_data_code;
                        var s_identifier;
                        var s_resource_name;
                        var fromPort = data.subject.data.fromPort;
                        var toPort = data.subject.data.toPort;
                        var s_field_type;
                        var r_field_type;
                        // exchange.remove_from_port =data.subject.data.fromPort;
                        // exchange.remove_to_port = data.subject.data.toPort;
                        for (var i = 0; i <= model.nodeData.length - 1; i++) {
                            if (model.nodeData[i].key == data.subject.data.to) {
                                r_data_code = model.nodeData[i].code;
                                r_identifier = model.nodeData[i].identifier;
                                r_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        for (var i = 0; i <= model.nodeData.length - 1; i++) {
                            if (model.nodeData[i].key == data.subject.data.from) {
                                s_data_code = model.nodeData[i].code;
                                s_identifier = model.nodeData[i].identifier;
                                s_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        var r_type_obj = model.myDiagram.findNodeForKey(data.subject.data.to).data;
                        for (var r = 0; r <= r_type_obj.fields.length - 1; r++) {
                            if (r_type_obj.fields[r].name == toPort) {
                                r_field_type = r_type_obj.fields[r].type != 'String' ? r_type_obj.fields[r].type : '12';
                                break;
                            }
                        }

                        var s_type_obj = model.myDiagram.findNodeForKey(data.subject.data.from).data;
                        for (var r = 0; r <= s_type_obj.fields.length - 1; r++) {
                            if (s_type_obj.fields[r].name == fromPort) {
                                s_field_type = s_type_obj.fields[r].type != 'String' ? s_type_obj.fields[r].type : '12';
                                break;
                            }
                        }
                        var count = 0;
                        for (var i = 0; i < model.myDiagram.model.linkDataArray.length - 1; i++) {
                            if ((model.myDiagram.model.linkDataArray[i].to == (r_resource_name + "." + r_data_code))
                                && model.myDiagram.model.linkDataArray[i].toPort == toPort) {
                                if (parseFloat(model.myDiagram.model.linkDataArray[i].mapping_position) >= count)
                                    count = parseFloat(model.myDiagram.model.linkDataArray[i].mapping_position) + 1;
                            }
                        }
                        model.onModelLink(s_data_code, r_data_code, s_identifier, r_identifier, s_resource_name, r_resource_name, fromPort, toPort, s_field_type, r_field_type, '', '', '', '', '', '', '', '', count);
                        model.remove_r_data_code = r_data_code;
                        model.remove_r_identifier = r_identifier;
                        model.remove_r_resource_name = r_resource_name;
                        model.remove_r_field = toPort;
                        model.remove_s_data_code = s_data_code;
                        model.remove_s_identifier = s_identifier;
                        model.remove_s_resource_name = s_resource_name;
                        model.remove_s_field = fromPort;
                    },
                    "SelectionDeleting": function (obj) {
                        if ((model.primary.left[0].name == model.remove_s_field) && (model.primary.left[0].data_code == model.remove_s_data_code)) {
                            obj.diagram.allowDelete = false;
                            zdconfirm("提示", "功能数据为迁移或同步时不允许删除主键之间的映射关系");
                        }
                    },
                    "SelectionDeleted": function (obj, a) {
                        //设置允许删除
                        // var code = obj.subject.Ea.value.data.code;
                        $("#prompt_content").css('display', 'none');
                        $.request(httpHeader, '', new Array('buddle.cludove',
                            'catalog.cludove', 'code'), new Array('diginter',
                            'model.data.link.remove.process', model.link_code), new Array(), new Array(), 'text', null, null,
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
                    {
                        margin: new go.Margin(0, 5), column: 1, font: "bold 13px sans-serif",
                        alignment: go.Spot.Left,
                        // and disallow drawing links from or to this text:
                        fromLinkable: false, toLinkable: false
                    },
                    new go.Binding("text", "name")),
                model.g(go.TextBlock,
                    {margin: new go.Margin(0, 5), column: 2, font: "13px sans-serif", alignment: go.Spot.Left},
                    new go.Binding("text", "info"))
            );
        // This template represents a whole "record".
        model.myDiagram.nodeTemplate =
            model.g(go.Node, "Auto",
                {
                    "click": function (a, data) {
                        if (data.data.code == "catalog.response") {
                            model.showModelRelevanceDataSetting(data.data.identifier, data.data.resource_name)
                        } else {
                            model.showModelDataSetting(data.data.code, data.data.fields[0].location)
                        }
                    }
                },
                {
                    movable: false,
                    copyable: false,
                    deletable: false
                },
                new go.Binding("location", "loc", go.Point.parse).makeTwoWay(go.Point.stringify),
                // this rectangular shape surrounds the content of the node
                model.g(go.Shape,
                    {fill: "#EEEEEE"}),
                // the content consists of a header and a list of items
                model.g(go.Panel, "Vertical",
                    // this is the header for the whole node
                    model.g(go.Panel, "Auto",
                        {stretch: go.GraphObject.Horizontal},  // as wide as the whole node
                        model.g(go.Shape,
                            {fill: "#1570A6", stroke: null}),
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
                {
                    "click": function (a, obj) {
                        model.link_code = obj.data.code;
                        model.remove_s_field = obj.data.fromPort;
                        for (var i = 0; i <= model.nodeData.length - 1; i++) {
                            if (model.nodeData[i].key == obj.data.from) {
                                model.remove_s_data_code = model.nodeData[i].code;
                                model.remove_s_identifier = model.nodeData[i].identifier;
                                model.remove_s_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }

                        model.remove_r_field = obj.data.toPort;
                        for (var i = 0; i <= model.nodeData.length - 1; i++) {
                            if (model.nodeData[i].key == obj.data.to) {
                                model.remove_r_data_code = model.nodeData[i].code;
                                model.remove_r_identifier = model.nodeData[i].identifier;
                                model.remove_r_resource_name = model.nodeData[i].resource_name;
                                break;
                            }
                        }
                        model.showLinkDataSetting(obj.data.code)
                    }
                },
                {
                    relinkableFrom: true, relinkableTo: true, // let user reconnect links
                    toShortLength: 4, fromShortLength: 2
                },
                model.g(go.Shape, {strokeWidth: 1.5}),
                model.g(go.Shape, {toArrow: "Standard", stroke: null})
            );

//         model.myDiagram.positionComputation = computeIntegralPosition;
//         function computeIntegralPosition(diagram, pt) {
// //                实现右侧图像可以跟随滑轮滚动
// //                model.myDiagram.findNodeForKey('CATALOG_RETURN.15097648602650012').position = new go.Point(700,pt.y);
//             return new go.Point(Math.floor(pt.x), Math.floor(pt.y));
//         }

        model.onModelData();
        function isValid(a, b, c, d) {
            var is_type = true;
            var is_link = true;
            var is_repeat = true;
            if (a.data.fields[0].location == c.data.fields[0].location) {
                $("#prompt_content_show").text("不允许同侧数据关联");
                $("#prompt_content").css('display', 'block');
                if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top', '18%');
                else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top', '24%');
                else
                    $("#data_setting>div").css('top', '30%');
            } else if (((a.data.operation == 'synchronize' || a.data.operation == 'mysql_sync' || a.data.operation == 'oracle_sync' || a.data.operation == 'sql_sync'
                || a.data.operation == 'migrate' || a.data.operation == 'mysql_migrate' || a.data.operation == 'oracle_migr' || a.data.operation == 'sql_migr')
                && ((b.data.name == b.data.primary) || (d.data.name == d.data.primary))) || d.data.name == d.data.primary) {
                is_link = false;
                $("#prompt_content_show").text("同步时主数据只能连接主数据且不可修改");
                $("#prompt_content").css('display', 'block');
                if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top', '18%');
                else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                    $("#data_setting>div").css('top', '24%');
                else
                    $("#data_setting>div").css('top', '30%');

            } else {
                var from_data = [], symbol_length = 0, s_field_length = 0, r_field_length = 0, is_exits = 0;
                for (var i = 0; i <= model.myDiagram.model.linkDataArray.length - 1; i++) {
                    if (model.myDiagram.model.linkDataArray[i].from == a.data.key
                        && model.myDiagram.model.linkDataArray[i].fromPort == b.data.name) {
                        is_repeat = false;
                        $("#prompt_content_show").text("映射字段不允许重复映射");
                        $("#prompt_content").css('display', 'block');
                        if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '24%');
                        else
                            $("#data_setting>div").css('top', '30%');
                        is_exits = 1;
                        break;
                    }

                    if ((model.myDiagram.model.linkDataArray[i].to == c.data.key)
                        && (model.myDiagram.model.linkDataArray[i].toPort == d.data.name)
                        && (model.myDiagram.model.linkDataArray[i].from == a.data.key)
                    ) {
                        is_repeat = false;
                        $("#prompt_content_show").text("迁移或同步时,映射字段不能被同一表重复选中");
                        $("#prompt_content").css('display', 'block');
                        if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '24%');
                        else
                            $("#data_setting>div").css('top', '30%');
                        is_exits = 1;
                        break;

                    }
                }

                if (is_exits == 0) {
                    for (var r = 0; r <= model.myDiagram.model.linkDataArray.length - 1; r++) {
                        if ((model.myDiagram.model.linkDataArray[r].to == c.data.key)
                            && (model.myDiagram.model.linkDataArray[r].toPort == d.data.name)) {
                            symbol_length += parseFloat(model.myDiagram.model.linkDataArray[r].prefix_symbol.length)
                                + parseFloat(model.myDiagram.model.linkDataArray[r].suffix_symbol.length);
                            var data = {
                                from: model.myDiagram.model.linkDataArray[r].from,
                                fromPort: model.myDiagram.model.linkDataArray[r].fromPort
                            };
                            from_data.push(data);
                        }
                    }

                    for (var h = 0; h < model.myDiagram.model.nodeDataArray.length; h++) {
                        for (var r = 0; r < from_data.length; r++) {
                            if (from_data[r].from == model.myDiagram.model.nodeDataArray[h].key) {
                                for (var l = 0; l < model.myDiagram.model.nodeDataArray[h].fields.length; l++) {
                                    if (from_data[r].fromPort == model.myDiagram.model.nodeDataArray[h].fields[l].name) {
                                        s_field_length += parseFloat(model.myDiagram.model.nodeDataArray[h].fields[l].length);
                                        break;
                                    }
                                }
                            }
                        }

                        if (model.myDiagram.model.nodeDataArray[h].key == a.data.key) {
                            for (var l = 0; l < model.myDiagram.model.nodeDataArray[h].fields.length; l++) {
                                if (b.data.name == model.myDiagram.model.nodeDataArray[h].fields[l].name) {
                                    s_field_length += parseFloat(model.myDiagram.model.nodeDataArray[h].fields[l].length);
                                    break;
                                }
                            }
                        }

                        if (model.myDiagram.model.nodeDataArray[h].key == c.data.key) {
                            for (var l = 0; l < model.myDiagram.model.nodeDataArray[h].fields.length; l++) {
                                if (d.data.name == model.myDiagram.model.nodeDataArray[h].fields[l].name) {
                                    r_field_length += parseFloat(model.myDiagram.model.nodeDataArray[h].fields[l].length);
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
                        if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '24%');
                        else
                            $("#data_setting>div").css('top', '30%');
                    }

                }

            }
            return (a.data.fields[0].location != c.data.fields[0].location) && is_type && is_link && is_repeat
            // return (a.data.fields[0].location != c.data.fields[0].location) && (parseFloat(a.data.position) <=  parseFloat(c.data.position)) && is_type && is_link && is_repeat
        }

        // console.log()
        model.myDiagram.toolManager.linkingTool.linkValidation = isValid;

        model.myDiagram.toolManager.relinkingTool.linkValidation = isValid;
    },
    onModelData: function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter',
            'model.data.search.view'), new Array('buddle_id', 'catalog_id'), new Array('buddle_id', 'catalog_id'), 'text', null, null,
            'showModelDataSettingSuccessCallback', 'normalErrorCallback');
    },
    onModelLink: function (s_data_code, r_data_code, s_identifier, r_identifier, s_resource_name, r_resource_name, s_field, r_field, s_field_type, r_field_type, remove_s_data_code, remove_s_identifier, remove_s_resource_name, remove_s_field, remove_r_data_code, remove_r_identifier, remove_r_resource_name, remove_r_field, mapping_position) {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove', 's_data_code', 'r_data_code', 's_identifier', 'r_identifier', 's_resource_name', 'r_resource_name', 's_field', 'r_field', 's_field_type', 'r_field_type',
            'remove_s_data_code', 'remove_s_identifier', 'remove_s_resource_name', 'remove_s_field', 'remove_r_data_code', 'remove_r_identifier',
            'remove_r_resource_name', 'remove_r_field', 'position'), new Array('diginter',
            'model.data.link.process', s_data_code, r_data_code, s_identifier, r_identifier, s_resource_name, r_resource_name, s_field, r_field, s_field_type, r_field_type,
            remove_s_data_code, remove_s_identifier, remove_s_resource_name, remove_s_field, remove_r_data_code, remove_r_identifier,
            remove_r_resource_name, remove_r_field, mapping_position.toString()), new Array('buddle_id', 'catalog_id'), new Array('buddle_id', 'catalog_id'), 'text', null, null,
            'onModelLinkSettingSuccessCallback', 'normalErrorCallback');
    },
    showLinkDataSetting: function (code) {
        var is_validate = true;
        if (model.myDiagram.model.nodeDataArray.length > model.myDiagram.model.nodeDataArray[0].db_number
            || ($('#data_operation_validate').val() != 'migrate' && $('#data_operation_validate').val() != 'synchronize'))
            is_validate = false;
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=model.data.link.setting.view&code="
                + code + "&is_validate=" + is_validate + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '24%');
                        else
                            $("#data_setting>div").css('top', '30%');

                        if ($("#data_exchange_sync_time_field").val() != '') {
                            $("#data_exchange_flag_field").removeClass("validate[required]");
                        }
                        if ($("#data_exchange_sync_time_field").val() != '') {
                            $("#data_exchange_flag_field").removeClass("validate[required]");
                            $("#data_exchange_flag_change_container").hide();
                            $("#data_exchange_flag_reset_container").hide();
                        }
                    }
                    ;
                    // hintMessage("显示目录数据设置界面成功。", false);


                });
    },
    showModelDataSetting: function (code, location) {
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=model.data.setting.view&code="
                + code + "&location=" + location
                + "&buddle_id=" + $("#buddle_id").val()
                + "&catalog_id=" + $("#catalog_id").val() + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else {
                        if ($("#data_catalog_type").val().length > 0) {
                            // $('input:radio[name="data_type_select"]').attr('disabled','disabled');
                            $('#data_type_metadata').hide();
                            $('#data_type_metadata_lable').hide();
                            $('.data_type_metadata_br').hide();
                        }
                        // if ($('#data_max').val()=='0'){
                        //     $('#data_type_hinge').hide();
                        //     $('#data_type_hinge_label').hide();
                        // }else {
                        //     if (($('#data_location').val() == 'undefined' || $('#data_location').val() == '') && $('#data_max').val()=='0'){
                        //         $('#data_type_hinge').hide();
                        //         $('#data_type_hinge_label').hide();
                        //     }else if (($('#data_location').val() == 'undefined' || $('#data_location').val() == '') && $('#data_max').val()>0 && $('#data_position_setting_this').val() != '0'){
                        //         $('#data_type_hinge').show();
                        //         $('#data_type_hinge_label').show();
                        //     }else if ($('#data_location').val() == '1'){
                        //         if ($('#remove_operation').val() == 'search'){
                        //             $('#data_type_hinge').show();
                        //             $('#data_type_hinge_label').show();
                        //         }else {
                        //             $('#data_type_hinge').hide();
                        //             $('#data_type_hinge_label').hide();
                        //         }
                        //     } else if ($('#data_location').val() == '2'){
                        //         $('#data_type_hinge').show();
                        //         $('#data_type_hinge_label').show();
                        //     }else {
                        //         $('#data_type_hinge').hide();
                        //         $('#data_type_hinge_label').hide();
                        //     }
                        // }
                        if ($("#data_operation_migrate_container").css('display') == 'none') {
                            if ($('#data_operation_setting').val() != 'migrate' && $('#data_operation_setting').val() != 'synchronize' && $('#data_operation_setting').val() != 'infoinge_sync' && $('#data_operation_setting').val() != 'infoinge_migr' && $('#data_operation_setting').val() != 'class_sync' && $('#data_operation_setting').val() != 'class_migr' && $('#data_catalog_type').val().length > 0)
                                $('input:radio[name="data_type_select"]').attr('disabled', 'disabled');
                        }

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
                        $('#data_exchange_new_processor_number').spinner({
                            max: 1000,
                            min: 1,
                            step: 1
                        });

                        // }

                        if ($("#data_is_for_each").val() == 'true')
                            $("#data_select_expression").attr('class', 'validate[required,maxSize[1024]]');
                        else
                            $("#data_select_expression").attr('class', 'validate[maxSize[1024]]');

                        if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '18%');
                        else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                            $("#data_setting>div").css('top', '24%');
                        else
                            $("#data_setting>div").css('top', '30%');

                        if ($("#data_exchange_sync_time_field").val() != '') {
                            $("#data_exchange_flag_field").removeClass("validate[required]");
                            $("#data_exchange_flag_change_container").hide();
                            $("#data_exchange_flag_reset_container").hide();
                        }
                        newModelAddButton();
                    }
                    ;
                    // hintMessage("显示目录数据设置界面成功。", false);

                    $('#data_name').focus();
                    if ($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class')
                        onResourceConnectionDataSelect("class_connection_id", $("#data_type").val(), $("#class_connection_id_by_class").val(), "请选择资源定义");

                    if ($("#data_type").val() == 'Hinge')
                        onResourceDecomposingSelect("data_connection_id", "Hinge", "请选择资源定义", "identifier", "onDataTypeHingeCheck('data_connection_id', 'connection_id_by_hinge')");

                    onDataConnectionIdChange();


                    $('#data_row_number').spinner({
                        max: 100,
                        min: 0,
                        step: 1
                    });

                    $('#data_operation_validate').val($('#data_operation_setting').val());

                    showRemoveRepeatField();
                });
    },
    showModelRelevanceDataSetting: function (s_identifier, s_resource_name) {
        $("#data_setting")
            .load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=model.data.relevance.setting.view&"
                + "&s_identifier=" + s_identifier
                + "&s_resource_name=" + s_resource_name
                + "&buddle_id=" + $('#buddle_id').val()
                + "&catalog_id=" + $('#catalog_id').val()
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        // console.log(data);
                        hintError("显示目录数据设置界面失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else
                        onModelDataResourceRelevanceshow()
                        ;
                });
    },
    Drawing: function (responseText) {
        var obj = eval('(' + responseText + ')');
        var w = 0;
        var data = [];
        var l = 0;
        var height = [];
        var styleHeight = 0;
        $("#primary_prompt").hide();
        primaryData = [];
        primaryData.left = new Array();
        primaryData.right = new Array();
        /*********取出模型设计表数据***********/
        for (var h = 0; h <= obj[0].length - 1; h++) {
            height[h] = 0;
            model.loc[h] = new Array();
            model.loc[h][0] = new Array();
            model.loc[h][0] = w + " " + "0";
            for (var i = 0; i <= obj[0][h].length - 1; i++) {
                if (obj[0][h][i].fields.length > 0) {
                    obj[0][h][i].loc = new Array();
                    obj[0][h][i].loc = model.loc[h][i];
                    data[l] = obj[0][h][i];

                    l++;
                    var key_height = Math.ceil(parseFloat(obj[0][h][i].key.length) / 20) * 30 + 50;
                    model.loc[h][i + 1] = new Array();
                    height[h] += ((obj[0][h][i].fields.length) * 18 + key_height);
                    model.loc[h][i + 1] = w + " " + height[h];
                }
            }
            w += 750;
            if (h == 0) {
                styleHeight = height[h]
            } else {
                if (styleHeight <= height[h])
                    styleHeight = height[h]
            }
        }
        for (var i = 0; i <= data.length - 1; i++) {
            for (var r = 0; r <= data[i].fields.length - 1; r++) {
                var length = data[i].fields[r].info.length;
                data[i].fields[r].info = data[i].fields[r].info.substring(0, 20);
                if (data[i].fields[r].name == data[i].fields[r].primary) {
                    if (data[i].fields[r].location == 1) {
                        var leftData = data[i].fields[r];
                        leftData.from = data[i].key;
                        leftData.identifier = data[i].identifier;
                        leftData.resource_name = data[i].resource_name;
                        leftData.data_code = data[i].code;
                        primaryData.left.push(leftData);
                    } else if (data[i].fields[r].location == 2) {
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

        var synchronizeData = [];
        var linkData = obj[1];
        // if ($("#catalog_type").val() == 'synchronization'){
        //取出主键信息
        for (var i = 0; i <= primaryData.right.length - 1; i++) {
            for (var l = 0; l < 1; l++) {
                synchronizeData[i] = new Object();
                synchronizeData[i].fromPort = primaryData.left[l].name;
                synchronizeData[i].from = primaryData.left[l].from;
                synchronizeData[i].s_data_code = primaryData.left[l].data_code;
                synchronizeData[i].s_identifier = primaryData.left[l].identifier;
                synchronizeData[i].s_resource_name = primaryData.left[l].resource_name;
                synchronizeData[i].s_field_type = primaryData.left[l].type != 'String' ? primaryData.left[l].type : '12';
                synchronizeData[i].toPort = primaryData.right[i].name;
                synchronizeData[i].to = primaryData.right[i].to;
                synchronizeData[i].r_data_code = primaryData.right[i].data_code;
                synchronizeData[i].r_identifier = primaryData.right[i].identifier;
                synchronizeData[i].r_resource_name = primaryData.right[i].resource_name;
                synchronizeData[i].r_field_type = primaryData.right[l].type != 'String' ? primaryData.right[l].type : '12';

                //为同步是左侧主键数据长度必须大于右侧数据长度
                if (primaryData.left[l].length > primaryData.right[i].length) {
                    $("#primary_prompt").show();
                    if (($("#primary_prompt").css('display') == 'none') && ($("#prompt_content").css('display') == 'none'))
                        $("#data_setting>div").css('top', '18%');
                    else if (($("#primary_prompt").css('display') == 'none') || ($("#prompt_content").css('display') == 'none'))
                        $("#data_setting>div").css('top', '24%');
                    else
                        $("#data_setting>div").css('top', '30%');
                }
            }
        }
        for (var i = 0; i <= synchronizeData.length - 1; i++) {
            var is_exits = 0;
            for (var r = 0; r <= obj[1].length - 1; r++) {
                //判断主键是否建立连接
                if ((obj[1][r].from == synchronizeData[i].from) && (obj[1][r].to == synchronizeData[i].to)
                    && (obj[1][r].fromPort == synchronizeData[i].fromPort) && (obj[1][r].toPort == synchronizeData[i].toPort)) {
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
                // model.onModelLink(data[i].code,synchronizeData[i].r_data_code,data[i].identifier,synchronizeData[i].r_identifier,data[i].resource_name,synchronizeData[i].r_resource_name,synchronizeData[i].fromPort,synchronizeData[i].toPort,'','','','','','','','');
                model.onModelLink(synchronizeData[i].s_data_code, synchronizeData[i].r_data_code, synchronizeData[i].s_identifier, synchronizeData[i].r_identifier, synchronizeData[i].s_resource_name, synchronizeData[i].r_resource_name, synchronizeData[i].fromPort, synchronizeData[i].toPort, synchronizeData[i].s_field_type, synchronizeData[i].r_field_type, '', '', '', '', '', '', '', '', '0');
            }
        }
        // }
        model.nodeData = data;
        model.primary = primaryData;
        if (primaryData.left != '' && primaryData.right != '') {
            if (parseFloat(primaryData.left[0].length) > parseFloat(primaryData.right[0].length))
                zdalert('提示', '迁移/同步表到保存表的映射关系，前者的主键长度必须小于或等于后者！否则可能无法进行迁移/同步！');
        }

        var r_height;
        if (obj[0][1] != '')
            r_height = ((obj[0][1][0].fields.length) * 18 + 80);
        if (r_height > 700)
            styleHeight = r_height + 100;
        else
            styleHeight = 800;
        $("#myDiagramDiv").css('height', styleHeight + 50 + "px");
        model.myDiagram.model =
            model.g(go.GraphLinksModel,
                {
                    linkFromPortIdProperty: "fromPort",
                    linkToPortIdProperty: "toPort",
                    nodeDataArray: data,
                    linkDataArray: linkData
                });
        // model.myDiagram.findNodeForKey('BUDDLE_ISSUE.1509691968154001').position = new go.Point(0,500);
        // model.myDiagram.findNodeForKey('BUDDLE_ISSUE.1509691968154001').locationSpot = new go.Point(0,500);
        // console.log(model.myDiagram.findNodeForKey('BUDDLE_ISSUE.1509691968154001'));

        for (var i = 0; i < data.length; i++) {
            if (data[i].fields[0].location == 2) {
                model.rightKey = data[i].key;
                break;
            } else {
                model.rightKey = null;
            }

        }

        if (model.rightKey != null) {
            model.myDiagram.positionComputation = computeIntegralPosition;
            function computeIntegralPosition(diagram, pt) {
                model.myDiagram.findNodeForKey(model.rightKey).position = new go.Point(700, pt.y + 100);
                return new go.Point(Math.floor(pt.x), Math.floor(pt.y));
            }
        } else {
            model.myDiagram.positionComputation = null
        }
    }

};

$.extend({
    showModelDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        // console.log(responseText)
        var dataRefresh = localStorage.getItem("dataRefresh");
        if (dataRefresh == null || dataRefresh > 100) {
            localStorage.setItem("dataRefresh", 1);
        } else {
            localStorage.setItem("dataRefresh", parseInt(dataRefresh) + 1);
        }
        model.Drawing(responseText);
    }
});

$.extend({
    removeLinkDataSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        model.myDiagram.allowDelete = true;
        model.showModelDataSetting();
    }
});

$.extend({
    onModelLinkSettingSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        var obj = eval('(' + responseText + ')');
        // console.log(obj);
        // console.log(model.myDiagram.model.linkDataArray);
        for (var i = 0; i <= model.myDiagram.model.linkDataArray.length - 1; i++) {
            if (model.myDiagram.model.linkDataArray[i].from == obj.from && model.myDiagram.model.linkDataArray[i].to == obj.to
                && model.myDiagram.model.linkDataArray[i].fromPort == obj.fromPort && model.myDiagram.model.linkDataArray[i].toPort == obj.toPort
            ) {
                model.myDiagram.model.linkDataArray[i].mapping_position = obj.mapping_position;
                model.myDiagram.model.linkDataArray[i].code = obj.code;
                model.myDiagram.model.linkDataArray[i].prefix_symbol = obj.prefix_symbol;
                model.myDiagram.model.linkDataArray[i].suffix_symbol = obj.suffix_symbol;
                model.link_code = obj.code;
                model.showLinkDataSetting(obj.code)

            }
        }
        // model.myDiagram.allowDelete = true;
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});


//修改目录数据时提示删除数据映射
function confirmModelModifyDataSetting() {
    var connection_id, resource_name, resource_buddle;
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
    validateModelResource($('#buddle_id').val(), $('#catalog_id').val(), connection_id, resource_name, resource_buddle, $('#data_type').val(), $('#code_data').val());

}

function validateModelResource(buddle_id, catalog_id, connection_id, resource_name, resource_buddle, type, data_code) {
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
                        var is_db_confirm = false;
                        if ($('#data_type_init').val() != $('#data_type').val()) {
                            is_confirm = true;
                            is_db_confirm = true;
                        } else {
                            if ($('#data_type').val() == 'DB') {
                                if ($('#data_connection_id').val() != $('#remove_connection_id').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_name').val() != $('#remove_resource_name').val()) {
                                    is_confirm = true;
                                } else if ($('#operation_by_db').val() != $('#remove_operation').val()) {
                                    is_confirm = true;
                                    is_db_confirm = true;
                                }
                            } else if ($('#data_type').val() == 'Hinge') {
                                if ($('#data_connection_id').val() != $('#remove_connection_id').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_buddle').val() != $('#resource_buddle_by_hinge').val()) {
                                    is_confirm = true;
                                } else if ($('#data_resource_name').val() != $('#resource_name_by_hinge').val()) {
                                    is_confirm = true
                                } else if ($('#data_operation').val() != $('#remove_operation').val()) {
                                    is_confirm = true;
                                    is_db_confirm = true;
                                }
                            } else if ($('#data_type').val() == 'Class' || $('#data_type').val() == 'WS') {
                                if ($('#class_connection_id').val() != $('#remove_connection_id').val()) {
                                    is_confirm = true;
                                } else if ($('#data_connection_id').val() != $('#remove_resource_name').val()) {
                                    is_confirm = true
                                } else if ($('#data_operation').val() != $('#remove_operation').val()) {
                                    is_confirm = true;
                                    is_db_confirm = true;
                                }
                            }
                        }
                        if (is_confirm == true) {
                            var title = '提交后，相关的映射关系会被清除!';
                            if ($('#code_data').val() == $('#data_main_code').val()) {
                                if (is_db_confirm == true) {
                                    title = '修改后，操作名字为查询和保存的目录数据，相关的映射关系都会被删除，确定要修改？';
                                } else {
                                    title = '修改后，操作名字为查询的目录数据，相关的映射关系都会被删除，确定要修改？';
                                }

                            }
                            zdconfirm('提示', title,
                                function (confirm) {
                                    if (confirm) {
                                        processModelCatalogDataSetting();
                                    }
                                }
                            );
                            if (is_db_confirm == true) {
                                $('#data_is_operation').val('true');
                            }
                            $('#data_is_mapping').val('true');

                        } else
                            processModelCatalogDataSetting();
                    } else {
                        processModelCatalogDataSetting();
                    }
                } else
                    zdalert('提示', '不允许添加重复的库表定义');
            }
        })
}

// // function processModelDataSetting() {
// //     // // 把JDBC通用迁移/同步改为其他迁移/同步类型时
// //     if ($('#code_data').val().length > 0 && ($("#data_operation_setting").val() == 'migrate' || $("#data_operation_setting").val() == 'synchronize')){
// //         if ($('#code_data').val().length > 0 && $('#data_operation_migr').val() !='migrate' && $('#data_operation_migr').val() !='synchronize'){
// //             zdconfirm("提示", "修改后，操作名字为查询的目录数据都会被删除，确定要修改？", function (confirm) {
// //                 if (confirm) {
// //                     $("#").show();
// //                     $("#ajax_loader_remove").show();
// //                     $.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove','data_operation'),
// //                         new Array('diginter', 'data.operation.remove.process','search'),
// //                         new Array('buddle_id','catalog_id'), new Array('buddle_id','catalog_id'),
// //                         'text',null, null, 'onRecordOperationModelRemoveCallBack', 'normalErrorCallback');
// //                 }
// //             });
// //         }
// //         else
// //             processModelCatalogDataSetting();
// //     }
// //     else
// //         processModelCatalogDataSetting();
// // }
// $.extend({
//     onRecordOperationModelRemoveCallBack : function(responseText) {
//         $("#").hide();
//         $("#ajax_loader_remove").hide();
//         processModelCatalogDataSetting();
//     }
// });
function processModelCatalogDataSetting() {
    if ($('#metadata_complete').val() != '') {
        if ($('#metadata_complete').val() == 'adopt') {

        } else if ($('#metadata_complete').val() == 'build') {
            zdalert('提示', '新增失败！请选择目录数据为保存的讯枢！');
            return;
        } else {
            zdalert('提示', '新增失败！请选择目录数据为查询的讯枢！');
            return;
        }
    } else {
        // zdalert('提示','稍等！正在验证数据元数据是否完整！请重新提交！');
        // return;
    }
    if ($("#data_exchange_flag_field").val() != '') {
        $("#data_exchange_sync_time_field").removeClass("validate[required]");
    }
    if ($("#data_exchange_sync_time_field").val() != '') {
        $("#data_exchange_flag_field").removeClass("validate[required]");
        $("#data_exchange_flag_change").removeClass("validate[required]");
        $("#data_exchange_flag_reset").removeClass("validate[required]");
    }
    if ($('#data_resource_name').val() != $('#resource_name_by_db_one').val())
        $('#remove_parameter_data_code').val($('#code_data').val());
    else
        $('#remove_parameter_data_code').val('');
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#data_type").val() == 'DB' || $("#data_type").val() == 'Hinge') {
        $("#data_resource_name").attr('class', 'validate[required]')
    } else {
        $("#data_resource_name").removeAttr('class', 'validate[required]');
        $("#data_is_for_each").val('false');
    }

    if ($("#data_is_for_each").val() == 'false')
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

    if (($("#data_catalog_type").val() != '') && ($("#data_count_right").val() >= 1 ) && ($('#code_data').val().length == 0) && ($('#data_operation').val() == 'build')) {
        zdconfirm("提示", "选择功能为迁移或同步时，保存操作必须唯一!");
    } else if (is_length == false) {
        if ($('#validate_data_setting').validationEngine('validate')) {
            var data_s_field_type = $("#data_s_field").find("option:selected").attr('class');
            var data_r_field_type = $("#data_r_field").find("option:selected").attr('class');
            if ($("#data_operation_migrate_container").css('display') == 'none'
                && $('#data_operation').val() != 'infoinge_sync'
                && $('#data_operation').val() != 'infoinge_migr') {
                $('#data_exchange_migr_field').val('');
                $('#data_exchange_sync_field').val('');
                $('#data_exchange_sync_time_field').val('');
                $('#data_exchange_flag_field').val('');
                $('#data_exchange_flag_change').val('');
            }
            $("#now_remove").show();
            $("#ajax_loader_remove").show();
            if ($('#code_data').val().length > 0) {
                if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $('#data_operation').val() != 'search') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'false', remove_repeat_field), new Array('code',
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify', 'parameter_data_code',
                            'remove_resource_name', 'location', 'remove_operation', 'data_is_mapping',
                            'data_is_operation', 'data_main_code', 'data_exchange_code',
                            'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type', 'processor_number'), new Array('code_data',
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit',
                            'data_classify', 'remove_parameter_data_code',
                            'remove_resource_name', 'data_location', 'remove_operation',
                            'data_is_mapping', 'data_is_operation', 'data_main_code',
                            'code_data_exchange', 'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type', 'data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
                else if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search') {
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb',
                        'data_s_field_type', 'data_r_field_type', 'remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'false', data_s_field_type, data_r_field_type, remove_repeat_field), new Array('code',
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'remove_connection_id',
                            'remove_resource_name', 'location', 'remove_operation', 'code_data_migr',
                            'r_identifier', 'r_resource_name', 'r_field', 's_field', 'resource_relevance_code',
                            'parameter_data_code', 'data_is_mapping', 'data_is_operation',
                            'data_main_code', 'data_catalog_type'), new Array('code_data',
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit',
                            'remove_connection_id_by_db', 'remove_resource_name_by',
                            'data_location', 'remove_operation', 'code_data_migr',
                            'data_r_identifier', 'data_r_resource_name', 'data_r_field', 'data_s_field',
                            'resource_relevance_code', 'remove_parameter_data_code', 'data_is_mapping',
                            'data_is_operation', 'data_main_code', 'data_catalog_type'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
                else if ($("#data_type").val() == 'Hinge' && $('#data_operation').val() != 'search' && $('#data_operation').val() != 'infoinge_sync' && $('#data_operation').val() != 'infoinge_migr') {
                    $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'true', remove_repeat_field), new Array('code',
                            'connection_code', 'buddle_id',
                            'catalog_id', 'name', 'type', 'connection_id',
                            'resource_name', 'operation', 'is_paginate',
                            'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                            'code_data_migr', 'parameter_data_code',
                            'remove_resource_name', 'location', 'remove_operation', 'data_is_mapping',
                            'data_is_operation', 'data_main_code', 'metadata_filed_migr',
                            'metadata_filed_sync', 'data_catalog_type', 'processor_number'), new Array('code_data',
                            'connection_code_data', 'buddle_id',
                            'catalog_id', 'data_name', 'data_type',
                            'data_connection_id', 'data_resource_name',
                            'data_operation', 'data_is_paginate',
                            'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                            'data_exchange_is_full', 'code_data_migr', 'remove_parameter_data_code',
                            'remove_resource_name', 'data_location', 'remove_operation', 'data_is_mapping',
                            'data_is_operation', 'data_main_code', 'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type', 'data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'false', remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id',
                                'remove_resource_name', 'location', 'remove_operation', 'code_data_migr',
                                'parameter_data_code', 'data_is_mapping', 'data_is_operation',
                                'data_main_code', 'data_catalog_type'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'remove_connection_id_by_db', 'remove_resource_name',
                                'data_location', 'remove_operation', 'code_data_migr', 'remove_parameter_data_code',
                                'data_is_mapping', 'data_is_operation', 'data_main_code', 'data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search')) {
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb',
                            'data_s_field_type', 'data_r_field_type', 'remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'false', data_s_field_type, data_r_field_type, remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'remove_connection_id',
                                'remove_resource_name', 'location', 'remove_operation', 'code_data_migr',
                                'r_identifier', 'r_resource_name', 'r_field', 's_field', 'resource_relevance_code',
                                'parameter_data_code', 'data_is_mapping', 'data_is_operation',
                                'data_main_code', 'data_catalog_type'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', 'data_operation',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'remove_connection_id_by_db', 'remove_resource_name_by',
                                'data_location', 'remove_operation', 'code_data_migr',
                                'data_r_identifier', 'data_r_resource_name', 'data_r_field', 'data_s_field',
                                'resource_relevance_code', 'remove_parameter_data_code', 'data_is_mapping',
                                'data_is_operation', 'data_main_code', 'data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    }
                    else
                        $.request(httpHeader, '修改目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'true', remove_repeat_field), new Array('code',
                                'connection_code', 'buddle_id', 'catalog_id',
                                'name', 'type', 'connection_id', 'resource_name',
                                'operation', 'is_paginate', 'position',
                                'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'remove_connection_id', 'remove_resource_name', 'location',
                                'remove_operation', 'flag_change', 'flag_reset', 'code_data_migr',
                                'parameter_data_code', 'data_is_mapping', 'data_is_operation',
                                'data_main_code', 'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type',
                                'build_connection_id', 'build_resource_name'), new Array('code_data',
                                'connection_code_data', 'buddle_id', 'catalog_id',
                                'data_name', 'data_type', 'data_connection_id',
                                'data_resource_name', $('#data_operation_migrate_container').css('display') == 'none' ? 'data_operation' : 'data_operation_migr',
                                'data_is_paginate', 'data_position',
                                'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression',
                                'data_is_permit', 'data_exchange_flag_field', 'remove_connection_id_by_db',
                                'remove_resource_name', 'data_location', 'remove_operation',
                                'data_exchange_flag_change', 'data_exchange_flag_reset', 'code_data_migr',
                                'remove_parameter_data_code', 'data_is_mapping', 'data_is_operation',
                                'data_main_code', 'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type',
                                'build_connection_id', 'build_resource_name'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
            } else {
                if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $('#data_operation').val() != 'search') {
                    /******此处'connection_id', 'resource_name','operation' 三条数据的值 为 'class_connection_id',
                     'data_connection_id', 'data_resource_name'**************/
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', remove_repeat_field), new Array(
                            'connection_code', 'buddle_id', 'catalog_id',
                            'name', 'type', 'connection_id', 'resource_name',
                            'data_method', 'operation', 'is_paginate', 'position',
                            'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'classify', 'parameter_data_code',
                            'data_exchange_code', 'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type', 'processor_number'), new Array(
                            'connection_code_data', 'buddle_id', 'catalog_id',
                            'data_name', 'data_type', 'class_connection_id',
                            'data_connection_id', 'data_resource_name', 'data_operation',
                            'data_is_paginate', 'data_position',
                            'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit',
                            'data_classify', 'remove_parameter_data_code', 'code_data_exchange',
                            'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type', 'data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
                else if (($("#data_type").val() == 'WS' || $("#data_type").val() == 'Class') && $("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search') {
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'data_s_field_type', 'data_r_field_type', 'remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', data_s_field_type, data_r_field_type, remove_repeat_field), new Array('buddle_id',
                            'catalog_id', 'name', 'type', 'connection_id',
                            'resource_name', 'operation', 'is_paginate',
                            'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'is_permit', 'code_data_migr', 'r_identifier',
                            'r_resource_name', 'r_field', 's_field', 'parameter_data_code', 'data_catalog_type'), new Array('buddle_id',
                            'catalog_id', 'data_name', 'data_type',
                            'class_connection_id', 'data_connection_id',
                            'data_operation', 'data_is_paginate',
                            'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'data_is_permit', 'code_data_migr',
                            'data_r_identifier', 'data_r_resource_name', 'data_r_field',
                            'data_s_field', 'remove_parameter_data_code', 'data_catalog_type'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                }
                else if ($("#data_type").val() == 'Hinge' && $('#data_operation').val() != 'search' && $('#data_operation').val() != 'infoinge_sync' && $('#data_operation').val() != 'infoinge_migr') {
                    $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                        'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'remove_repeat_field'),
                        new Array('diginter', 'model.data.setting.process',
                            'false', 'false', 'true', remove_repeat_field), new Array('buddle_id',
                            'catalog_id', 'name', 'type', 'connection_id',
                            'resource_name', 'operation', 'is_paginate',
                            'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                            'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                            'code_data_migr', 'parameter_data_code', 'metadata_filed_migr',
                            'metadata_filed_sync', 'data_catalog_type', 'processor_number'), new Array('buddle_id',
                            'catalog_id', 'data_name', 'data_type',
                            'data_connection_id', 'data_resource_name',
                            'data_operation', 'data_is_paginate',
                            'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                            'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                            'data_exchange_is_full', 'code_data_migr', 'remove_parameter_data_code',
                            'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type', 'data_exchange_new_processor_number'), 'text', null, null,
                        'dataModelSettingSuccessCallback', 'normalErrorCallback');
                } else {
                    if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'build'))
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'code_data_migr',
                                'parameter_data_code', 'data_catalog_type'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit',
                                'code_data_migr', 'remove_parameter_data_code', 'data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    else if ($("#data_catalog_type").val().length == 0 || ($("#data_operation_container").css('display') == 'block' && $('#data_operation').val() == 'search')) {
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'data_s_field_type', 'data_r_field_type', 'remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', data_s_field_type, data_r_field_type, remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'is_permit', 'code_data_migr', 'r_identifier',
                                'r_resource_name', 'r_field', 's_field', 'parameter_data_code', 'data_catalog_type'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                'data_operation', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'data_is_permit', 'code_data_migr',
                                'data_r_identifier', 'data_r_resource_name', 'data_r_field',
                                'data_s_field', 'remove_parameter_data_code', 'data_catalog_type'), 'text', null, null,
                            'dataModelSettingSuccessCallback', 'normalErrorCallback');
                    }
                    else
                        $.request(httpHeader, '新增目录数据', new Array('buddle.cludove',
                            'catalog.cludove', 'is_full', 'is_descend', 'is_synced_dsb', 'remove_repeat_field'),
                            new Array('diginter', 'model.data.setting.process',
                                'false', 'false', 'true', remove_repeat_field), new Array('buddle_id',
                                'catalog_id', 'name', 'type', 'connection_id',
                                'resource_name', 'operation', 'is_paginate',
                                'position', 'row_number', 'uniques', 'resource_buddle', 'is_for_each',
                                'select_expression', 'data_exchange_code', 'data_exchange_is_full',
                                'processor_number', 'migr_field', 'sync_field',
                                'sync_time_field', 'clean_expression', 'is_permit', 'flag_field',
                                'flag_change', 'flag_reset', 'code_data_migr', 'parameter_data_code',
                                'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type'), new Array('buddle_id',
                                'catalog_id', 'data_name', 'data_type',
                                'data_connection_id', 'data_resource_name',
                                $('#data_operation_migrate_container').css('display') == 'none' ? 'data_operation' : 'data_operation_migr', 'data_is_paginate',
                                'data_position', 'data_row_number', 'data_uniques', 'data_resource_buddle',
                                'data_is_for_each', 'data_select_expression', 'code_data_exchange',
                                'data_exchange_is_full', 'data_exchange_processor_number',
                                'data_exchange_migr_field', 'data_exchange_sync_field',
                                'data_exchange_sync_time_field', 'data_exchange_clean_expression',
                                'data_is_permit', 'data_exchange_flag_field',
                                'data_exchange_flag_change', 'data_exchange_flag_reset', 'code_data_migr',
                                'remove_parameter_data_code', 'metadata_filed_migr', 'metadata_filed_sync', 'data_catalog_type'), 'text', null, null,
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
        model.onModelData();
        var obj = eval('(' + responseText + ')');
        model.showModelDataSetting(obj.data_code, obj.location);
        $("#data_operation").find("option").eq(1).attr("selected", "selected");
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});

function processModelDataRemove() {
    if ($('#code_data').val().length > 0) {
        $.request(httpHeader, '删除目录数据', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter', 'model.data.remove.process'),
            new Array('code', 'location', 'data_code_migr', 'catalog_code', 'operation_build', 'buddle_id', 'catalog_id', 'data_name'),
            new Array('code_data', 'data_location', 'code_data_migr', 'data_catalog_code', 'remove_operation', 'buddle_id', 'catalog_id', 'data_name'),
            'text', null, null,
            'modelDataRemoveSuccessCallback', 'normalErrorCallback'
        )
    }
}

$.extend({
    modelDataRemoveSuccessCallback: function (responseText) {
        flag = 1;
        // 刷新页面
        // console.log(responseText);
        model.onModelData(responseText);
        model.showModelDataSetting();
    }
});


function processLinkDataSetting(code) {
    // if ($('#validate_data_link_setting').validationEngine('validate')) {
    var toPort, to, from_data = [], symbol_length = 0, s_field_length = 0, r_field_length = 0, from, fromPort;
    for (var i = 0; i < model.myDiagram.model.linkDataArray.length; i++) {
        if (model.myDiagram.model.linkDataArray[i].code == code) {
            toPort = model.myDiagram.model.linkDataArray[i].toPort;
            to = model.myDiagram.model.linkDataArray[i].to;
            fromPort = model.myDiagram.model.linkDataArray[i].fromPort;
            from = model.myDiagram.model.linkDataArray[i].from;
            break;
        }
    }

    for (var i = 0; i < model.myDiagram.model.linkDataArray.length; i++) {
        if (model.myDiagram.model.linkDataArray[i].toPort == toPort
            && model.myDiagram.model.linkDataArray[i].to == to) {
            var data = {
                from: model.myDiagram.model.linkDataArray[i].from,
                fromPort: model.myDiagram.model.linkDataArray[i].fromPort
            };
            from_data.push(data);
            if (model.myDiagram.model.linkDataArray[i].code != code) {
                symbol_length += parseFloat(model.myDiagram.model.linkDataArray[i].prefix_symbol.length) + parseFloat(model.myDiagram.model.linkDataArray[i].suffix_symbol.length);
            }
        }
    }

    for (var i = 0; i < model.myDiagram.model.nodeDataArray.length; i++) {
        for (var r = 0; r < from_data.length; r++) {
            if (from_data[r].from == model.myDiagram.model.nodeDataArray[i].key) {
                for (var l = 0; l < model.myDiagram.model.nodeDataArray[i].fields.length; l++) {
                    if (from_data[r].fromPort == model.myDiagram.model.nodeDataArray[i].fields[l].name) {
                        s_field_length += parseFloat(model.myDiagram.model.nodeDataArray[i].fields[l].length);
                        break;
                    }
                }
            }
        }

        if (model.myDiagram.model.nodeDataArray[i].key == to) {
            for (var l = 0; l < model.myDiagram.model.nodeDataArray[i].fields.length; l++) {
                if (toPort == model.myDiagram.model.nodeDataArray[i].fields[l].name) {
                    r_field_length += parseFloat(model.myDiagram.model.nodeDataArray[i].fields[l].length);
                    break;
                }
            }
        }
    }

    var s_length = s_field_length + symbol_length + parseFloat($('#' + code + '_data_mapping_prefix_symbol').val().length) + parseFloat($('#' + code + '_data_mapping_suffix_symbol').val().length);
    var r_length = r_field_length;

    if (s_length > r_length) {
        zdalert('提示', '前置符号或后置符号的字符长度过长，请修改！');
    } else {
        $("#now_remove").show();
        $("#ajax_loader_remove").show();
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove', 'code'), new Array('diginter', 'model.data.link.setting.process', code),
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
        for (var i = 0; i <= model.myDiagram.model.linkDataArray.length - 1; i++) {
            if (model.myDiagram.model.linkDataArray[i].code == obj.code) {
                model.myDiagram.model.linkDataArray[i].prefix_symbol = obj.prefix_symbol;
                model.myDiagram.model.linkDataArray[i].suffix_symbol = obj.suffix_symbol;

            }
        }
        model.showLinkDataSetting(obj.code);
        $("#now_remove").hide();
        $("#ajax_loader_remove").hide();
    }
});


/************ 库表字段验证开始 ************/
//字段验证规则模块的显示
function fieldVerifyDisplay(data_code, field_name, resource_name) {
    var obj = document.getElementById(data_code + "_" + field_name);
    if (obj.style.display == "") {
        obj.style.display = "none";
    } else {
        obj.style.display = "";
        onFieldRegulationSearch(data_code, field_name, resource_name);
    }
}


// 字段验证规则表查询显示
function onFieldRegulationSearch(data_code, field_name, resource_name) {
    $("#" + data_code + "_" + field_name + "_verify_search")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.search.view&field_name=" + field_name
            + "&resource_name=" + resource_name + "&select_location=model"
            + "&data_code=" + data_code
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
function onFieldVerifyRegulationSetting(elem, verify_id, field_name, resource_name, verify_code) {
    $("#" + elem + "_verify_setting")
        .load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.setting.view&resource_name="
            + resource_name
            + "&field_name=" + field_name
            + "&verify_code=" + verify_code
            + "&verify_id=" + verify_id
            + "&elem=" + elem
            + "&select_location=model"
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    hintError("显示清洗规则设置界面失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else {
                    $("#" + elem + "_field_verify_code").val(verify_code);
                    /*$(elem).parent().parent().parent("div").prev().children().children("input").spinner({
                     max: 100,
                     min: 0,
                     step: 1
                     });*/
                }
            });
}

//判断该字段下验证规则是否存在
function processFieldVerifyValidate(elem, field_name) {
    var resource_name = $("#" + elem).attr("table_name");
    var field_name = field_name.toUpperCase();
    var field_verify_code = $("#" + elem + "_field_verify_code").val();
    var code = $("#" + elem + "_code_field_verify").val();
    if ($("#" + elem + "_field_verify_setting").validationEngine('validate')) {
        if (code.length > 0) {
            processFieldVerifySetting(elem, field_verify_code, code, field_name);
        } else {
            $(this).load(
                httpsHeader
                + "s?buddle.cludove=diginter&catalog.cludove=db.column.verify.validate.process&verify_code="
                + field_verify_code
                + "&field_name=" + field_name
                + "&resource_name=" + resource_name
                + "&t=" + new Date().getTime(),
                function (data, textStatus, jqXHR) {
                    if (textStatus == "error") {
                        hintError("查询清洗规则重复失败！", false, "javascript:void(0)");
                        hintException(data, false, "javascript:void(0)");
                    } else if (data != "true") {
                        zdalert('提示', '该字段已添加此验证规则！');
                    } else {
                        processFieldVerifySetting(elem, field_verify_code, code, field_name);
                    }
                })
        }
    }
}

// 验证规则下点击提交按钮,修改或者新增验证规则
function processFieldVerifySetting(elem, field_verify_code, code, field_name) {
    // 1.连接数据库，提交数据，回调函数（成功则刷新中间的查询页面）
    if ($("#" + elem + "_field_verify_setting").validationEngine('validate')) {
        // disabledButton();
        var resource_name = $("#" + elem).attr("table_name");
        var data_code = $("#" + elem).attr("data_code");
        var position = $("#" + elem + "_field_verify_position").val();
        var connection_code = $("#" + elem + "_connection_code_field_verify").val();
        if (code.length > 0) {
            $.request(httpHeader, '修改验证规则', new Array('buddle.cludove',
                'catalog.cludove', 'resource_name', 'field_name', 'verify_code', 'position', 'code', 'data_code', 'connection_code'), new Array('diginter',
                'db.column.verify.setting.process', resource_name, field_name, field_verify_code, position, code, data_code, connection_code),
                new Array('identifier'),
                new Array(
                    'column_field_label_identifier'), 'text', null, null,
                'fieldVerifySettingSuccessCallback', 'normalErrorCallback');
        } else {
            $.request(httpHeader, '新增验证规则', new Array('buddle.cludove',
                'catalog.cludove', 'resource_name', 'field_name', 'verify_code', 'position', 'data_code'),
                new Array('diginter', 'db.column.verify.setting.process', resource_name, field_name, field_verify_code, position, data_code),
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
        onFieldRegulationSearch(obj.data_code, obj.field_name, obj.resource_name);
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
            + "&select_location=model" + "&field_verify_code=" + field_verify_code
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
            + "&select_location=model" + "&t=" + new Date().getTime(),
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
            + "&select_location=model" + "&t=" + new Date().getTime(),
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
                        // alert('该验证规则已添加此清洗规则！');
                        zdalert('提示', '该验证规则已添加此清洗规则！');
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
        // disabledButton();
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
        // enableButton();
        onFieldCleanoutRegulationSearch(responseText);
    }
});

/************ 库表字段验证清洗结束 ************/


//调换处理顺序

function onChangePosition(that) {
    var elem = $(that).parent();
    var data_position = elem.attr('data-position'),
        position = parseFloat(elem.attr('position')),
        code = elem.attr('data-code'),
        modify_position, modify_code, location;
    if ($(that).attr('position-type') == 'up') {
        modify_position = elem.prev().attr('data-position');
        modify_code = elem.prev().attr('data-code');
        if (position == '2') {
            $('#' + code + "_data_mapping_operation").parent().hide();
            $('#' + modify_code + "_data_mapping_operation").parent().show();
        }
        var html = elem.html();
        html = `<div class="div_list" data-code ="${code}" position="${position - 1}" data-position ="${modify_position}">${html}</div>`;
        var prev = elem.prev();
        elem.remove();
        prev.before(html);
        $('#' + code + "_data_mapping_operation").val('string_add');
        $('#' + modify_code + "_data_mapping_operation").val('string_add');
        $('div[data-code =' + modify_code + ']').attr('data-position', data_position);
        $('div[data-code =' + modify_code + ']').attr('position', position);

        if ($('#position_count').val() == 2) {
            $('div[data-code =' + modify_code + '] a.position-up').show();
            $('div[data-code =' + modify_code + '] a.position-down').hide();
            $('div[data-code =' + code + '] a.position-up').hide();
            $('div[data-code =' + code + '] a.position-down').show();
        } else {
            if (position == 2) {
                $('div[data-code =' + modify_code + '] a.position-up').show();
                $('div[data-code =' + modify_code + '] a.position-down').show();
                $('div[data-code =' + code + '] a.position-up').hide();
                $('div[data-code =' + code + '] a.position-down').show();
            } else if (position == $('#position_count').val()) {
                $('div[data-code =' + modify_code + '] a.position-up').show();
                $('div[data-code =' + modify_code + '] a.position-down').hide();
                $('div[data-code =' + code + '] a.position-up').show();
                $('div[data-code =' + code + '] a.position-down').show();
                $('div[data-code =' + modify_code + '] a.position-up').show();
                $('div[data-code =' + modify_code + '] a.position-down').show();
                $('div[data-code =' + code + '] a.position-up').show();
                $('div[data-code =' + code + '] a.position-down').show();
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
        var html = elem.html();
        html = `<div class="div_list" data-code ="${code}" data-position ="${modify_position}" position="${position + 1}">${html}</div>`;
        var next = elem.next();
        elem.remove();
        next.after(html);
        $('#' + code + "_data_mapping_operation").val('string_add');
        $('#' + modify_code + "_data_mapping_operation").val('string_add');
        $('div[data-code =' + modify_code + ']').attr('data-position', data_position);
        $('div[data-code =' + modify_code + ']').attr('position', position);

        if ($('#position_count').val() == 2) {
            $('div[data-code =' + modify_code + '] a.position-up').hide();
            $('div[data-code =' + modify_code + '] a.position-down').show();
            $('div[data-code =' + code + '] a.position-up').show();
            $('div[data-code =' + code + '] a.position-down').hide();
        } else {
            if (position == 1) {
                $('div[data-code =' + modify_code + '] a.position-up').hide();
                $('div[data-code =' + modify_code + '] a.position-down').show();
                $('div[data-code =' + code + '] a.position-up').show();
                $('div[data-code =' + code + '] a.position-down').show();
            } else if (position + 1 == $('#position_count').val()) {
                $('div[data-code =' + modify_code + '] a.position-up').show();
                $('div[data-code =' + modify_code + '] a.position-down').show();
                $('div[data-code =' + code + '] a.position-up').show();
                $('div[data-code =' + code + '] a.position-down').hide();
            } else {
                $('div[data-code =' + modify_code + '] a.position-up').show();
                $('div[data-code =' + modify_code + '] a.position-down').show();
                $('div[data-code =' + code + '] a.position-up').show();
                $('div[data-code =' + code + '] a.position-down').show();
            }
        }
        // location = elem.next().offset().top - elem.offset().top;
        // elem.css('top',parseFloat(elem.css('top')) + location);
        // elem.next().css('top',parseFloat(elem.next().css('top')) - location);
    }

    processLinkPosition(code, modify_code, data_position, modify_position)
}

function processLinkPosition(code, modify_code, position, modify_position) {
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove', 'code', 'modify_code',
        'position', 'modify_position'), new Array('diginter',
        'model.link.position.setting.process', code, modify_code, position, modify_position),
        new Array(), new Array(), 'text', null, null,
        'processLinkPositionSuccessCallback', 'normalErrorCallback');
}

$.extend({
    processLinkPositionSuccessCallback: function (responseText) {
    }
});


function onModelDataResourceRelevanceshow() {
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
            + $("#data_r_type").val()
            + "&buddle_id="
            + $("#buddle_id").val()
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
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

function processModelDataResourceRelevance() {
    var s_field_type = $("#data_s_field").find("option:selected").attr('class');
    var r_field_type = $("#data_r_field").find("option:selected").attr('class');
    $.request(httpHeader, '', new Array('buddle.cludove',
        'catalog.cludove', 'data_s_field_type', 'data_r_field_type'), new Array('diginter',
        'data.resource.relevance.process', s_field_type, r_field_type),
        new Array('buddle_id', 'catalog_id', 'connection_id',
            'resource_name', 's_field', 'r_identifier', 'r_resource_name', 'r_field', 'resource_relevance_code'),
        new Array('buddle_id', 'catalog_id', 's_identifier',
            's_resource_name', 'data_s_field', 'r_identifier', 'r_resource_name', 'data_r_field', 'resource_relevance_code'), 'text', null, null,
        'processModelDataResourceRelevanceSuccessCallback', 'normalErrorCallback');
}

$.extend({
    processModelDataResourceRelevanceSuccessCallback: function (responseText) {
        zdalert('提示', '修改库表关联成功！');
    }
});