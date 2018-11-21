$(document).ready(function () {
    setupHttpHeader();
    onContentShow();

    // 子目录被选择时高亮
    $(".configure-fl-link>ul>li").on("click", function () {
        $(".configure-fl-link>ul>li").css("background-color", "#fff").find("a").css("color", "#000");
        $(this).css("background-color", "rgb(92, 185, 248)").find("a").css("color", "#fff");
    }).not(".buS").click(function () {
        $(".b_item").slideUp();
    });
    $(".buS").click(function () {  //业务模型子目录交替显示
        $(".b_item").slideDown();
    });
    $(".b_item a").click(function () {
        $(".b_item a").css("color", "#000");
        $(this).css("color", "rgb(92, 185, 248)");
    });
});

/************ 创建详情界面实例开始  ***********/
//基本设置模块
var processor = new Content("setting", "processor", 0);
var vocabulary = new Content("setting", "vocabulary", 1);
var styles = new Content("setting", "style", 2);
var language = new Content("setting", "language", 3);
var cleanout = new Content("setting", "cleanout", 4);
var verify = new Content("setting", "verify", 5);

//账号管理模块
var accounts = new Content("account", "account", 0);
var permission = new Content("account", "permission", 1);

//业务模型模块
var business = new Content("business", "business", 0);  //加载业务模型共有属性详情
var database = new Content("business", "database", 1);
var integration = new Content("business", "integration", 2);
var colony = new Content("business", "colony", 3);
var dsb = new Content("business", "dsb", 4);
var jobs = new Content("business", "job", 5);
var exception = new Content("business", "exception", 6);
var upload = new Content("business", "upload", 7);

//业务模型子模块
var serve = new Content("business", "serve", 0);  //加载服务功能配置详情
var migrate = new Content("business", "migrate", 0);  //加载功能设计配置详情
var sync = new Content("business", "sync", 0);  //加载mysql迁移/同步配置详情
var response = new Content("business", "response", 0);  //加载响应设计详情

//辅助功能模块
var jobMonitoring = new Content("auxiliary", "job", 0);  //加载作业监控详情
var statistics = new Content("auxiliary", "statistics", 1);  //加载监控日志详情
var journal = new Content("auxiliary", "journal", 2);  //加载监控日志详情
var alert = new Content("auxiliary", "alert", 3);  //加载监控日志详情
/************ 创建详情界面实例结束  ***********/


/************ 创建操作指南详情构造函数  ***********/
function Content(item, content, index) {  //item：模块名字   content：加载内容名字   index：该加载内容在子目录列表的索引
    this.item = item;
    this.content = content;
    this.index = index;
}

Content.prototype.loadInfo = function () {
    var this_ = this,
        content = this.content;
    $("#content").load(
        httpHeader + "s?buddle.cludove=diginter&catalog.cludove=guide." + this.content + ".content.view&t=" + new Date().getTime(),
        function (data, textStatus, jqXHR) {
            if (textStatus == "error") {
                // console.log(data);
                hintError("显示问题诊断界面失败！", false, "javascript:void(0)");
                hintException(data, false, "javascript:void(0)");
            } else {
                if ((content == 'serve') || (content == 'business') || (content == 'migrate') || (content == 'sync') || (content == 'response')) {  //页面内a标签点击跳转，对应的子目录高亮显示
                    $(".b_item").slideDown();
                    $(".b_item a").css("color", "#000");
                    $("." + content + "").css("color", "rgb(92, 185, 248)");
                } else {
                    $(".b_item").slideUp();
                    if ((content == 'job') && (item == 'business'))
                        $("#job_two").hide();
                    else if ((content == 'job') && (item == 'auxiliary'))
                        $("#job_one").hide();
                }
                onItemsHighlight(this_.item, $("#" + this_.item + "Bar>li").eq(this_.index));
            }
        }
    )
}


/************ 判断content显示内容  ***********/
function onContentShow() {
    var urlArr = window.location.search.split("&");
    var account = urlArr[0].split("=")[1];  //用户名
    var template = httpHeader;  //地址
    var content = urlArr[2].split("=")[1];  //显示内容
    $(".name").text(account);   //保存当前用户名

    $("#api").click(function () {  //跳转到api页面
        window.open(template + "s?buddle.cludove=diginter&catalog.cludove=api.logon.view");
    });

    switch (content) {  //点击查看操作指南按钮调转到对应界面
        case "processor":
            processor.loadInfo();  //加载驱动处理详情
            break;
        case "vocabulary":
            vocabulary.loadInfo();  //加载系统词表详情
            break;
        case "style":
            styles.loadInfo();  //加载界面风格详情
            break;
        case "language":
            language.loadInfo();  //加载语言支持详情
            break;
        case "cleanout":
            cleanout.loadInfo();  //加载清洗规则详情
            break;
        case "verify":
            verify.loadInfo();  //加载验证规则详情
            break;
        case "database":
            database.loadInfo();  //加载数据库详情
            break;
        case "integration":
            integration.loadInfo();  //加载集成节点详情
            break;
        case "colony":
            colony.loadInfo();  //加载集群节点详情
            break;
        case "dsb":
            dsb.loadInfo();  //加载总线节点详情
            break;
        case "business":
            business.loadInfo();  //加载业务模型详情
            $(".b_item a").eq(0).css("color", "rgb(92, 185, 248)");  //默认显示业务模型公共配置页
            break;
        case "job":
            jobs.loadInfo();  //加载作业管理详情
            break;
        case "exception":
            exception.loadInfo();  //加载异常响应详情
            break;
        case "upload":
            upload.loadInfo();  //加载文件上传详情
            break;
        case "account":
            accounts.loadInfo();  //加载账号设置详情
            break;
        case "permission":
            permission.loadInfo();  //加载权限设置详情
            break;
        case "jobMonitoring":
            jobMonitoring.loadInfo();  //加载作业监控管理详情
            break;
        case "statistics":
            statistics.loadInfo();  //加载数据统计管理详情
            break;
        case "journal":
            journal.loadInfo();  //加载监控日志管理详情
            break;
        case "alert":
            alert.loadInfo();  //加载首页弹窗详情
            break;
        default:
            processor.loadInfo();
    }
}


/************ 根据导航栏点击事件显示子目录  ***********/
function onItemChange(elem) {
    $("#item li").css("background-color", "#fff").children("a").css("color", "#000");
    $("#" + elem + "").css("color", "#fff").parent("li").css("background-color", "rgb(92, 185, 248)");
    $("#" + elem + "Bar").show().siblings("ul").hide();
}


/************ 子目录被选择时高亮  ***********/
function onItemsHighlight(item, itemList) {
    //导航栏高亮
    $("#item li").css("background-color", "#fff").children("a").css("color", "#000");
    $("#" + item + "").css("color", "#fff").parent("li").css("background-color", "rgb(92, 185, 248)");
    $("#" + item + "Bar").show().siblings("ul").hide();

    //子目录高亮
    $(".configure-fl-link>ul>li").css("background-color", "#fff").children("a").css("color", "#000");
    $(itemList).css("background-color", "rgb(92, 185, 248)").children("a").css("color", "#fff");
}