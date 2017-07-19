/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {

    var swiper = new Swiper('.swiper-container', {
        nextButton: '.swiper-next',
        prevButton: '.swiper-prev',
        pagination: '.swiper-pagination',
        paginationType: 'fraction',
        speed: 0,
        simulateTouch: false,
        onlyExternal: true,
//        keyboardControl: true,
        autoHeight: true,
        roundLengths: true,
        onSlideNextStart: function () {
            if (swiper.isEnd) {
                $("#nextButton").prop("disabled", true);
                $("#nextButton").css("display", "none");
                $("#submitButton").css("display", "inline-block");
            } else if (swiper.isBeginning) {
                $("#prevButton").prop("disabled", true);
                $("#nextButton").css("display", "inline-block");
                $("#submitButton").css("display", "none");
                activateNavigationButtons();
            } else {
                $("#submitButton").css("display", "none");
                $("#nextButton").css("display", "inline-block");
                $("#nextButton").prop("disabled", true);
                $("#prevButton").prop("disabled", false);
                activateNavigationButtons();
            }
        },
        onSlidePrevStart: function () {
            if (swiper.isEnd) {
                $("#nextButton").prop("disabled", true);
                $("#nextButton").css("display", "none");
                $("#submitButton").css("display", "inline-block");
            } else if (swiper.isBeginning) {
                $("#prevButton").prop("disabled", true);
                $("#nextButton").css("display", "inline-block");
                $("#submitButton").css("display", "none");
                activateNavigationButtons();
            } else {
                $("#submitButton").css("display", "none");
                $("#nextButton").css("display", "inline-block");
                $("#nextButton").prop("disabled", true);
                $("#prevButton").prop("disabled", false);
                activateNavigationButtons();
            }
        },
        onSlideChangeStart: function () {
            $('.android-content').animate({scrollTop: 0}, 0);
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
    });

    $(".score td").on("click", function () {
        var id = $(this).parent().parent().parent().attr("id");
        $("#" + id + " .radioButtons label").removeClass("is-checked");
        $("#" + id + ' .radioButtons label:eq(' + ($(this).text() - 1) + ")").addClass("is-checked");
        var qId = id.split("-")[1];
        $(this).parent().find("td").removeClass("selected");
        $(this).addClass("selected");
    });

    $('.swiper-wrapper :input').bind("keyup click change", function () {
        activateNavigationButtons();
    });

    $(".openTextResponse").each(function () {
        $(this).val('');
    });
    $(".mdl-radio").each(function () {
        $(this).removeClass("is-checked");
    });
    $(".mdl-selectfield").each(function () {
        $(this).parent().find("span.mdl-selectfield__box-value").text("Please select an option");
    });

    $("#submitButton").on("click", function () {
        $(this).prop("disabled", true);
        $(this).removeClass("mdl-color--indigo-500 mdl-color-text--white");
        $(".swiper-container").css("display", "none");
        $(".centerSpinner").css("display", "flex");
        $("#loadingSpinner").css("display", "block");
        setTimeout(submit, 100);
//        submit();
    });
});


//TODO : COMPLETED HARD CODED!!!!
function activateNavigationButtons() {
    var sectionId = $('.swiper-slide-active').attr('id').split('-')[1];
    var mandatoryCount = 0;
    if (sectionId === "1") {
        mandatoryCount = 1;
    } else if (sectionId === "2" || sectionId === "3") {
        mandatoryCount = 26;
    } else if (sectionId === "5") {
        mandatoryCount = 1;
    }
    var count = 0;
    $('.swiper-slide-active :input').each(function () {
        if (sectionId === "1") {
            if ($(this).attr("type") === "radio" && $(this).is(':checked')) {
                count++;
            }
        } else if (sectionId !== "5") {
            if ($(this).attr("type") === "radio" && $(this).is(':checked')) {
                count++;
            }
            if ($(this).attr("type") === "text" && $(this).val() !== "") {
                count++;
            }
        } else {
            var selectedOption = $("#dropdown_function_56").parent().find(".mdl-selectfield__box-value").text();
            var optionValue = $('#dropdown_function_56 option').filter(function () {
                return $(this).text() === selectedOption;
            }).val();
            if (optionValue > 0) {
                count++;
            }
        }
    });

    if (count > 0 && mandatoryCount === count) {
        $('#nextButton').prop('disabled', false);
    } else if (count > 0 && mandatoryCount === 1 && sectionId === "5") {
        $("#submitButton").prop("disabled", false);
        $("#submitButton").addClass("mdl-color--indigo-500 mdl-color-text--white activated");
    } else if ($("#submitButton").hasClass("activated")) {
        //DO NOTHING IF SUBMIT BUTTON HAS CLASS 'ACTIVATED'; THIS MEANS ALL MANDATORY QUESTIONS HAVE BEEN ANSWERED
    } else {
        $("#submitButton").prop("disabled", true);
        $("#submitButton").removeClass("mdl-color--indigo-500 mdl-color-text--white");
        $('#nextButton').prop('disabled', true);
    }

    if (sectionId === "4") {
        $('#nextButton').prop('disabled', false);
    }

    if (sectionId === "1") {
        $('#prevButton').prop('disabled', true);
    }

    if (sectionId === "5") {
        var selectedOption = $("#dropdown_function_56").parent().find(".mdl-selectfield__box-value").text();
        var optionValue = $('#dropdown_function_56 option').filter(function () {
            return $(this).text() === selectedOption;
        }).val();

        if (optionValue === "0") {
            $("#submitButton").prop("disabled", true);
            $("#submitButton").removeClass("mdl-color--indigo-500 mdl-color-text--white");
        }
    }
}

function submit() {
    var responseArr = [];

    $(".mdl-radio__button").each(function () {
        if ($(this).is(":checked")) {
            var id = $(this).attr("id").split("-");
            var qId = id[0];
            var comment = "";
            if (qId === "1") {
                comment = $("#openText-1").val();
            }
            var jsonObj = {
                "questionId": id[0],
                "optionId": id[1],
                "comment": comment
            };
            responseArr.push(jsonObj);
        }
    });

    $(".openTextResponse").each(function () {
        if ($(this).attr("id") !== "openText-1" && $(this).val() !== "") {
            var id = $(this).attr("id").split("-");
            var jsonObj = {
                "questionId": id[1],
                "optionId": "0",
                "comment": $(this).val()
            };
            responseArr.push(jsonObj);
        }
    });

    $(".mdl-selectfield__select").each(function () {
        if ($(this).val() !== "0") {
            var id = $(this).attr("id").split("_");
            var jsonObj = {
                "questionId": id[2],
                "optionId": $(this).val(),
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