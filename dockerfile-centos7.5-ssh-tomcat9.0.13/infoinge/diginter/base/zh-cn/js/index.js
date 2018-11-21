function init() {
    myLeafletMap = L.map('map', {
        center: [37.550339, 104.114129],
        zoom: 4
    })
    /*.setView(L.latLng(37.550339, 104.114129), 4);*/

    new L.TileLayer('http://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetPurplishBlue/MapServer/tile/{z}/{y}/{x}', {
        maxZoom: 18,
        minZoom: 1,
        subdomains: [0, 1, 2]
    }).addTo(myLeafletMap);

    myLeafletMap.on("move", function (e) {
        myUpdatingGoJS = true;
        myDiagram.updateAllTargetBindings("latlong"); // Without virtualization this can be slow if there are many nodes
        myDiagram.redraw(); // 确保位置实时更新
        myUpdatingGoJS = false;
    });


    var g = go.GraphObject.make;

    var myUpdatingGoJS = false;  // prevent modifying data.latlong properties upon Leaflet "move" events

    /* GoJS init */
    myDiagram = g(go.Diagram, "myDiagramDiv",
        {
            "dragSelectingTool.isEnabled": false,
            "animationManager.isEnabled": false,
            scrollMode: go.Diagram.InfiniteScroll,
            allowZoom: false,
            allowHorizontalScroll: false,
            allowVerticalScroll: false,
            hasHorizontalScrollbar: false,
            hasVerticalScrollbar: false,
            initialPosition: new go.Point(0, 0),
            padding: 0,
            "toolManager.hoverDelay": 3000,  // 提示框显示速度
            initialAutoScale: go.Diagram.Uniform,  // an initial automatic zoom-to-fit
            contentAlignment: go.Spot.Center,  // align document to the center of the viewport
            "undoManager.isEnabled": true
        });
    var toolTipTemplate =
        g(go.Adornment, "Auto",
            g(go.Shape, {fill: "#FFFFCC"}),
            g(go.TextBlock, {margin: 4},
                new go.Binding("text", "", function (d) {
                    return d.key + "\nlocation: [" + d.latlong.join(", ") + "]"
                }))
        );

    // 节点样式
    myDiagram.nodeTemplate =
        g(go.Node, "Auto",
            {
                toolTip: toolTipTemplate,
                locationSpot: go.Spot.Center
            },
            g(go.Shape, "Circle",
                {
                    fill: "#99CCCC",
                    stroke: "#082D47",
                    width: 8,
                    height: 8,
                    strokeWidth: 1
                }),
            /*$(go.Shape, "Rectangle",   //节点名字样式
             { fill: $(go.Brush, "Linear", { 0: "rgb(254, 201, 0)", 1: "rgb(254, 162, 0)" }), stroke: "black" }),
             $(go.TextBlock,
             { font: "bold 10pt helvetica, bold arial, sans-serif", margin: new go.Margin(4, 4, 3, 20)},
             new go.Binding("text", "text")),*/
            new go.Binding("location", "latlong", function (data) {
                var point = myLeafletMap.latLngToContainerPoint(data);
                return new go.Point(point.x, point.y);
            }).makeTwoWay(function (pt, data) {
                if (myUpdatingGoJS) {
                    return data.latlong;
                } else {
                    var ll = (myLeafletMap.containerPointToLatLng([pt.x, pt.y]));
                    return [ll.lat, ll.lng];
                }
            })
        );

    myDiagram.linkTemplate =
        g(go.Link,
            {
                layerName: "Background",
                curve: go.Link.Bezier,
                curviness: 2
            },
            g(go.Shape, {strokeWidth: 1, stroke: "#98F5FF"}),  //连线
            g(go.Shape,  // 箭头
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

    myDiagram.nodeTemplateMap.add("token",
        g(go.Part,
            {locationSpot: go.Spot.Center, layerName: "Foreground"},
            g(go.Shape, "Circle",   //运动的小球
                {width: 10, height: 10, fill: "#CC99CC", strokeWidth: 0},
                new go.Binding("fill", "color"))
        ));

    myDiagram.toolManager.draggingTool.doActivate = function () {
        myLeafletMap.dragging.disable();
        go.DraggingTool.prototype.doActivate.call(this);
    };
    myDiagram.toolManager.draggingTool.doDeactivate = function () {
        myLeafletMap.dragging.enable();
        go.DraggingTool.prototype.doDeactivate.call(this);
    };


    // 节点连接关系
    myDiagram.model = new go.GraphLinksModel(
        [
            // 上海
            {key: "上海", latlong: [31.236482, 121.478673]},   //上海 31.236482,121.478673
            {key: "东莞", latlong: [22.901233, 113.895323]},  //东莞
            {key: "东营", latlong: [37.551323, 118.707332]},  //东营
            {key: "中山", latlong: [22.558121, 113.363912]},  //中山 22.558121,113.363912
            {key: "临汾", latlong: [36.161215, 111.478213]},  //临汾
            {key: "临沂", latlong: [35.293126, 118.312118]},   //临沂
            {key: "丹东", latlong: [40.064122, 124.321211]},   //丹东 40.064122,124.321211
            {key: "丽水", latlong: [28.181254, 119.561242]},  //丽水
            // 乌鲁木齐
            {key: "乌鲁木齐", latlong: [43.870412, 87.618512]},  //乌鲁木齐 43.870412,87.618512
            {key: "佛山", latlong: [23.101297, 112.895125]},  //佛山
            {key: "保定", latlong: [39.094218, 115.041288]},  //保定
            // 成都
            {key: "成都", latlong: [30.587437, 104.065109]},  //成都 30.587437,104.065109
            {key: "包头", latlong: [41.489129, 110.341267]},  //包头
            {key: "北京", latlong: [39.916017, 116.403035]},  //北京 39.916017,116.403035
            {key: "南京", latlong: [31.920128, 118.801262]},  //南京
            {key: "南昌", latlong: [28.661233, 116.012046]},  //南昌
            {key: "厦门", latlong: [24.485749, 118.095833]},  //厦门 24.485749,118.095833
            {key: "合肥", latlong: [31.831324, 117.212219]}  //合肥
        ],
        [
            {from: "东莞", to: "东营"},
            {from: "东营", to: "中山"},
            {from: "临汾", to: "中山"},
            {from: "中山", to: "上海"},
            {from: "成都", to: "上海"},
            {from: "临沂", to: "丹东"},
            {from: "丹东", to: "上海"},
            {from: "丽水", to: "上海"},
            {from: "成都", to: "丽水"},
            {from: "丽水", to: "乌鲁木齐"},
            {from: "乌鲁木齐", to: "北京"},
            {from: "乌鲁木齐", to: "成都"},
            {from: "包头", to: "成都"},
            {from: "北京", to: "成都"},
            {from: "厦门", to: "成都"},
            {from: "南京", to: "北京"},
            {from: "南昌", to: "南京"},
            {from: "南昌", to: "厦门"},
            {from: "合肥", to: "南昌"},
            {from: "合肥", to: "厦门"}
        ]);
    initTokens();
} // end init

function initTokens() {
    var oldskips = myDiagram.skipsUndoManager;
    myDiagram.skipsUndoManager = true;
    myDiagram.model.addNodeDataCollection([
        {category: "token", at: "上海", color: "#00b0fb"},
        {category: "token", at: "东莞", color: "#00b0fb"},
        {category: "token", at: "乌鲁木齐", color: "#00b0fb"},
        {category: "token", at: "成都", color: "#00b0fb"},
        {category: "token", at: "南京", color: "#00b0fb"},
        {category: "token", at: "中山", color: "#00b0fb"},
        {category: "token", at: "合肥", color: "#00b0fb"},
        {category: "token", at: "北京", color: "#00b0fb"},
        {category: "token", at: "厦门", color: "#00b0fb"},
        {category: "token", at: "南昌", color: "#00b0fb"},
        {category: "token", at: "包头", color: "#00b0fb"}
    ]);
    myDiagram.skipsUndoManager = oldskips;
    window.requestAnimationFrame(updateTokens);
}

function updateTokens() {
    var oldskips = myDiagram.skipsUndoManager;
    myDiagram.skipsUndoManager = true;  // don't record these changes in the UndoManager!
    var temp = new go.Point();
    myDiagram.parts.each(function (token) {
        var data = token.data;
        if (!data) return;
        var at = data.at;
        if (at === undefined) return;
        var from = myDiagram.findNodeForKey(at);
        if (from === null) return;
        var frac = data.frac;
        if (frac === undefined) frac = 0.0;
        var next = data.next;
        var to = myDiagram.findNodeForKey(next);
        if (to === null) {  //无处可去？
            positionTokenAtNode(token, from);  // 暂时停留在当前节点
            data.next = chooseDestination(token, from);  // 决定下一步去哪里
        } else {  // 继续往“to”端口
            var link = from.findLinksTo(to).first();
            if (link !== null) {
                token.location = link.path.getDocumentPoint(link.path.geometry.getPointAlongPath(frac, temp));
            } else {  // 停留在当前节点
                positionTokenAtNode(token, from);
            }
            if (frac >= 1.0) {  // 如果超出了结尾，它就是“AT”NEXT节点
                data.frac = 0.0;
                data.at = next;
                data.next = undefined;  // 不知道下一步该去哪里
            } else {  // /否则，移动到更接近NEXT节点
                data.frac = frac + 0.01;
            }
        }
    });
    myDiagram.skipsUndoManager = oldskips;
    window.requestAnimationFrame(updateTokens);
}

// 决定记号相对于节点的位置
function positionTokenAtNode(token, node) {
    // these details depend on the node template
    token.location = node.position.copy().offset(4 + 6, 5 + 6);
}

function chooseDestination(token, node) {
    var dests = new go.List().addAll(node.findNodesOutOf());
    if (dests.count > 0) {
        var dest = dests.elt(Math.floor(Math.random() * dests.count));
        return dest.data.key;
    }
    var arr = myDiagram.model.nodeDataArray;
    // 随机选择一个不是当前节点或标记的对象
    var data = null;
    while (data = arr[Math.floor(Math.random() * arr.length)],
    data.category === "token" || data === node.data) {
    }
    return data.key;
}


var indexMap = {
    g: null,
    myDiagram: null,
    myLeafletMap: null,
    init: function () {
        indexMap.myLeafletMap = L.map('map', {/*crs:crs*/}).setView(L.latLng(37.550339, 104.114129), 4);

        new L.TileLayer('http://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetPurplishBlue/MapServer/tile/{z}/{y}/{x}', {
            maxZoom: 18,
            minZoom: 1,
            subdomains: [0, 1, 2]
        }).addTo(indexMap.myLeafletMap);

        indexMap.myLeafletMap.on("move", function (e) {
            myUpdatingGoJS = true;
            indexMap.myDiagram.updateAllTargetBindings("latlong"); // Without virtualization this can be slow if there are many nodes
            indexMap.myDiagram.redraw(); // 确保位置实时更新
            myUpdatingGoJS = false;
        });

        indexMap.g = go.GraphObject.make;

        var myUpdatingGoJS = false;  // prevent modifying data.latlong properties upon Leaflet "move" events


        /* GoJS init */
        indexMap.myDiagram = indexMap.g(go.Diagram, "myDiagramDiv",
            {
                "dragSelectingTool.isEnabled": false,
                "animationManager.isEnabled": false,
                scrollMode: go.Diagram.InfiniteScroll,
                allowZoom: false,
                allowHorizontalScroll: false,
                allowVerticalScroll: false,
                hasHorizontalScrollbar: false,
                hasVerticalScrollbar: false,
                initialPosition: new go.Point(0, 0),
                padding: 0,
                "toolManager.hoverDelay": 3000,  // 提示框显示速度
                initialAutoScale: go.Diagram.Uniform,  // an initial automatic zoom-to-fit
                contentAlignment: go.Spot.Center,  // align document to the center of the viewport
                "undoManager.isEnabled": true
            });
        var toolTipTemplate =
            indexMap.g(go.Adornment, "Auto",
                indexMap.g(go.Shape, {fill: "#FFFFCC"}),
                indexMap.g(go.TextBlock, {margin: 4},
                    new go.Binding("text", "", function (d) {
                        return d.key + "\nlocation: [" + d.latlong.join(", ") + "]"
                    }))
            );

        // 节点样式
        indexMap.myDiagram.nodeTemplate =
            indexMap.g(go.Node, "Auto",
                {
                    toolTip: toolTipTemplate,
                    locationSpot: go.Spot.Center
                },
                {
                    movable: false,
                    copyable: false,
                    deletable: false
                },
                indexMap.g(go.Panel, "Vertical",
                    indexMap.g(go.Shape, "Circle",
                        {
                            // fill: "#99CCCC",
                            // width:10,
                            // height:10,
                            stroke: "#082D47",
                            strokeWidth: 1
                        },
                        new go.Binding("fill", "fill"),
                        new go.Binding("desiredSize", "size")
                    ),

                    /*$(go.Shape, "Rectangle",   //节点名字样式
                     { fill: $(go.Brush, "Linear", { 0: "rgb(254, 201, 0)", 1: "rgb(254, 162, 0)" }), stroke: "black" }),
                     $(go.TextBlock,
                     { font: "bold 10pt helvetica, bold arial, sans-serif", margin: new go.Margin(4, 4, 3, 20)},
                     new go.Binding("text", "text")),*/
                    indexMap.g(go.TextBlock,
                        " ",  // the initial value for TextBlock.text
                        // some room around the text, a larger font, and a white stroke:
                        {margin: 1, stroke: "#CC66FF", font: "bold 10pt helvetica, bold arial, sans-serif"},
                        // TextBlock.text is data bound to the "name" attribute of the model data
                        new go.Binding("text", "name"))),
                new go.Binding("location", "latlong", function (data) {
                    var point = indexMap.myLeafletMap.latLngToContainerPoint(data);
                    return new go.Point(point.x, point.y);
                }).makeTwoWay(function (pt, data) {
                    if (myUpdatingGoJS) {
                        return data.latlong;
                    } else {
                        var ll = (indexMap.myLeafletMap.containerPointToLatLng([pt.x, pt.y]));
                        return [ll.lat, ll.lng];
                    }
                }),
                {
                    mouseEnter: function (e, obj, prev) {  // change group's background brush
                        indexMap.mouseMapDataView(obj.data.code);
                    }, mouseLeave: function (e, obj, next) {  // restore to original brush
                    $('#connection_node_mouse_view').css('display', 'none');
                }
                }
            );

        indexMap.myDiagram.linkTemplate =
            indexMap.g(go.Link,
                {
                    layerName: "Background",
                    curve: go.Link.Bezier,
                    curviness: 2
                },
                indexMap.g(go.Shape, {strokeWidth: 2, stroke: "#98F5FF"}),  //连线
                indexMap.g(go.Shape,  // 箭头
                    {toArrow: "standard",scale: 2, fill: "#98F5FF", stroke: null})
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

        indexMap.myDiagram.nodeTemplateMap.add("token",
            indexMap.g(go.Part,
                {locationSpot: go.Spot.Center, layerName: "Foreground"},
                indexMap.g(go.Shape, "Diamond",   //运动的小球 Circle
                    {width: 16, height: 16, fill: "#CC99CC", strokeWidth: 0},
                    new go.Binding("fill", "color"))
            ));

        indexMap.myDiagram.toolManager.draggingTool.doActivate = function () {
            indexMap.myLeafletMap.dragging.disable();
            go.DraggingTool.prototype.doActivate.call(this);
        };
        indexMap.myDiagram.toolManager.draggingTool.doDeactivate = function () {
            indexMap.myLeafletMap.dragging.enable();
            go.DraggingTool.prototype.doDeactivate.call(this);
        };
        // 节点连接关系
        // indexMap.myDiagram.model = new go.GraphLinksModel(
        //     [
        //         // 上海
        //         { key: "上海11",fill:"#FF0000",width:'10px',height:'10px', latlong: [31.236482,121.478673] },   //上海 31.236482,121.478673
        //         { key: "东莞", fill:"#FF0000",width:'10px',height:'10px',latlong: [22.901233,113.895323] },  //东莞
        //         { key: "东营",fill:"#FF0000", width:'10px',height:'10px',latlong: [37.551323,118.707332] },  //东营
        //         { key: "中山",fill:"#FF0000",width:'10px',height:'10px', latlong: [22.558121,113.363912] },  //中山 22.558121,113.363912
        //         { key: "临汾", fill:"#FF0000",width:'10px',height:'10px',latlong: [36.161215,111.478213] },  //临汾
        //         { key: "临沂",fill:"#FF0000",width:'10',height:'10', latlong: [35.293126,118.312118] },   //临沂
        //         { key: "丹东",fill:"#FF0000",width:'10',height:'10', latlong: [40.064122,124.321211] },   //丹东 40.064122,124.321211
        //         { key: "丽水",fill:"#FF0000",width:'10',height:'10', latlong: [28.181254,119.561242] },  //丽水
        //         // 乌鲁木齐
        //         { key: "乌鲁木齐",fill:"#FF0000", latlong: [43.870412,87.618512] },  //乌鲁木齐 43.870412,87.618512
        //         { key: "佛山",fill:"#eeeeee", latlong: [23.101297,112.895125]},  //佛山
        //         { key: "保定",fill:"#eeeeee", latlong: [39.094218,115.041288] },  //保定
        //         // 成都
        //         { key: "成都",fill:"#eeeeee", latlong: [30.587437,104.065109] },  //成都 30.587437,104.065109
        //         { key: "包头",fill:"#eeeeee", latlong: [41.489129,110.341267] },  //包头
        //         { key: "北京",fill:"#eeeeee", latlong: [39.916017,116.403035] },  //北京 39.916017,116.403035
        //         { key: "南京",fill:"#eeeeee", latlong: [31.920128,118.801262] },  //南京
        //         { key: "南昌",fill:"#eeeeee", latlong: [28.661233,116.012046] },  //南昌
        //         { key: "厦门",fill:"#eeeeee", latlong: [24.485749,118.095833] },  //厦门 24.485749,118.095833
        //         { key: "合肥",fill:"#eeeeee", latlong: [31.831324,117.212219] }  //合肥
        //     ]);
        indexMap.onMapData();

        $(".leaflet-control-container").hide();  //清除地图放大缩小控件
    },
    onMapData: function () {
        $.request(httpHeader, '', new Array('buddle.cludove',
            'catalog.cludove'), new Array('diginter',
            'resource.map.show.view'), new Array(), new Array(), 'text', null, null,
            'resourceMapShowSuccessCallback', 'normalErrorCallback');
    },
    Drawing: function (data) {
        // $("#monitoring_center_main").css('display','block');
        var obj = eval('(' + data + ')');
        var link_data_array;
        if ($('#link_data_array').val()!=''){
            link_data_array = eval('(' + $('#link_data_array').val() + ')');
        }
        if (obj.length > 0) {
            var points = [];
            for (var i = 0; i < obj.length; i++) {
                points.push(obj[i].latlong);
                if (obj[i].name.length > 15)
                    obj[i].name = obj[i].name.substring(0, 14) + "...";
            }

            indexMap.setZoom(points);
        }
        var nodeDataArray = obj;
        var linkDataArray = link_data_array;
        //两点之间数据传输连接箭头
        // var linkDataArray = [
        //     {from: "1487918907372001", to: "1524880930568001"}
        // ];
        if ($('#link_data_array').val() ==''){
            indexMap.myDiagram.model = new go.GraphLinksModel(nodeDataArray);
        }else {
            indexMap.myDiagram.model = new go.GraphLinksModel(nodeDataArray,linkDataArray);
            //进入运动的小球
            indexMap.initTokens(linkDataArray);
        }
        $('#city_network_view_display').hide();
        $('#network_view_display').show();
        $('#network_view').hide();
        $('#map').show();
        enableButton();
    },
    setZoom: function (points) { //根据原始数据计算中心坐标和缩放级别，并为地图设置中心坐标和缩放级别。
        if (points.length > 0) {
            var maxLng = points[0][1];
            var minLng = points[0][1];
            var maxLat = points[0][0];
            var minLat = points[0][0];
            var res;
            for (var i = points.length - 1; i >= 0; i--) {
                res = points[i];
                if (res[1] > maxLng) maxLng = res[1];
                if (res[1] < minLng) minLng = res[1];
                if (res[0] > maxLat) maxLat = res[0];
                if (res[0] < minLat) minLat = res[0];
            }
            ;
            var cenLng = (parseFloat(maxLng) + parseFloat(minLng)) / 2;
            var cenLat = (parseFloat(maxLat) + parseFloat(minLat)) / 2;
            var zoom = indexMap.getZoom(maxLng, minLng, maxLat, minLat);
            indexMap.myLeafletMap.setView(L.latLng(cenLat, cenLng), zoom);

        } else {
            //没有坐标，显示全中国
            indexMap.myLeafletMap.setView(L.latLng(37.550339, 104.114129), 5);

        }
    },
    getZoom: function (maxLng, minLng, maxLat, minLat) {//根据经纬极值计算绽放级别。
        var zoom = ["50", "100", "200", "500", "1000", "2000", "5000", "10000", "20000", "25000", "50000", "100000", "200000", "500000", "1000000", "2000000"]//级别18到3。
        var pointA = L.latLng(maxLat, maxLng);  // 创建点坐标A
        var pointB = L.latLng(minLat, minLng);  // 创建点坐标B
        var distance = indexMap.myLeafletMap.distance(pointA, pointB).toFixed(1);  //获取两点距离,保留小数点后两位
        for (var i = 0, zoomLen = zoom.length; i < zoomLen; i++) {
            if (zoom[i] - distance > 0) {
                return (18 - i + 3) > 7 ? 7 : (18 - i + 3);//之所以会多3，是因为地图范围常常是比例尺距离的10倍以上。所以级别会增加3。
            }
        }
        ;
    },
    mouseMapDataView: function (connection_code) {
        $('#connection_node_mouse_view').css('display', 'block');
        $('#connection_node_mouse_view').css("left", event.clientX - 10);
        $('#connection_node_mouse_view').css("top", event.clientY + 20);
        $('#connection_node_mouse_view').load(
            httpHeader
            + "s?buddle.cludove=diginter&catalog.cludove=resource.node.information.view"
            + "&code=" + connection_code
            + "&t=" + new Date().getTime(),
            function (data, textStatus, jqXHR) {
                if (textStatus == "error") {
                    // console.log(data);
                    hintError("载入节点失败！", false, "javascript:void(0)");
                    hintException(data, false, "javascript:void(0)");
                } else
                    ;
            });
    },initTokens:function (linkDataArray) {
            var oldskips = indexMap.myDiagram.skipsUndoManager;
            indexMap.myDiagram.skipsUndoManager = true;

        var sports_ball="";
        for ( key in linkDataArray){
            sports_ball += '{category: "token",at:"' + linkDataArray[key].from + '", color: "#63FF6B"},';
        }
        sports_ball= "[" + sports_ball.substring(0,sports_ball.length-1) + "]";
        var sports_ball_all = eval('(' + sports_ball + ')');
        indexMap.myDiagram.model.addNodeDataCollection(sports_ball_all);
        // indexMap.myDiagram.model.addNodeDataCollection([
        //         {category: "token", at: "1487918907372001", color: "#00b0fb"},
        //         {category: "token", at: "1523872080093001", color: "#00b0fb"},
        //         {category: "token", at: "1523952432275001", color: "#00b0fb"}
        //     ]);
            indexMap.myDiagram.skipsUndoManager = oldskips;
            window.requestAnimationFrame(indexMap.updateTokens);

    },updateTokens:function () {
            var oldskips = indexMap.myDiagram.skipsUndoManager;
            indexMap.myDiagram.skipsUndoManager = true;  // 不要在UndoManager中记录这些更改！
            var temp = new go.Point();
            indexMap.myDiagram.parts.each(function (token) {
                var data = token.data;
                if (!data) return;
                var at = data.at;
                if (at === undefined) return;
                var from = indexMap.myDiagram.findNodeForKey(at);
                // console.log(from)
                if (from === null) return;
                var frac = data.frac;
                if (frac === undefined) frac = 0.0;
                var next = data.next;
                var to = indexMap.myDiagram.findNodeForKey(next);
                if (to === null) {  //无处可去？
                    // indexMap.positionTokenAtNode(token, from);  // 暂时停留在当前节点
                    data.next = indexMap.chooseDestination(token, from);  // 决定下一步去哪里
                } else {  // 继续往“to”端口
                    var link = from.findLinksTo(to).first();
                    if (link !== null) {
                        token.location = link.path.getDocumentPoint(link.path.geometry.getPointAlongPath(frac, temp));
                    } else {  // 停留在当前节点
                        indexMap.positionTokenAtNode(token, from);
                    }
                    if (frac >= 1.0) {  // 如果超出了结尾，它就是“AT”NEXT节点
                        data.frac = 0.0;
                        data.at = next;
                        // data.next = undefined;  // 不知道下一步该去哪里
                        // data.next = from.data.key; //回到起点↑
                        isFirst = true;
                        $('#link_data_array').val('');
                        indexMap.onMapData();
                    } else {  // /否则，移动到更接近NEXT节点
                        data.frac = frac + 0.01;
                    }
                }
            });
            indexMap.myDiagram.skipsUndoManager = oldskips;
            window.requestAnimationFrame(indexMap.updateTokens);

    },positionTokenAtNode:function (token, node) {
            // these details depend on the node template
            token.location = node.position.copy().offset(43 + 1, -14 + 6);

    },chooseDestination:function (token, node) {
        var dests = new go.List().addAll(node.findNodesOutOf());
        if (dests.count > 0) {
            var dest = dests.elt(Math.floor(Math.random() * dests.count));
            return dest.data.key;
        }
        var arr = indexMap.myDiagram.model.nodeDataArray;
        // 随机选择一个不是当前节点或标记的对象
        var data = null;
        while (data = arr[Math.floor(Math.random() * arr.length)],
        data.category === "token" || data === node.data) {
        }
        return data.key;
    }
}

$.extend({
    resourceMapShowSuccessCallback: function (responseText) {
        indexMap.Drawing(responseText);
    }
});
