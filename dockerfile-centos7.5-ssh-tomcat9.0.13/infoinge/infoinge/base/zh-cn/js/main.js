$(function(){
	$("input[type='text']").not(".no").each(function(){
		$(this).placeholder();
	});
	$(".tabs").each(function(){
		$(this).tabs();
	});
	resize();
	$(window).resize(function(event) {
		resize();
	});

	$(".main_tab table tr").click(function () {
	    $(this).toggleClass("on");
	})


	$(".div_check").click(function () {
	    $(this).toggleClass("on");
	})

	$('.tit_list li a').click(function () {
	    $('.tit_list li').removeClass('in');
	    $(this).parent().addClass('in');
	})
});

/*main*/
//

/*call*/
//
function resize(){
    $("body").height($(window).height());
    var ht = $("body").height();
    // $(".ht1").height(ht * 0.1).css("line-height", ht * 0.1 + "px");
    $(".ht2 .item").height(ht * 0.71 - 10);
    $(".ht4").height(10);
    $(".ht3 .item").height(ht * 0.22 - 10);

    $(".login_text,.login_main").height(ht);
	 
}
$.fn.placeholder = function () {
    var $obj = this;
    var v = $(this).val();
    $obj.focus(function (event) {
        if ($obj.val() == v) {
            $obj.val("");
        }
    });
    $obj.blur(function (event) {
        if ($obj.val() == "") {
            $obj.val(v);
        }
    });
}
$.fn.tabs = function () {
    var $obj = this;
    var $tabs = $obj.find(".ts >.t");
    var $cnts = $obj.find(".cs >.c");

    $tabs.click(function (event) {
        var i = $tabs.index(this);
        $cnts.hide();
        $cnts.eq(i).show();

        $tabs.removeClass('on');
        $(this).addClass('on');

        return false;
    });
    $tabs.first().click();
}