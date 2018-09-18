﻿/*-----------------------------------------------Andrew_Popupwin----------------------------------------*/
function Andrew_Popupwin (setting){
    option = $.extend({
        dom: "",
        position: "",
        effectIn: "",
        effectOut: "",
        hasMask: true,
        closeBtn: "",
        OneButton: "",
        maskPosition: "",
        toggleIcon: "",
        callback :function () {},
        scrollback :function () {}
    },setting);

    if (option.dom) {
        $(option.dom).css({
            "position": "fixed",
            "z-index": parseInt(option.maskPosition)+1
        });
        setPopupStyle();
        $(window).resize(function(){
            setPopupStyle();
        });
    }

    if (option.position === 'offset') {
        var main_scroll = $("main").scrollTop() + $(option.dom).outerHeight();
        $("main").scroll(function(sc){
            var scrolltop = $(this).scrollTop();
            if(scrolltop < main_scroll) {
                if ($(option.OneButton).hasClass("ak-is_active")) {
                    ClickHideModal();
                    $(option.dom).removeClass("dis_none");
                } else {
                    $(option.dom).removeAttr("style");
                }
            } else if(scrolltop > main_scroll) {
                if ($(option.OneButton).hasClass("ak-is_active")) {
                    ClickHideModal();
                    $(option.dom).removeClass("dis_none");
                } else {
                    $(option.dom).removeAttr("style");
                }
            }
            option.scrollback($(option));
            sc.preventDefault();
        });
    }
    if (option.hasMask) {
        addModalMask();
        $("main").removeClass("scrolling");
    }

    if (option.maskPosition) {
        $('#popup_mask').css({
            "z-index": option.maskPosition
        });
        if (option.position === 'offset') {
            var otm = $(option.OneButton).offset().top;
            var ohm = $(option.OneButton).outerHeight();
            $('#popup_mask').css({
                "top": otm + ohm
            });
        }
    }
    if (option.OneButton) {
        $(option.closeBtn).unbind("click");
        $(option.closeBtn).on('click', function() {
            ClickHideModal();
        });

        $(option.OneButton).toggleClass("ak-is_active");
        if ($(option.OneButton).hasClass("ak-is_active")) {
            addModalMask();
            if (option.position === 'offset') {
                var oth = $(option.OneButton).offset().top + $(option.OneButton).outerHeight();
                $(option.dom).css({
                    "top": oth
                })
            }
            $(option.dom).removeClass("animated " + option.effectOut).addClass("animated " + option.effectIn).removeClass("dis_none");
            if (option.toggleIcon) {
                if (option.position != 'offset') {
                    $(option.OneButton).append("<i />");
                    $(option.OneButton).children("i").eq(0).hide();
                    $(option.OneButton).children("i").eq(1).addClass(option.toggleIcon);
                }
            }
            option.callback($(option));
        } else {
            ClickHideModal();
        }
    } else {
        $(option.dom).removeClass("animated " + option.effectOut).addClass("animated " + option.effectIn).removeClass("dis_none");
        addModalMask();
        option.callback($(option));
        $(option.closeBtn).unbind("click");
        $(option.closeBtn).on('click', function(ec) {
            ec.preventDefault();
            ClickHideModal();
        });
    }
    function addModalMask() {
        if ($("#popup_mask").length < 1) {
            $("main").append('<div id="popup_mask" class="ak-mask"></div>');
            $('#popup_mask').show();
        }
    }
    function setPopupStyle() {
        var ww = $(window).width();
        var wh = $(window).height();
        var dw = $(option.dom).outerWidth();
        var dh = $(option.dom).outerHeight();

        if (option.position === 'top') {
            $(option.dom).css({
                "left": (ww / 2) - (dw / 2),
                "top": 0
            });
        } else if (option.position === 'bottom') {
            $(option.dom).css({
                "left": (ww / 2) - (dw / 2),
                "bottom": 0
            });
        } else if (option.position === 'left') {
            $(option.dom).css({
                "left": 0,
                "top": 0
            });
        } else if (option.position === 'right') {
            $(option.dom).css({
                "right": 0,
                "top": 0
            });
        } else if (option.position === 'offset') {
            var ot = $(option.OneButton).offset().top;
            var oh = $(option.OneButton).outerHeight();
            $(option.dom).css({
                "left": 0,
                "top": ot + oh
            });
        } else { // middle
            $(option.dom).css({
                "left": (ww / 2) - (dw / 2),
                "top": (wh / 2) - (dh / 2)
            });
        }
    }
    function ClickHideModal(){
        if (option.OneButton) {
            $(option.dom).removeClass("animated " + option.effectIn).addClass("animated " + option.effectOut);
            $(option.OneButton).children("i").eq(0).show();
            $(option.OneButton).children("i").eq(1).remove();
            $(option.OneButton).removeClass(option.toggleIcon);
        } else {
            if (option.effectOut) {
                $(option.dom).removeClass("animated " + option.effectIn).addClass("animated " + option.effectOut);
            }
        }
        setTimeout(function() {
            $("main").addClass("scrolling");
            $(option.OneButton).removeClass("ak-is_active");
            $('#popup_mask').fadeOut().remove();
            $(option.dom).addClass("dis_none").removeAttr("style");
        },700);
    }
}