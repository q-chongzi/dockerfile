function inits() {
    if (window.goSamples) goSamples();  // init for these samples -- you don't need to call this
    var $ = go.GraphObject.make;  // for conciseness in defining templates

    myDiagram =
        $(go.Diagram, "myDiagramDiv_network",  // must name or refer to the DIV HTML element
            {
                initialAutoScale: go.Diagram.Uniform,  // an initial automatic zoom-to-fit
                contentAlignment: go.Spot.Center,  // align document to the center of the viewport
                // background: "#001829" ,
                layout:
                    $(go.ForceDirectedLayout,  // automatically spread nodes apart
                        { defaultSpringLength: 30, defaultElectricalCharge: 100 }),
                "undoManager.isEnabled": true
            });

    // define each Node's appearance
    myDiagram.nodeTemplate =
        $(go.Node, "Vertical",
            // the entire node will have a light-blue background
            { background: "transparent" },
            $(go.Picture,
                // Pictures should normally have an explicit width and height.
                // This picture has a red background, only visible when there is no source set
                // or when the image is partially transparent.
                { margin: 0, width: 50, height: 50, background: "" },
                // Picture.source is data bound to the "source" attribute of the model data
                new go.Binding("source")),
            $(go.TextBlock,
                " ",  // the initial value for TextBlock.text
                // some room around the text, a larger font, and a white stroke:
                { margin: 1, stroke: "white", font: "bold 10pt helvetica, bold arial, sans-serif"},
                // TextBlock.text is data bound to the "name" attribute of the model data
                new go.Binding("text", "name"))
        );
    myDiagram.linkTemplate =
        $(go.Link,  // the whole link panel
            $(go.Shape,  // the link shape
                { stroke: "#BABABA" })
        );

    myDiagram.nodeTemplateMap.add("token",
        $(go.Part,
            { locationSpot: go.Spot.Center, layerName: "Foreground" },
            $(go.Shape, "Circle",
                { width: 12, height: 12, fill: "green", strokeWidth: 0 },
                new go.Binding("fill", "color"))
        ));

    // create the model for the concept map
    var nodeDataArray = [
        { key: 1, name: "日志", source: "img/icon100.png" },
        { key: 2, name: "基本配置", source: "img/icon101.png" },
        { key: 3, name: "总线节点",  source: "img/icon102.png" },
        { key: 4, name: "集群网点", source: "img/icon101.png" },
        { key: 5, name: "Don Meow", source: "img/icon102.png" },
        { key: 6, name: "Don Meow", source: "img/icon100.png"},
        { key: 7, name: "基本配置", source: "img/icon101.png" },
        { key: 8, name: "Don Meow", source: "img/icon100.png" },
        { key: 9, name: "总线节点", source: "img/icon102.png" }
    ];
    var linkDataArray = [
        { from: 1, to: 2, text: "represent" },
        { from: 2, to: 3, text: "is" },
        { from: 1, to: 4, text: "is" },
        { from: 2, to: 5, text: "is" },
        { from: 2, to: 6, text: "includes" },
        { from: 1, to: 7, text: "necessary\nfor" },
        { from: 1, to: 8, text: "necessar" },
        { from: 2, to: 9, text: "necess" }
    ];
    myDiagram.model = new go.GraphLinksModel(nodeDataArray, linkDataArray);

    initTokens();
}
function initTokens() {
    var oldskips = myDiagram.skipsUndoManager;
    myDiagram.skipsUndoManager = true;
    myDiagram.model.addNodeDataCollection([
        // { category: "token", at: 4, color: "yellow" },
        // { category: "token", at: 5, color: "purple" },
        // { category: "token", at: 7, color: "red" },
        { category: "token", at: 2, color: "black" },
        { category: "token", at: 1, color: "red" }
    ]);
    myDiagram.skipsUndoManager = oldskips;
    window.requestAnimationFrame(updateTokens);
}

function updateTokens() {
    var oldskips = myDiagram.skipsUndoManager;
    myDiagram.skipsUndoManager = true;  // don't record these changes in the UndoManager!
    var temp = new go.Point();
    myDiagram.parts.each(function(token) {
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
        if (to === null) {  // nowhere to go?
            positionTokenAtNode(token, from);  // temporarily stay at the current node
            data.next = chooseDestination(token, from);  // and decide where to go next
        } else {  // proceed toward the "to" port
            var link = from.findLinksTo(to).first();
            if (link !== null) {
                token.location = link.path.getDocumentPoint(link.path.geometry.getPointAlongPath(frac, temp));
            } else {  // stay at the current node
                positionTokenAtNode(token, from);
            }
            if (frac >= 1.0) {  // if beyond the end, it's "AT" the NEXT node
                data.frac = 0.0;
                data.at = next;
                data.next = undefined;  // don't know where to go next
            } else {  // otherwise, move fractionally closer to the NEXT node
                data.frac = frac + 0.01;
            }
        }
    });
    myDiagram.skipsUndoManager = oldskips;
    window.requestAnimationFrame(updateTokens);
}

// determine where to position a token when it is resting at a node
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
    // choose a random next data object that is not a token and is not the current Node
    var data = null;
    while (data = arr[Math.floor(Math.random() * arr.length)],
    data.category === "token" || data === node.data) { }
    return data.key;
}