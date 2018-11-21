/* 
 *!hinge v1.0.4 | (c) 2007, 2015 cludove spruce | cludove.com/license
 */

String.prototype.startWith = function(str) {
	var reg = new RegExp("^" + str);
	return reg.test(this);
}

String.prototype.endWith = function(str) {
	var reg = new RegExp(str + "$");
	return reg.test(this);
}

var httpHeader = "/";
var httpsHeader = "/";

// 平台、设备和操作系统
var system = {
	win : false,
	mac : false,
	xll : false
};

var hexcase = 0;
function hex_md5(a) {
	if (a == "")
		return a;
	return rstr2hex(rstr_md5(str2rstr_utf8(a)))
}
function hex_hmac_md5(a, b) {
	return rstr2hex(rstr_hmac_md5(str2rstr_utf8(a), str2rstr_utf8(b)))
}
function md5_vm_test() {
	return hex_md5("abc").toLowerCase() == "900150983cd24fb0d6963f7d28e17f72"
}
function rstr_md5(a) {
	return binl2rstr(binl_md5(rstr2binl(a), a.length * 8))
}
function rstr_hmac_md5(c, f) {
	var e = rstr2binl(c);
	if (e.length > 16) {
		e = binl_md5(e, c.length * 8)
	}
	var a = Array(16), d = Array(16);
	for ( var b = 0; b < 16; b++) {
		a[b] = e[b] ^ 909522486;
		d[b] = e[b] ^ 1549556828
	}
	var g = binl_md5(a.concat(rstr2binl(f)), 512 + f.length * 8);
	return binl2rstr(binl_md5(d.concat(g), 512 + 128))
}
function rstr2hex(c) {
	try {
		hexcase
	} catch (g) {
		hexcase = 0
	}
	var f = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
	var b = "";
	var a;
	for ( var d = 0; d < c.length; d++) {
		a = c.charCodeAt(d);
		b += f.charAt((a >>> 4) & 15) + f.charAt(a & 15)
	}
	return b
}
function str2rstr_utf8(c) {
	var b = "";
	var d = -1;
	var a, e;
	while (++d < c.length) {
		a = c.charCodeAt(d);
		e = d + 1 < c.length ? c.charCodeAt(d + 1) : 0;
		if (55296 <= a && a <= 56319 && 56320 <= e && e <= 57343) {
			a = 65536 + ((a & 1023) << 10) + (e & 1023);
			d++
		}
		if (a <= 127) {
			b += String.fromCharCode(a)
		} else {
			if (a <= 2047) {
				b += String
						.fromCharCode(192 | ((a >>> 6) & 31), 128 | (a & 63))
			} else {
				if (a <= 65535) {
					b += String.fromCharCode(224 | ((a >>> 12) & 15),
							128 | ((a >>> 6) & 63), 128 | (a & 63))
				} else {
					if (a <= 2097151) {
						b += String.fromCharCode(240 | ((a >>> 18) & 7),
								128 | ((a >>> 12) & 63),
								128 | ((a >>> 6) & 63), 128 | (a & 63))
					}
				}
			}
		}
	}
	return b
}
function rstr2binl(b) {
	var a = Array(b.length >> 2);
	for ( var c = 0; c < a.length; c++) {
		a[c] = 0
	}
	for ( var c = 0; c < b.length * 8; c += 8) {
		a[c >> 5] |= (b.charCodeAt(c / 8) & 255) << (c % 32)
	}
	return a
}
function binl2rstr(b) {
	var a = "";
	for ( var c = 0; c < b.length * 32; c += 8) {
		a += String.fromCharCode((b[c >> 5] >>> (c % 32)) & 255)
	}
	return a
}
function binl_md5(p, k) {
	p[k >> 5] |= 128 << ((k) % 32);
	p[(((k + 64) >>> 9) << 4) + 14] = k;
	var o = 1732584193;
	var n = -271733879;
	var m = -1732584194;
	var l = 271733878;
	for ( var g = 0; g < p.length; g += 16) {
		var j = o;
		var h = n;
		var f = m;
		var e = l;
		o = md5_ff(o, n, m, l, p[g + 0], 7, -680876936);
		l = md5_ff(l, o, n, m, p[g + 1], 12, -389564586);
		m = md5_ff(m, l, o, n, p[g + 2], 17, 606105819);
		n = md5_ff(n, m, l, o, p[g + 3], 22, -1044525330);
		o = md5_ff(o, n, m, l, p[g + 4], 7, -176418897);
		l = md5_ff(l, o, n, m, p[g + 5], 12, 1200080426);
		m = md5_ff(m, l, o, n, p[g + 6], 17, -1473231341);
		n = md5_ff(n, m, l, o, p[g + 7], 22, -45705983);
		o = md5_ff(o, n, m, l, p[g + 8], 7, 1770035416);
		l = md5_ff(l, o, n, m, p[g + 9], 12, -1958414417);
		m = md5_ff(m, l, o, n, p[g + 10], 17, -42063);
		n = md5_ff(n, m, l, o, p[g + 11], 22, -1990404162);
		o = md5_ff(o, n, m, l, p[g + 12], 7, 1804603682);
		l = md5_ff(l, o, n, m, p[g + 13], 12, -40341101);
		m = md5_ff(m, l, o, n, p[g + 14], 17, -1502002290);
		n = md5_ff(n, m, l, o, p[g + 15], 22, 1236535329);
		o = md5_gg(o, n, m, l, p[g + 1], 5, -165796510);
		l = md5_gg(l, o, n, m, p[g + 6], 9, -1069501632);
		m = md5_gg(m, l, o, n, p[g + 11], 14, 643717713);
		n = md5_gg(n, m, l, o, p[g + 0], 20, -373897302);
		o = md5_gg(o, n, m, l, p[g + 5], 5, -701558691);
		l = md5_gg(l, o, n, m, p[g + 10], 9, 38016083);
		m = md5_gg(m, l, o, n, p[g + 15], 14, -660478335);
		n = md5_gg(n, m, l, o, p[g + 4], 20, -405537848);
		o = md5_gg(o, n, m, l, p[g + 9], 5, 568446438);
		l = md5_gg(l, o, n, m, p[g + 14], 9, -1019803690);
		m = md5_gg(m, l, o, n, p[g + 3], 14, -187363961);
		n = md5_gg(n, m, l, o, p[g + 8], 20, 1163531501);
		o = md5_gg(o, n, m, l, p[g + 13], 5, -1444681467);
		l = md5_gg(l, o, n, m, p[g + 2], 9, -51403784);
		m = md5_gg(m, l, o, n, p[g + 7], 14, 1735328473);
		n = md5_gg(n, m, l, o, p[g + 12], 20, -1926607734);
		o = md5_hh(o, n, m, l, p[g + 5], 4, -378558);
		l = md5_hh(l, o, n, m, p[g + 8], 11, -2022574463);
		m = md5_hh(m, l, o, n, p[g + 11], 16, 1839030562);
		n = md5_hh(n, m, l, o, p[g + 14], 23, -35309556);
		o = md5_hh(o, n, m, l, p[g + 1], 4, -1530992060);
		l = md5_hh(l, o, n, m, p[g + 4], 11, 1272893353);
		m = md5_hh(m, l, o, n, p[g + 7], 16, -155497632);
		n = md5_hh(n, m, l, o, p[g + 10], 23, -1094730640);
		o = md5_hh(o, n, m, l, p[g + 13], 4, 681279174);
		l = md5_hh(l, o, n, m, p[g + 0], 11, -358537222);
		m = md5_hh(m, l, o, n, p[g + 3], 16, -722521979);
		n = md5_hh(n, m, l, o, p[g + 6], 23, 76029189);
		o = md5_hh(o, n, m, l, p[g + 9], 4, -640364487);
		l = md5_hh(l, o, n, m, p[g + 12], 11, -421815835);
		m = md5_hh(m, l, o, n, p[g + 15], 16, 530742520);
		n = md5_hh(n, m, l, o, p[g + 2], 23, -995338651);
		o = md5_ii(o, n, m, l, p[g + 0], 6, -198630844);
		l = md5_ii(l, o, n, m, p[g + 7], 10, 1126891415);
		m = md5_ii(m, l, o, n, p[g + 14], 15, -1416354905);
		n = md5_ii(n, m, l, o, p[g + 5], 21, -57434055);
		o = md5_ii(o, n, m, l, p[g + 12], 6, 1700485571);
		l = md5_ii(l, o, n, m, p[g + 3], 10, -1894986606);
		m = md5_ii(m, l, o, n, p[g + 10], 15, -1051523);
		n = md5_ii(n, m, l, o, p[g + 1], 21, -2054922799);
		o = md5_ii(o, n, m, l, p[g + 8], 6, 1873313359);
		l = md5_ii(l, o, n, m, p[g + 15], 10, -30611744);
		m = md5_ii(m, l, o, n, p[g + 6], 15, -1560198380);
		n = md5_ii(n, m, l, o, p[g + 13], 21, 1309151649);
		o = md5_ii(o, n, m, l, p[g + 4], 6, -145523070);
		l = md5_ii(l, o, n, m, p[g + 11], 10, -1120210379);
		m = md5_ii(m, l, o, n, p[g + 2], 15, 718787259);
		n = md5_ii(n, m, l, o, p[g + 9], 21, -343485551);
		o = safe_add(o, j);
		n = safe_add(n, h);
		m = safe_add(m, f);
		l = safe_add(l, e)
	}
	return Array(o, n, m, l)
}
function md5_cmn(h, e, d, c, g, f) {
	return safe_add(bit_rol(safe_add(safe_add(e, h), safe_add(c, f)), g), d)
}
function md5_ff(g, f, k, j, e, i, h) {
	return md5_cmn((f & k) | ((~f) & j), g, f, e, i, h)
}
function md5_gg(g, f, k, j, e, i, h) {
	return md5_cmn((f & j) | (k & (~j)), g, f, e, i, h)
}
function md5_hh(g, f, k, j, e, i, h) {
	return md5_cmn(f ^ k ^ j, g, f, e, i, h)
}
function md5_ii(g, f, k, j, e, i, h) {
	return md5_cmn(k ^ (f | (~j)), g, f, e, i, h)
}
function safe_add(a, d) {
	var c = (a & 65535) + (d & 65535);
	var b = (a >> 16) + (d >> 16) + (c >> 16);
	return (b << 16) | (c & 65535)
}
function bit_rol(a, b) {
	return (a << b) | (a >>> (32 - b))
};

