// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

// import "@hotwired/turbo-rails"
// import "./controllers"

import jquery from "jquery"
window.$ = jquery

$(function () {
    const topPageURL = "http://localhost:3000/";
    const dailyPageReg = topPageURL + "daily";
    const stepPageReg = new RegExp("^" + topPageURL + "step");
    const historyPageReg = topPageURL + "history";
    const foresightPageReg = topPageURL + "foresight";
    const myPageReg = topPageURL + "mypage";
    if (document.URL === topPageURL) {
        $("#header-hider").css("display", "none");
    } else {
        $("#header-hider").css("display", "block");
    }
    if (document.URL.match(dailyPageReg)) {
        $("#top-h1").text("日々の記録");
    } else if (document.URL.match(stepPageReg)) {
        $("#top-h1").text("STEPの記録");
    } else if (document.URL.match(historyPageReg)) {
        $("#top-h1").text("これまでの記録");
    } else if (document.URL.match(foresightPageReg)) {
        $("#top-h1").text("これからの展望?");
    } else if (document.URL.match(myPageReg)) {
        $("#top-h1").text("MyPage");
    }

    $(window).on("scroll", function () {
        if (document.URL === topPageURL) {
            $("#header-hider").fadeIn();
        }
        // if ($(".container").position().top < 800) {
        //     $("#top-text").fadeOut();
        // } else {
        //     $("#top-text").fadeIn();
        // }
    });

    // if ($("#title-trigger").position().top < 500) {
    //     $("#top-text").fadeOut();
    // }

    $('.fadeInUpTriggerOnce').on('inview', function (event, isInView) {
        if (isInView) {//表示領域に入った時
            $(this).addClass('animate__animated animate__fadeInUp');//クラス名が付与
        }
    });
    // $("#my-name").text(document.URL);
})