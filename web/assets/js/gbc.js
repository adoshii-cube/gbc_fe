/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    if ($("#demo").length > 0) {
        $('#demo').jplist({
            itemsBox: '.list',
            itemPath: '.list-item',
            panelPath: '.jplist-panel'
        });
    } else if ($(".swiper-container").length > 0) {
        var swiper = new Swiper('.swiper-container', {
            nextButton: '.swiper-next',
            prevButton: '.swiper-prev',
            pagination: '.swiper-pagination',
            paginationType: 'fraction',
            speed: 0,
            onlyExternal: true,
            keyboardControl: true,
            autoHeight: true,
            roundLengths: true,
            onSlideNextStart: function () {
                if (swiper.isEnd) {
                    $("#submitButton").css("display", "block");
                } else {
                    $("#submitButton").css("display", "none");
                }
            },
            onSlidePrevStart: function () {
                if (swiper.isEnd) {
                    $("#submitButton").css("display", "block");
                } else {
                    $("#submitButton").css("display", "none");
                }
            }
        });

//DISABLE TAB KEYPRESS DUE TO CONFLICT WITH SWIPER
        $(document).keydown(function (e)
        {
            var keycode1 = (e.keyCode ? e.keyCode : e.which);
            if (keycode1 === 0 || keycode1 === 9) {
                e.preventDefault();
                e.stopPropagation();
            }
        });
    }

    $(".question").hover(function () {
        $(this).toggleClass("mdl-shadow--3dp");
    });

    $(".radioButtons label").on("click", function () {
        var id = $(this).parent().parent().parent().parent().attr("id");
        var qId = id.split("-")[1];

        var value = $(this).find("input").val();

        $(this).parent().parent().parent().find("tr").eq(1).find("td").removeClass("selected");
        $(this).parent().parent().parent().find("tr").eq(1).find("td").filter(function () {
            return this.textContent.trim() === value;
        }).addClass("selected");
//        if (answeredQuestions.length === 0 || (answeredQuestions.length > 0 && !answeredQuestions.includes(qId))) {
//            answeredQuestions.push(qId);
//            mQuestionAnswered++;
//            $("#mQuestionCounter").text('');
//            $("#mQuestionCounter").text(mQuestionAnswered + "/" + $("#mQListSize").val());
//////////////        $(this).parent().parent().parent().parent().parent().addClass("answered");
//            if (mQuestionAnswered === parseInt($("#mQListSize").val())) {
//                $(".sectionMe").addClass("completed");
//            }
//            submitEnableDisable();
//    }
    });

    $(".score td").on("click", function () {
        var id = $(this).parent().parent().parent().attr("id");
        $("#" + id + " .radioButtons label").removeClass("is-checked");
        $("#" + id + ' .radioButtons label:eq(' + ($(this).text() - 1) + ")").addClass("is-checked");
        var qId = id.split("-")[1];
        $(this).parent().find("td").removeClass("selected");
        $(this).addClass("selected");
//        if (answeredQuestions.length === 0 || (answeredQuestions.length > 0 && !answeredQuestions.includes(qId))) {
//            answeredQuestions.push(qId);
//            mQuestionAnswered++;
//            $("#mQuestionCounter").text('');
//            $("#mQuestionCounter").text(mQuestionAnswered + "/" + $("#mQListSize").val());
///////////        $(this).parent().parent().parent().parent().addClass("answered");
//            if (mQuestionAnswered === parseInt($("#mQListSize").val())) {
//                $(".sectionMe").addClass("completed");
//            }
//            submitEnableDisable();
//        }
    });

});