/** 
* 
*  Base64 encode / decode 
* 
*  @author haitao.tu 
*  @date   2010-04-26 
*  @email  tuhaitao@foxmail.com 
* 
*/  
   
function Base64() {  
   
    // private property  
    _keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";  
   
    // public method for encoding  
    this.encode = function (input) {  
        var output = "";  
        var chr1, chr2, chr3, enc1, enc2, enc3, enc4;  
        var i = 0;  
        input = _utf8_encode(input);  
        while (i < input.length) {  
            chr1 = input.charCodeAt(i++);  
            chr2 = input.charCodeAt(i++);  
            chr3 = input.charCodeAt(i++);  
            enc1 = chr1 >> 2;  
            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);  
            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);  
            enc4 = chr3 & 63;  
            if (isNaN(chr2)) {  
                enc3 = enc4 = 64;  
            } else if (isNaN(chr3)) {  
                enc4 = 64;  
            }  
            output = output +  
            _keyStr.charAt(enc1) + _keyStr.charAt(enc2) +  
            _keyStr.charAt(enc3) + _keyStr.charAt(enc4);  
        }  
        return output;  
    }  
   
    // public method for decoding  
    this.decode = function (input) {  
        var output = "";  
        var chr1, chr2, chr3;  
        var enc1, enc2, enc3, enc4;  
        var i = 0;  
        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");  
        while (i < input.length) {  
            enc1 = _keyStr.indexOf(input.charAt(i++));  
            enc2 = _keyStr.indexOf(input.charAt(i++));  
            enc3 = _keyStr.indexOf(input.charAt(i++));  
            enc4 = _keyStr.indexOf(input.charAt(i++));  
            chr1 = (enc1 << 2) | (enc2 >> 4);  
            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);  
            chr3 = ((enc3 & 3) << 6) | enc4;  
            output = output + String.fromCharCode(chr1);  
            if (enc3 != 64) {  
                output = output + String.fromCharCode(chr2);  
            }  
            if (enc4 != 64) {  
                output = output + String.fromCharCode(chr3);  
            }  
        }  
        output = _utf8_decode(output);  
        return output;  
    }  
   
    // private method for UTF-8 encoding  
    _utf8_encode = function (string) {
        string = string.replace(/\r\n/g,"\n");  
        var utftext = "";  
        for (var n = 0; n < string.length; n++) {  
            var c = string.charCodeAt(n);  
            if (c < 128) {  
                utftext += String.fromCharCode(c);  
            } else if((c > 127) && (c < 2048)) {  
                utftext += String.fromCharCode((c >> 6) | 192);  
                utftext += String.fromCharCode((c & 63) | 128);  
            } else {  
                utftext += String.fromCharCode((c >> 12) | 224);  
                utftext += String.fromCharCode(((c >> 6) & 63) | 128);  
                utftext += String.fromCharCode((c & 63) | 128);  
            }  
   
        }  
        return utftext;  
    }  
   
    // private method for UTF-8 decoding  
    _utf8_decode = function (utftext) {  
        var string = "";  
        var i = 0;  
        var c = c1 = c2 = 0;  
        while ( i < utftext.length ) {  
            c = utftext.charCodeAt(i);  
            if (c < 128) {  
                string += String.fromCharCode(c);  
                i++;  
            } else if((c > 191) && (c < 224)) {  
                c2 = utftext.charCodeAt(i+1);  
                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));  
                i += 2;  
            } else {  
                c2 = utftext.charCodeAt(i+1);  
                c3 = utftext.charCodeAt(i+2);  
                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));  
                i += 3;  
            }  
        }  
        return string;  
    }  
}  

