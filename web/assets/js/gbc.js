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
            simulateTouch: false,
            onlyExternal: true,
            keyboardControl: true,
            autoHeight: true,
            roundLengths: true,
            onSlideNextStart: function () {
                if (swiper.isEnd) {
                    $("#submitButton").css("display", "block");
                } else {
                    $("#submitButton").css("display", "none");
                    $("#nextButton").prop("disabled", true);
                    activateNavigationButtons();
                }
            },
            onSlidePrevStart: function () {
                if (swiper.isEnd) {
                    $("#submitButton").css("display", "block");
                } else {
                    $("#submitButton").css("display", "none");
                    $("#nextButton").prop("disabled", true);
                    activateNavigationButtons();
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

    $('.swiper-wrapper :input').bind("keyup click change", function () {
        activateNavigationButtons();
    });
});


//TODO : COMPLETED HARD CODED!!!!
function activateNavigationButtons() {
    var sectionId = $('.swiper-slide-active').attr('id').split('-')[1];
    var mandatoryCount = 0;
    if (sectionId === "1") {
        mandatoryCount = 2;
    } else if (sectionId === "2" || sectionId === "3") {
        mandatoryCount = 25;
    } else if (sectionId === "5") {
        mandatoryCount = 1;
    }
    var count = 0;
    $('.swiper-slide-active :input').each(function () {
        if (sectionId !== "5") {
            if ($(this).attr("type") === "radio" && $(this).is(':checked')) {
                count++;
            }
            if ($(this).attr("type") === "text" && $(this).val() !== "") {
                count++;
            }
        } else {
            var selectedOption = $("#dropdown_function_54").parent().find(".mdl-selectfield__box-value").text();
            var optionValue = $('#dropdown_function_54 option').filter(function () {
                return $(this).text() === selectedOption;
            }).val();
            if(optionValue > 0){
                count++;
            }
        }
    });

    if (count > 0 && mandatoryCount === count) {
        $('#nextButton').prop('disabled', false);
    } else {
        $('#nextButton').prop('disabled', true);
    }

    if (sectionId === "4") {
        $('#nextButton').prop('disabled', false);
    }
//    });
}


function submit() {
    var responseArr = [];

    // OPENTEXT response
    $(".mdl-radio__button").each(function () {
        if ($(this)[0].value !== "") {
            var id = $(this)[0].id.split("-");
            var value = $(this)[0].value;
            var jsonObj = {
                "questionId": id[1],
                "responseString": value,
                "comment": ""
            };
            responseArr.push(jsonObj);
        }
    });

    $(".openTextResponse").each(function () {
        if ($(this)[0].value !== "") {
            var id = $(this)[0].id.split("-");
            var value = $(this)[0].value;
            var jsonObj = {
                "questionId": id[1],
                "responseString": value,
                "comment": ""
            };
            responseArr.push(jsonObj);
        }
    });

    $(".mdl-selectfield__select").each(function () {
        if ($(this)[0].value !== "") {
            var id = $(this)[0].id.split("-");
            var value = $(this)[0].value;
            var jsonObj = {
                "questionId": id[1],
                "responseString": value,
                "comment": ""
            };
            responseArr.push(jsonObj);
        }
    });
    singleSubmitData(responseArr);
}

function singleSubmitData(responseArr) {
    console.log("entering singleSubmitData");
    console.log("singleSubmitData analyzing single_submit_rating");
    var postData = {'emp_rating': JSON.stringify(responseArr)};
    console.log("singleSubmitData postData : " + postData);
    $.ajax({
        type: "POST",
        url: "survey-submit.jsp",
        data: postData,
        async: false,
        success: function (resp) {
            console.log("singleSubmitData inside ajax success ");
            window.location.href = 'thankyou.jsp';
        },
        error: function (resp, err) {
            console.log("singleSubmitData error message : " + err);
        }
    });
    console.log("exiting singleSubmitData");
}