// JavaScript Document
$(window).load(function () {
    $.banner();
});

$(function () {

});


$.banner = (function () {
    var num = 0;
    num = $("#slider li").length;
    var html = "";
    html = "<a href='javascript:void(0);' {c}>{i}</a>";
    var lasthtml,
    thtml;
    lasthtml = "";

    for (var i = 0; i < num; i++) {
        thtml = "";
        if (i == 0) {
            thtml = html.replace("{c}", "class='active' ");

        } else {
            thtml = html.replace("{c}", "");

        }
        thtml = thtml.replace("{i}", i);

        lasthtml += thtml;

    };
    $("#pagenavi").html(lasthtml);
    var active = 0,
    as = $('#pagenavi a');

    for (var i = 0; i < as.length; i++) {
        (function () {
            var j = i;
            as[i].onclick = function () {
                t2.slide(j);
                return false;
            }

        })();

    }

    var t2 = new TouchSlider({
        id: 'slider',
        speed: 600,
        timeout: 6000,
        before: function (index) {
            as[active].className = '';
            active = index;
            as[active].className = 'active';

        }
    });
    if (t2 != null && t2 != undefined && t2.slides.length > 0) {
        setTimeout(function () { t2.resize(); }, 50);
    }



});