/*
 * content：提示信息内容 parameterNames: 固定值请求参数名，字符串数组 parameterValues： 固定值请求参数值，字符串数组
 * parameterNameIds： 引用值请求参数名，字符串数组 parameterValueIds: 引用值请求参数ID，字符串数组 dataType:
 * 'xml','html','script','json','jsonp','text' hintId: 提示位置 locationId: 回写位置
 * successCallback: 成功时的回调函数，null时回写locationId，''时执行返回内容，否则执行回调函数
 * completeCallback: 完成时的回调函数 errorCallback:
 * 错误时的回调函数，null时回写locationId，''时执行返回内容，否则执行回调函数
 */
$.extend({
	request : function(requestHeader, content, parameterNames, parameterValues,
			parameterNameIds, parameterValueIds, dataType, hintId, locationId,
			successCallback, errorCallback) {
		// 显示提示信息
		if (content != "")
			hintMessage(content, false);

		var requestData = "";
		var requestDesc = "";
		if (parameterNames.length > 0
				&& parameterNames.length == parameterValues.length) {
			for (i = 0; i < parameterNames.length; i++) {
				if (requestData.length > 0)
					requestData += '&';
				requestData += parameterNames[i] + '='
						+ $.convertToUnicode(parameterValues[i]);

				if (requestDesc.length > 0)
					requestDesc += '&';
				requestDesc += parameterNames[i] + '='	+ parameterValues[i];
			}
		}

		if (parameterNameIds.length > 0
				&& parameterNameIds.length == parameterValueIds.length) {
			for (i = 0; i < parameterNameIds.length; i++) {
				if (requestData.length > 0)
					requestData += '&';
				if ($('#' + parameterValueIds[i] + '').val() != undefined)
					requestData += parameterNameIds[i]
						+ '='
						+ $.convertToUnicode($(
							'#' + parameterValueIds[i] + '').val());
				else
					;

				if (requestDesc.length > 0)
					requestDesc += '&';
				if ($('#' + parameterValueIds[i] + '').val() != undefined)
					requestDesc += parameterNameIds[i]
						+ '='
						+ $('#' + parameterValueIds[i] + '').val();
				else
					;
			}
		}
		
		requestData += "&t=" + (new Date()).getTime().toString();

		requestDesc += "&t=" + (new Date()).getTime().toString();

		$.ajax({
			type : "post",
			url : requestHeader + "s",
			dataType : dataType,
			data : requestData,
			success : function(data, textStatus, jqXHR) {
				if (successCallback == null) {
					if (locationId != null)
						$('#' + locationId + '').html(jqXHR.responseText);
				} else if (successCallback == "")
					eval(jqXHR.responseText);
				else {
					if (successCallback.indexOf('$') >= 0)
						eval(successCallback);
					else {
						try {
							eval("$." + successCallback + "('" + jqXHR.responseText
								+ "')");
						} catch (e) {
							console.log(e);
							console.log(requestDesc);
							console.log(successCallback + ", " + jqXHR.responseText);
						}
					}
				}
			},
			complete : function(jqXHR, textStatus) {
			},
			error : function(jqXHR, textStatus, errorThrown) {
				if (errorCallback == null) {
					// if (hintId != null)
					hintError(content + "失败！", false, "javascript:void(0)");
					try {
						hintException(jqXHR.responseText, false, '');
					} catch (e) {
						console.log(e);
						console.log(requestDesc);
						console.log(jqXHR.responseText);
					}
				} else if (errorCallback == "") {
					try {
						eval(jqXHR.responseText);
					} catch (e) {
						console.log(e);
						console.log(requestDesc);
						console.log(jqXHR.responseText);

						hintError(content + "失败！", false, "javascript:void(0)");
						try {
							hintException(jqXHR.responseText, false, '');
						} catch (e) {
							console.log(e);
						}
					}
				} else {
					try {
						if (errorCallback.indexOf('$') >= 0)
							eval(errorCallback);
						else
							eval("$." + errorCallback + "('"
									+ jqXHR.responseText + "')");
					} catch (e) {
						console.log(e);
						console.log(requestDesc);
						console.log(errorCallback + ", " + jqXHR.responseText);

						hintError(content + "失败！", false, "javascript:void(0)");
						try {
							hintException(jqXHR.responseText, false, '');
						} catch (e) {
							console.log(e);
						}
					}
				}
			}
		});
	}
});

