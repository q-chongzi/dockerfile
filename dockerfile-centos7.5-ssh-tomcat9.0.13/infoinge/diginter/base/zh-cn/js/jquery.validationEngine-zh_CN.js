(function($){
    $.fn.validationEngineLanguage = function(){
    };
    $.validationEngineLanguage = {
        newLang: function(){
            $.validationEngineLanguage.allRules = {
                "required": { // Add your regex rules here, you can take telephone as an example
                    "regex": "none",
                    "alertText": "* &#27492;&#22788;&#19981;&#21487;&#31354;&#30333;",
                    "alertTextData":"必须输入同步时间或标志字段",
                    "alertTextCheckboxMultiple": "* 请选择一个项目",
                    "alertTextCheckboxe": "* 您必须钩选此栏",
                    "alertTextDateRange": "* 日期范围不可空白"
                },
                "requiredInFunction": {
                    "func": function(field, rules, i, options){
                        return (field.val() == "test") ? true : false;
                    },
                    "alertText": "* Field must equal test"
                },
                "dateRange": {
                    "regex": "none",
                    "alertText": "* 无效的 ",
                    "alertText2": " 日期范围"
                },
                "dateTimeRange": {
                    "regex": "none",
                    "alertText": "* 无效的 ",
                    "alertText2": " 时间范围"
                },
                "minSize": {
                    "regex": "none",
                    "alertText": "* 最少 ",
                    "alertText2": " 个字符"
                },
                "maxSize": {
                    "regex": "none",
                    "alertText": "* 最多 ",
                    "alertText2": " 个字符"
                },
                "groupRequired": {
                    "regex": "none",
                    "alertText": "* 你必需选填其中一个栏位"
                },
                "min": {
                    "regex": "none",
                    "alertText": "* 最小值為 "
                },
                "max": {
                    "regex": "none",
                    "alertText": "* 最大值为 "
                },
                "past": {
                    "regex": "none",
                    "alertText": "* 日期必需早于 "
                },
                "future": {
                    "regex": "none",
                    "alertText": "* 日期必需晚于 "
                },        
                "maxCheckbox": {
                    "regex": "none",
                    "alertText": "* 最多选取 ",
                    "alertText2": " 个项目"
                },
                "minCheckbox": {
                    "regex": "none",
                    "alertText": "* 请选择 ",
                    "alertText2": " 个项目"
                },
                "equals": {
                    "regex": "none",
                    "alertText": "* &#35831;&#36755;&#20837;&#19982;&#19978;&#38754;&#30456;&#21516;&#30340;&#23494;&#30721;"
                },
                "creditCard": {
                    "regex": "none",
                    "alertText": "* 无效的信用卡号码"
                },
                "identification": {
                    "regex": /^[0-9a-zA_Z]+$/,
                    "alertText": "* 无效的证件号码"
                },
                "coordinatePosition": {
                    "regex": /^[-\+]?\d+(\.\d+)\,[-\+]?\d+(\.\d+)$/,
                    "alertText": "* 无效的位置信息"
                },
                "phone": {
                    // credit: jquery.h5validate.js / orefalo
                    "regex": /^([\+][0-9]{1,3}([ \.\-])?)?([\(][0-9]{1,6}[\)])?([0-9 \.\-]{1,32})(([A-Za-z \:]{1,11})?[0-9]{1,4}?)$/,
                    "alertText": "* 无效的电话号码"
                },
                "email": {
                    // Shamelessly lifted from Scott Gonzalez via the Bassistance Validation plugin http://projects.scottsplayground.com/email_address_validation/
                    "regex": /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i,
                    "alertText": "* 邮件地址无效"
                },
                "integer": {
                    "regex": /^[\-\+]?\d+$/,
                    "alertText": "* 不是有效的整数"
                },
                "number": {
                    // Number, including positive, negative, and floating decimal. credit: orefalo
                    "regex": /^[\-\+]?((([0-9]{1,3})([,][0-9]{3})*)|([0-9]+))?([\.]([0-9]+))?$/,
                    "alertText": "* 无效的数字"
                },
                "date": {
                    "regex": /^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])$/,
                    "alertText": "* 无效的日期，格式必需为 YYYY-MM-DD"
                },
                "zpositive":{
                    "regex":/^([0-9]\d*|[0]{1,1})$/,
                    "alertText":"* 必须是正整数或0"
                },
                "zpositives":{
                    "regex":/^([0-9]\d*|[0]{1,1})$/,
                    "alertText":"* 必须是正整数"
                },
                "validateInterval":{
                    "regex":/^([1-9]\d*)$/,
                    "alertText":"* 必须是正整数"
                },
                "validateIdentifier":{
                    "regex":/^[a-z]+(\.{0,1}[a-z]+){0,}$/,
                    "alertText":"* 必须为小写字母可加.分隔"
                },
                "validateIdentifiers":{
                    "regex":/^[a-z0-9]+(\.{0,1}[a-z0-9]+){0,}$/,
                    "alertText":"* 必须为小写字母或数字可加.分隔"
                },
                "validateKeyword":{
                    "regex":/^[A-Z]+(\_{0,1}[A-Z]+){0,}$/,
                    "alertText":"* 必须为大写字母可加_分隔"
                },
                "validateKeywordletter":{
                    "regex":/^[a-zA-Z]+(\_{0,1}[a-zA-Z]+){0,}$/,
                    "alertText":"* 必须为字母可加_分隔"
            },
                "validateClass":{
                    "regex":/^[a-zA-Z]+(\.{0,1}[a-zA-Z]+){0,}$/,
                    "alertText":"* 必须字母，可加.分隔(注意不能以.开头或结尾)"
                },
                "validateName":{
                    "regex":/^[\w\u4e00-\u9fa5]+(\.{0,1}[\w\u4e00-\u9fa5]+){0,}$/,
                    "alertText":"* 不允许特殊字符"
                },
                "capital":{
                    "regex":/^[A-Z]+$/,
                    "alertText":"* 必须是大写字母"
                },
                "upperOrNumber":{
                    "regex":/^[A-Z0-9_]+$/,
                    "alertText":"* 必须是大写字母或数字，可加下划线分割"
                },
                "ipv4": {
                    "regex": /^((([01]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))[.]){3}(([0-1]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))$/,
                    "alertText": "* 无效的 IP 地址"
                },
                "url": {
                    "regex": /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i,
                    "alertText": "* 无效的 URL"
                },
                "onlyNumberSp": {
                    "regex": /^[0-9]+$/,
                    "alertText": "* 只允许输入数字"
                },
                "onlyLetterSp": {
                    "regex": /^[a-zA-Z\ \']+$/,
                    "alertText": "* 只接受英文字母大小写"
                },
                "onlyLetterNumber": {
                    "regex": /^[0-9a-zA-Z]+$/,
                    "alertText": "* 不接受特殊字符"
                },
                "onlyLetterNumbers": {
                    "regex": /^[\w._]+(\.[\w]+)?$/,
                    "alertText": "* 不接受特殊字符"
                },
                "onchinaese": {
                    "regex": /^[^\u4e00-\u9fa5]{0,}$/,
                    "alertText": "* 不接受中文"
                },
                "onlowercase": {
                    "regex": /^[a-z\d._]+$/,
                    "alertText": "* 只能输入小写字母、数字和英文下的句号"
                },
                "onlowercases": {
                    "regex": /^[a-z\d_]+$/,
                    "alertText": "* 只能输入小写字母、数字和下划线_"
                },
                "onletters":{
                    "regex":/^[a-zA-Z_]+$/,
                    "alertText":"* 只能输入字母和下划线_"
                } ,
                "accountnumber": {
                    "regex": "none",
                    "alertText": "* 请输入账号密码，必填"
                },
                "amountNumber": {
                    "regex": /^([1-9]\d*|0)(\.\d{1,2})?$/,
                    "alertText": "精确到小数点后2位"
                },
                "validateDecimal": {
                    "regex": /^[0-9]+([.]{1}[0-9]+){0,1}$/,
                    "alertText": "* 请输入整数或小数"
                },
                "egtZero": {
                    "regex": /^[0-9]{0,}([.]{1}[0-9]+){0,1}$/,
                    "alertText": "* 只能输入大于0的数"
                },
                "PositiveInteger": {
                    "regex": /^[1-9]\d*$/,
                    "alertText": "* 必须输入正整数"
                },
                "doubledigit": {
                    "regex": /(^[0-9]{0,2}$)|(^[0-9]{0,2}[\.]{1}[0-9]{1,2}$)/,
                    "alertText": "* 最多输入两位整数,最多输入两位小数"

                },
                "digits": {
                    "regex": /(^[0-9]{0,}$)|(^[0-9]{0,}[\.]{1}[0-9]{1,}$)/,
                    "alertText": "* 只能输入大于等于0的数"
                },
                // --- CUSTOM RULES -- Those are specific to the demos, they can be removed or changed to your likings
                "ajaxUserCall": {
                    "url": "/s",
                    // you may want to pass extra data on the ajax call
                    "extraData": "buddle.cludove=lock&catalog.cludove=account.validate.process",
					"alertText": "* 此名称已被其他人使用",
                    "alertTextLoad": "* 正在确认名称是否有其他人使用，请稍等。"
                },
                "ajaxUserCallPhp": {
                    "url": "phpajax/ajaxValidateFieldUser.php",
                    // you may want to pass extra data on the ajax call
                    "extraData": "name=eric",
                    // if you provide an "alertTextOk", it will show as a green prompt when the field validates
                    "alertTextOk": "* 此帐号名称可以使用",
                    "alertText": "* 此名称已被其他人使用",
                    "alertTextLoad": "* 正在确认帐号名称是否有其他人使用，请稍等。"
                },
                "ajaxNameCall": {
                    // remote json service location
                    "url": "ajaxValidateFieldName",
                    // error
                    "alertText": "* 此名称可以使用",
                    // if you provide an "alertTextOk", it will show as a green prompt when the field validates
                    "alertTextOk": "* 此名称已被其他人使用",
                    // speaks by itself
                    "alertTextLoad": "* 正在确认名称是否有其他人使用，请稍等。"
                },
                                 "ajaxNameCallPhp": {
         // remote json service location
         "url": "phpajax/ajaxValidateFieldName.php",
         // error
         "alertText": "* 此名称已被其他人使用",
         // speaks by itself
         "alertTextLoad": "* 正在确认名称是否有其他人使用，请稍等。"
         },
                "validate2fields": {
                    "alertText": "* 请输入 HELLO"
                },
         //tls warning:homegrown not fielded
                "dateFormat":{
                    "regex": /^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])$|^(?:(?:(?:0?[13578]|1[02])(\/|-)31)|(?:(?:0?[1,3-9]|1[0-2])(\/|-)(?:29|30)))(\/|-)(?:[1-9]\d\d\d|\d[1-9]\d\d|\d\d[1-9]\d|\d\d\d[1-9])$|^(?:(?:0?[1-9]|1[0-2])(\/|-)(?:0?[1-9]|1\d|2[0-8]))(\/|-)(?:[1-9]\d\d\d|\d[1-9]\d\d|\d\d[1-9]\d|\d\d\d[1-9])$|^(0?2(\/|-)29)(\/|-)(?:(?:0[48]00|[13579][26]00|[2468][048]00)|(?:\d\d)?(?:0[48]|[2468][048]|[13579][26]))$/,
                    "alertText": "* 无效的日期格式"
                },
                //tls warning:homegrown not fielded
                                "dateTimeFormat": {
         "regex": /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$/,
                    "alertText": "* 无效的日期或时间格式",
                    "alertText2": "可接受的格式： ",
                    "alertText3": "mm/dd/yyyy hh:mm:ss AM|PM 或 ",
                    "alertText4": "yyyy-mm-dd hh:mm:ss AM|PM"
         }
            };
            
        }
    };
    $.validationEngineLanguage.newLang();
})(jQuery);