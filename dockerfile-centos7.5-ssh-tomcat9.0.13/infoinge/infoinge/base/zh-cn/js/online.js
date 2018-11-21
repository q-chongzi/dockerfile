/*! 在线帮助和开发指南 */
function onOnlinHelpShow() {
    $("#main_content").load(
        httpHeader + 's',
        "buddle.cludove=infoinge&catalog.cludove=online.help.show.view" + "&t=" + new Date().getTime(),
        function(data, textStatus, jqXHR) {
            if (textStatus == 'error')
                console.log(data);

            $("body").css("background", "#f2f2f2");

            resize();

            onOnlinHelpTreeListShow("");
        });
}

function onOnlinHelpTreeListShow(parent_code) {
    $("#parent_code").val(parent_code);

    var parent_location = "online_help_tree_list";
    if (parent_code != "")
        parent_location = parent_code;

    $("#" + parent_location + "").load(httpHeader + 's',
        "buddle.cludove=infoinge&catalog.cludove=online.help.tree.list.view&parent_code=" + $("#parent_code").val() + "&t=" + new Date().getTime(),
        function(data, textStatus, jqXHR) {
            if (textStatus == 'error')
                console.log(data);

            $(function () {
                $(".div_nav ul li a").click(function () {
                    $(this).siblings("ul").slideToggle();
                })
            })

            onOnlineHelpEditShow();
        });
}

function onOnlineHelpSetting() {
    $("#edit_zone_tips").hide();

    $("#edit_zone").show();
}

function onOnlineHelpEditShow() {
    var ht = $("#online_help_edit_zone").height() - 55;

    if ($('#online_help_content').length) {
        $('#online_help_content')
            .summernote(
                {
                    height : ht,
                    focus : false
                });
    }
}