$
		.extend({
			validate : function(containerId) {
				var result = true;
				$('#' + containerId + ' :input')
						.each(
								function() {
									var elementId = $(this).attr('id');
									var elementValue = $(this).val();
									var validate = $(this).attr('validate');
									var message = $(this).attr('message');
									if (validate != null
											&& validate != 'undefined') {
										var validateJson = eval('(' + validate
												+ ')');
										$
												.each(
														validateJson,
														function(validateIndex,
																validateContent) {
															var content;
															// 验证必填项
															if (validateContent.require
																	&& (elementValue == null || elementValue.length == 0)) {
																if (message != null
																		&& message != 'undefined') {
																	var messageJson = eval('('
																			+ message
																			+ ')');
																	$
																			.each(
																					messageJson,
																					function(
																							messageIndex,
																							messageContent) {
																						if (messageContent.require != null
																								&& messageContent.require != 'undefined')
																							content = messageContent.require;
																						else
																							content = '请输入必填项';
																					});
																} else
																	content = '请输入必填项';
															}
															if (content != null
																	&& content.length > 0) {
																$
																		.flushTip(
																				elementId,
																				content);
																result = false;
																return false;
															}
															// 验证标识符
															var identifyCheck = /^[a-zA-Z0-9.]{1,}$/;
															if (validateContent.require
																	&& validateContent.identify
																	&& !elementValue
																			.match(identifyCheck)) {
																if (message != null
																		&& message != 'undefined') {
																	var messageJson = eval('('
																			+ message
																			+ ')');
																	$
																			.each(
																					messageJson,
																					function(
																							messageIndex,
																							messageContent) {
																						if (messageIndex == validateIndex) {
																							if (messageContent.identify != null
																									&& messageContent.identify != 'undefined')
																								content = messageContent.identify;
																							else
																								content = '必须为字母开头且由字母和小数点组成的字符串';
																						}
																					});
																} else
																	content = '必须为字母开头且由字母和小数点组成的字符串';
															}
															if (content != null
																	&& content.length > 0) {
																$
																		.flushTip(
																				elementId,
																				content);
																result = false;
																return false;
															}
															// 验证数字
															if (validateContent.require
																	&& validateContent.numeric
																	&& !$
																			.isNumeric(elementValue)) {
																if (message != null
																		&& message != 'undefined') {
																	var messageJson = eval('('
																			+ message
																			+ ')');
																	$
																			.each(
																					messageJson,
																					function(
																							messageIndex,
																							messageContent) {
																						if (messageIndex == validateIndex) {
																							if (messageContent.numeric != null
																									&& messageContent.numeric != 'undefined')
																								content = messageContent.numeric;
																							else
																								content = '必须为数字';
																						}
																					});
																} else
																	content = '必须为数字';
															}
															if (content != null
																	&& content.length > 0) {
																$
																		.flushTip(
																				elementId,
																				content);
																result = false;
																return false;
															}
															// 验证最小长度
															var sum = 0;
															for (i = 0; i < elementValue.length; i++) {
																if ((elementValue
																		.charCodeAt(i) >= 0)
																		&& (elementValue
																				.charCodeAt(i) <= 255)) {
																	sum = sum + 1;
																} else {
																	sum = sum + 2;
																}
															}
															if (validateContent.minLength != null
																	&& validateContent.minLength != 'undefined'
																	&& sum < validateContent.minLength) {
																if (message != null
																		&& message != 'undefined') {
																	var messageJson = eval('('
																			+ message
																			+ ')');
																	$
																			.each(
																					messageJson,
																					function(
																							messageIndex,
																							messageContent) {
																						if (messageIndex == validateIndex) {
																							if (messageContent.minLength != null
																									&& messageContent.minLength != 'undefined')
																								content = messageContent.minLength;
																							else
																								content = '最小长度为'
																										+ validateContent.minLength
																										+ '个字符，或者'
																										+ Math
																												.ceil(validateContent.minLength / 2)
																										+ '个汉字';
																						}
																					});
																} else
																	content = '最小长度为'
																			+ validateContent.minLength
																			+ '个字符，或者'
																			+ Math
																					.ceil(validateContent.minLength / 2)
																			+ '个汉字';
															}
															if (content != null
																	&& content.length > 0) {
																$
																		.flushTip(
																				elementId,
																				content);
																result = false;
																return false;
															}
															// 验证最大长度
															if (validateContent.maxLength != null
																	&& validateContent.maxLength != 'undefined'
																	&& sum > validateContent.maxLength) {
																if (message != null
																		&& message != 'undefined') {
																	var messageJson = eval('('
																			+ message
																			+ ')');
																	$
																			.each(
																					messageJson,
																					function(
																							messageIndex,
																							messageContent) {
																						if (messageIndex == validateIndex) {
																							if (messageContent.maxLength != null
																									&& messageContent.maxLength != 'undefined')
																								content = messageContent.maxLength;
																							else
																								content = '最大长度为'
																										+ validateContent.maxLength
																										+ '个字符，或者'
																										+ Math
																												.floor(validateContent.maxLength / 2)
																										+ '个汉字';
																						}
																					});
																} else
																	content = '最大长度为'
																			+ validateContent.maxLength
																			+ '个字符，或者'
																			+ Math
																					.floor(validateContent.maxLength / 2)
																			+ '个汉字';
															}
															if (content != null
																	&& content.length > 0) {
																$
																		.flushTip(
																				elementId,
																				content);
																result = false;
																return false;
															}
														});
										if (!result)
											return result;
									}
								});
				return result;
			}
		});

$.extend({
	flushTip : function(elementId, content) {
		$('#' + elementId + '').grumble({
			text : content,
			angle : 200,
			distance : 0,
			showAfter : 100,
			// type: 'alt-',
			hideAfter : 5000
		});
	}
});

$.extend({
	switchblank : function(input, check, setting) {
		// 设置内容为空，是onclick事件；检测内容为空，是onblur事件
		if ((setting == '' || check == '')
				&& $('#' + input + '').val() == check)
			$('#' + input + '').val(setting);
		else
			;
	}
});

$.extend({
	showtime : function(date_time) {
		var today = new Date();
		var year = today.getFullYear();// 年
		var month = today.getMonth() + 1;// 月
		var day = today.getDate();// 日
		var hours = today.getHours();// 时
		var minutes = today.getMinutes();// 分
		var seconds = today.getSeconds();// 秒

		var weekday = today.getDay();// 周几
		if (weekday == 1)
			weekday = "星期一";
		if (weekday == 2)
			weekday = "星期二";
		if (weekday == 3)
			weekday = "星期三";
		if (weekday == 4)
			weekday = "星期四";
		if (weekday == 5)
			weekday = "星期五";
		if (weekday == 6)
			weekday = "星期六";
		if (weekday == 7)
			weekday = "星期日";

		if (month <= 9)
			month = '0' + month;
		if (day <= 9)
			day = '0' + day;
		if (hours <= 9)
			hours = '0' + hours;
		if (minutes <= 9)
			minutes = '0' + minutes;
		if (seconds <= 9)
			seconds = '0' + seconds;

		$('#' + date_time + '').text(
				year + '-' + month + '-' + day + ' ' + hours + ':' + minutes
						+ ':' + seconds + ' ' + weekday);
		setTimeout('$(this).showtime(' + date_time + ')', 1000);
	}
});

// 将内容转换成Unicode
$
		.extend({
			convertToUnicode : function(keyValue) {
				// var base64 = new Base64();
                //
				// escapeKeyValue = base64.encode(keyValue) + ":decode";
				var base64 = new Base64();
				var escapeKeyValue = base64.encode(keyValue) + ":decode";

				// var escapeKeyValue = escape(keyValue);
				// escapeKeyValue = escapeKeyValue.replace(/%20/ig, "\\u0020")
				// 	.replace(/%21/ig, "\\u0021").replace(/%22/ig, "\\u0022").replace(/%23/ig, "\\u0023")
				// 	.replace(/%24/ig, "\\u0024").replace(/%25/ig, "\\u0025").replace(/%26/ig, "\\u0026")
				// 	.replace(/%27/ig, "\\u0027").replace(/%28/ig, "\\u0028").replace(/%29/ig, "\\u0029")
				// 	.replace(/%2A/ig, "\\u002A").replace(/%2B/ig, "\\u002B").replace(/%2C/ig, "\\u002C")
				// 	.replace(/%2D/ig, "\\u002D").replace(/%2E/ig, "\\u002E").replace(/%2F/ig, "\\u002F")
				// 	.replace(/%3A/ig, "\\u003A").replace(/%3B/ig, "\\u003B").replace(/%3C/ig, "\\u003C")
				// 	.replace(/%3D/ig, "\\u003D").replace(/%3E/ig, "\\u003E").replace(/%3F/ig, "\\u003F")
				// 	.replace(/%40/ig, "\\u0040").replace(/%5B/ig, "\\u005B").replace(/%5C/ig, "\\u005C")
				// 	.replace(/%5D/ig, "\\u005D").replace(/%5E/ig, "\\u005E").replace(/%5F/ig, "\\u005F")
				// 	.replace(/%60/ig, "\\u0060").replace(/%7B/ig, "\\u007B").replace(/%7C/ig, "\\u007C")
				// 	.replace(/%7D/ig, "\\u007D").replace(/%7E/ig, "\\u007E").replace(/%7F/ig, "\\u007F")
				// 	.replace(/%/ig, "\\");
				
				// while (escapeKeyValue.indexOf("%20") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%20"))
				// 			+ "\\u0020"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%20") + 3);
				// }
				// while (escapeKeyValue.indexOf("%21") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%21"))
				// 			+ "\\u0021"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%21") + 3);
				// }
				// while (escapeKeyValue.indexOf("%22") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%22"))
				// 			+ "\\u0022"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%22") + 3);
				// }
				// while (escapeKeyValue.indexOf("%23") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%23"))
				// 			+ "\\u0023"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%23") + 3);
				// }
				// while (escapeKeyValue.indexOf("%24") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%24"))
				// 			+ "\\u0024"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%24") + 3);
				// }
				// while (escapeKeyValue.indexOf("%25") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%25"))
				// 			+ "\\u0025"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%25") + 3);
				// }
				// while (escapeKeyValue.indexOf("%26") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%26"))
				// 			+ "\\u0026"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%26") + 3);
				// }
				// while (escapeKeyValue.indexOf("%27") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%27"))
				// 			+ "\\u0027"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%27") + 3);
				// }
				// while (escapeKeyValue.indexOf("%28") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%28"))
				// 			+ "\\u0028"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%28") + 3);
				// }
				// while (escapeKeyValue.indexOf("%29") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%29"))
				// 			+ "\\u0029"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%29") + 3);
				// }
				// while (escapeKeyValue.indexOf("%2A") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%2A"))
				// 			+ "\\u002A"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%2A") + 3);
				// }
				// while (escapeKeyValue.indexOf("%2B") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%2B"))
				// 			+ "\\u002B"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%2B") + 3);
				// }
				// while (escapeKeyValue.indexOf("%2C") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%2C"))
				// 			+ "\\u002C"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%2C") + 3);
				// }
				// while (escapeKeyValue.indexOf("%2D") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%2D"))
				// 			+ "\\u002D"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%2D") + 3);
				// }
				// while (escapeKeyValue.indexOf("%2E") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%2E"))
				// 			+ "\\u002E"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%2E") + 3);
				// }
				// while (escapeKeyValue.indexOf("%2F") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%2F"))
				// 			+ "\\u002F"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%2F") + 3);
				// }
				// while (escapeKeyValue.indexOf("%3A") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%3A"))
				// 			+ "\\u003A"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%3A") + 3);
				// }
				// while (escapeKeyValue.indexOf("%3B") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%3B"))
				// 			+ "\\u003B"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%3B") + 3);
				// }
				// while (escapeKeyValue.indexOf("%3C") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%3C"))
				// 			+ "\\u003C"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%3C") + 3);
				// }
				// while (escapeKeyValue.indexOf("%3D") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%3D"))
				// 			+ "\\u003D"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%3D") + 3);
				// }
				// while (escapeKeyValue.indexOf("%3F") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%3F"))
				// 			+ "\\u003F"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%3F") + 3);
				// }
				// while (escapeKeyValue.indexOf("%40") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%40"))
				// 			+ "\\u0040"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%40") + 3);
				// }
				// while (escapeKeyValue.indexOf("%5B") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%5B"))
				// 			+ "\\u005B"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%5B") + 3);
				// }
				// while (escapeKeyValue.indexOf("%5C") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%5C"))
				// 			+ "\\u005C"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%5C") + 3);
				// }
				// while (escapeKeyValue.indexOf("%5D") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%5D"))
				// 			+ "\\u005D"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%5D") + 3);
				// }
				// while (escapeKeyValue.indexOf("%5E") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%5E"))
				// 			+ "\\u005E"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%5E") + 3);
				// }
				// while (escapeKeyValue.indexOf("%5F") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%5F"))
				// 			+ "\\u005F"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%5F") + 3);
				// }
				// while (escapeKeyValue.indexOf("%60") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%60"))
				// 			+ "\\u0060"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%60") + 3);
				// }
				// while (escapeKeyValue.indexOf("%7B") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%7B"))
				// 			+ "\\u007B"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%7B") + 3);
				// }
				// while (escapeKeyValue.indexOf("%7C") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%7C"))
				// 			+ "\\u007C"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%7C") + 3);
				// }
				// while (escapeKeyValue.indexOf("%7D") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%7D"))
				// 			+ "\\u007D"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%7D") + 3);
				// }
				// while (escapeKeyValue.indexOf("%7E") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%7E"))
				// 			+ "\\u007E"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%7E") + 3);
				// }
				// while (escapeKeyValue.indexOf("%") >= 0) {
				// 	escapeKeyValue = escapeKeyValue.substring(0, escapeKeyValue
				// 			.indexOf("%"))
				// 			+ "\\"
				// 			+ escapeKeyValue.substring(escapeKeyValue
				// 					.indexOf("%") + 1);
				// }

				return escapeKeyValue;
			}
		});

// 回车按顺序跳转到下一元素
$.fn.extend({
	controlFocusMove : function(isMust, nextElementID, evt) {
		evt = (evt) ? evt : event;
		var charCode = (evt.charCode) ? evt.charCode : ((evt.which) ? evt.which
				: evt.keyCode);
		if (charCode == 13 || charCode == 3) {
			if (isMust && !($(this).val().length > 0)) {
				$(this).focus();
				return false;
			}
			$('#' + nextElementID + '').focus();
			
			return false;
		}
		return true;
	}
});

/**
 * 将数值四舍五入(保留2位小数)后格式化成金额形式
 * 
 * @param num
 *            数值(Number或者String)
 * @return 金额格式的字符串,如'1,234,567.45'
 * @type String
 */
function formatCurrency(num) {
	num = num.toString().replace(/\$|\,/g, '');
	if (isNaN(num))
		num = "0";
	sign = (num == (num = Math.abs(num)));
	num = Math.floor(num * 100 + 0.50000000001);
	cents = num % 100;
	num = Math.floor(num / 100).toString();
	if (cents < 10)
		cents = "0" + cents;
	for ( var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
		num = num.substring(0, num.length - (4 * i + 3)) + ','
				+ num.substring(num.length - (4 * i + 3));
	return (((sign) ? '' : '-') + num + '.' + cents);
}

/**
 * 将数值四舍五入(保留4位小数)后格式化成金额形式
 * 
 * @param num
 *            数值(Number或者String)
 * @return 金额格式的字符串,如'1,234,567.4345'
 * @type String
 */
function formatCurrencyTenThou(num) {
	num = num.toString().replace(/\$|\,/g, '');
	if (isNaN(num))
		num = "0";
	sign = (num == (num = Math.abs(num)));
	num = Math.floor(num * 10000 + 0.50000000001);
	cents = num % 10000;
	num = Math.floor(num / 10000).toString();
	if (cents < 10)
		cents = "000" + cents;
	else if (cents < 100)
		cents = "00" + cents;
	else if (cents < 1000)
		cents = "0" + cents;
	else
		;
	for ( var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
		num = num.substring(0, num.length - (4 * i + 3)) + ','
				+ num.substring(num.length - (4 * i + 3));
	return (((sign) ? '' : '-') + num + '.' + cents);
}

/**
 * 将数值四舍五入(保留1位小数)后格式化成金额形式
 * 
 * @param num
 *            数值(Number或者String)
 * @return 金额格式的字符串,如'1,234,567.4'
 * @type String
 */
/*
 * function formatCurrencyTenThou(num) { num =
 * num.toString().replace(/\$|\,/g,''); if(isNaN(num)) num = "0"; sign = (num ==
 * (num = Math.abs(num))); num = Math.floor(num*10+0.50000000001); cents =
 * num%10; num = Math.floor(num/10).toString(); for (var i = 0; i <
 * Math.floor((num.length-(1+i))/3); i++) num =
 * num.substring(0,num.length-(4*i+3))+','+ num.substring(num.length-(4*i+3));
 * return (((sign)?'':'-') + num + '.' + cents); }
 */

function setHighchartsTheme() {
	/**
	 * Grid theme for Highcharts JS
	 * 
	 * @author Torstein Honsi
	 */
	Highcharts.theme = {
		colors : [ '#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5',
				'#64E572', '#FF9655', '#FFF263', '#6AF9C4' ],
		chart : {
			backgroundColor : {
				linearGradient : {
					x1 : 0,
					y1 : 0,
					x2 : 1,
					y2 : 1
				},
				stops : [ [ 0, 'rgb(255, 255, 255)' ],
						[ 1, 'rgb(240, 240, 255)' ] ]
			},
			borderWidth : 2,
			plotBackgroundColor : 'rgba(255, 255, 255, .9)',
			plotShadow : true,
			plotBorderWidth : 1
		},
		title : {
			style : {
				color : '#000',
				font : 'bold 16px "Trebuchet MS", Verdana, sans-serif'
			}
		},
		subtitle : {
			style : {
				color : '#666666',
				font : 'bold 12px "Trebuchet MS", Verdana, sans-serif'
			}
		},
		xAxis : {
			gridLineWidth : 1,
			lineColor : '#000',
			tickColor : '#000',
			labels : {
				style : {
					color : '#000',
					font : '11px Trebuchet MS, Verdana, sans-serif'
				}
			},
			title : {
				style : {
					color : '#333',
					fontWeight : 'bold',
					fontSize : '12px',
					fontFamily : 'Trebuchet MS, Verdana, sans-serif'

				}
			}
		},
		yAxis : {
			minorTickInterval : 'auto',
			lineColor : '#000',
			lineWidth : 1,
			tickWidth : 1,
			tickColor : '#000',
			labels : {
				style : {
					color : '#000',
					font : '11px Trebuchet MS, Verdana, sans-serif'
				}
			},
			title : {
				style : {
					color : '#333',
					fontWeight : 'bold',
					fontSize : '12px',
					fontFamily : 'Trebuchet MS, Verdana, sans-serif'
				}
			}
		},
		legend : {
			itemStyle : {
				font : '9pt Trebuchet MS, Verdana, sans-serif',
				color : 'black'

			},
			itemHoverStyle : {
				color : '#039'
			},
			itemHiddenStyle : {
				color : 'gray'
			}
		},
		labels : {
			style : {
				color : '#99b'
			}
		},

		navigation : {
			buttonOptions : {
				theme : {
					stroke : '#CCCCCC'
				}
			}
		}
	};

	// Apply the theme
	var highchartsOptions = Highcharts.setOptions(Highcharts.theme);
}

function setCheckYearPicker() {
	$('#check_time_picker').datetimepicker({
		format : 'yyyy年',
		language : 'pt-CN',
		pickTime : false
	}).on(
			'changeDate',
			function(ev) {
				$('#check_time_picker').datetimepicker('hide');

				var relative_date = new Date();
				relative_date.setFullYear(ev.date.getFullYear() - 1, ev.date
						.getMonth(), ev.date.getDate());
				var over_date = new Date();
				over_date.setFullYear(ev.date.getFullYear() - 1, ev.date
						.getMonth(), ev.date.getDate());

				console.log(ev.date);
				showChart(ev.date.getFullYear(), ev.date.getMonth() + 1,
						ev.date.getDate(), relative_date.getFullYear(),
						relative_date.getMonth() + 1, relative_date.getDate(),
						over_date.getFullYear(), over_date.getMonth() + 1,
						over_date.getDate());
			});
	var picker = $('#check_time_picker').data('datetimepicker');
	picker.setDate(now);
}

function setCheckMonthPicker() {
	$('#check_time_picker').datetimepicker({
		format : 'yyyy年MM月',
		language : 'pt-CN',
		pickTime : false
	}).on(
			'changeDate',
			function(ev) {
				$('#check_time_picker').datetimepicker('hide');

				var relative_date = new Date();
				relative_date.setMonth(ev.date.getMonth() - 1, ev.date
						.getDate());
				var over_date = new Date();
				over_date.setFullYear(ev.date.getFullYear() - 1, ev.date
						.getMonth(), ev.date.getDate());

				console.log(ev.date);
				showChart(ev.date.getFullYear(), ev.date.getMonth() + 1,
						ev.date.getDate(), relative_date.getFullYear(),
						relative_date.getMonth() + 1, relative_date.getDate(),
						over_date.getFullYear(), over_date.getMonth() + 1,
						over_date.getDate());
			});
	var picker = $('#check_time_picker').data('datetimepicker');
	picker.setDate(now);
}

function setCheckDatePicker() {
	$('#check_time_picker').datetimepicker({
		format : 'yyyy年MM月dd日',
		language : 'pt-CN',
		pickTime : false
	}).on(
			'changeDate',
			function(ev) {
				$('#check_time_picker').datetimepicker('hide');

				var relative_date = new Date();
				relative_date.setDate(ev.date.getDate() - 1);
				var over_date = new Date();
				over_date.setFullYear(ev.date.getFullYear() - 1, ev.date
						.getMonth(), ev.date.getDate());

				console.log(ev.date);
				showChart(ev.date.getFullYear(), ev.date.getMonth() + 1,
						ev.date.getDate(), relative_date.getFullYear(),
						relative_date.getMonth() + 1, relative_date.getDate(),
						over_date.getFullYear(), over_date.getMonth() + 1,
						over_date.getDate());
			});
	var picker = $('#check_time_picker').data('datetimepicker');
	now.setDate(now.getDate() - 1);
	picker.setDate(now);
}
