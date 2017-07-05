<%-- 
    Document   : index
    Created on : 27 Jun, 2017, 2:19:16 PM
    Author     : adoshi
--%>

<%@page import="org.owen.survey.Question"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>OWEN Analytics - AI driven people solutions</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <meta content="IE=11;IE=Edge" http-equiv="X-UA-Compatible">
        <meta charset="utf-8">

        <link href="assets/css/material.min.css" rel="stylesheet" type="text/css">
        <!--<link href="assets/css/materialdesignicons.css" media="all" rel="stylesheet" type="text/css" />-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>-->
        <link href="assets/css/gbc.css" rel="stylesheet" type="text/css">
        <link href="assets/css/mdl-selectfield.min.css" rel="stylesheet" type="text/css">

        <link href="assets/css/swiper.min.css" rel="stylesheet" type="text/css">

        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <link rel='shortcut icon' type='image/x-icon' href='assets/images/OWEN_Favicon.ico'/>
        <!-- Chrome, Firefox OS and Opera -->
        <meta name="theme-color" content="#303f9f">
        <!-- Windows Phone -->
        <meta name="msapplication-navbutton-color" content="#303f9f">
        <!-- iOS Safari -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="#303f9f">
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
            <header class="mdl-layout__header mdl-layout__header--waterfall">
                <div class="mdl-layout__header-row">
                    <!-- Title -->
                    <a id="switchUser">
                        <span class="android-title mdl-layout-title">
                            <img class="android-logo-image" src="assets/images/Logo.png" alt="Logo">
                        </span>
                    </a>
                    <!-- Add spacer, to align navigation to the right -->
                    <div class="mdl-layout-spacer"></div>
                    <!-- Navigation -->
                    <div class="android-navigation-container">
                        <nav class="mdl-navigation">
                            <div class="mdl-navigation__link" href="">HR Survey</div>
                        </nav>
                    </div>
                    <!-- Right aligned menu below button -->
                    <a>
                        <span class="android-mobile-title mdl-layout-title" id="switchUserMobile">
                            <img class="android-logo-image" src="assets/images/Logo.png" alt="Logo">&nbsp;HR Survey</span>
                    </a>
                </div>
            </header>
            <main class="android-content mdl-layout__content">
                <div class="page-content">
                    <div class="android-card-container mdl-grid">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <%
                                    Question qObj = new Question();
                                    Map<Integer, List<Question>> resultMap = qObj.getQuestionList();
                                    Map<Integer, Map<Integer, String>> optionMap = qObj.getOptionsList();

                                    for (Integer sectionId : resultMap.keySet()) {
                                        String sectionHeader = "";
                                        if (sectionId == 1) {
                                            sectionHeader = "Section 1: Introduction";
                                        } else if (sectionId == 2) {
                                            sectionHeader = "Section 2: HR Effectiveness";
                                        } else if (sectionId == 3) {
                                            sectionHeader = "Section 3: HR Importance";
                                        } else if (sectionId == 4) {
                                            sectionHeader = "Section 4: Other Questions about HR Services";
                                        } else if (sectionId == 5) {
                                            sectionHeader = "Section 5: About You";
                                        }
                                %>  
                                <div class="swiper-slide" id="section-<%=sectionId%>">
                                    <div class="sectionHeaderText">
                                        <h2><%=sectionHeader%></h2>
                                    </div>
                                    <%
                                        if (sectionId == 1) {
                                    %>
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="section-<%=sectionId%>">

                                        <%
                                            List<Question> qList = resultMap.get(sectionId);
                                            for (int i = 0; i < qList.size(); i++) {
                                                Question q = qList.get(i);
                                                int questionId = q.getQuestionId();
                                                Map<Integer, String> qoMap = optionMap.get(questionId);
                                        %>
                                        <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp section1Table" id="table-section-<%=sectionId%>">
                                            <thead>
                                                <tr>
                                                    <th>Question</th>
                                                    <th>Fully</th>
                                                    <th>Partially</th>
                                                    <th>To a limited extent</th>
                                                    <th>Not at all</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr >
                                                    <td><%=q.getQuestionText()%><%if (q.getMandatory() == 1) {%><div class="mandatory">&nbsp;*</div><%}%></td>
                                                    <%
                                                        for (int optionId : qoMap.keySet()) {
                                                    %>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="<%=q.getQuestionId()%>-<%=optionId%>">
                                                            <input type="radio" id="<%=q.getQuestionId()%>-<%=optionId%>" name="<%=q.getQuestionId()%>" class="mdl-radio__button" value="<%=optionId%>">
                                                        </label>
                                                    </td>
                                                    <%
                                                        }
                                                    %>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="mdl-textfield mdl-js-textfield openTextField">
                                            <div class="questionInstructionText">Please add examples</div>
                                            <textarea class="mdl-textfield__input openTextResponse" type="text" rows="5" maxrows="5" id="openText-<%=questionId%>" ></textarea>
                                            <label class="mdl-textfield__label" for="openText"><i>Note: Your responses are <b>confidential</b></i></label>
                                            <input type="hidden" id="qtype_" value="" /> 
                                        </div>
                                    </div>
                                    <%
                                        }
                                    } else if (sectionId == 2 || sectionId == 3) {
                                    %>
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="section-<%=sectionId%>">
                                        <%if (sectionId == 2) {%>
                                        <div class="sectionInstructionText">For each of the following HR Services, please rate each in terms of how effectively the service provided meets your expectation and needs. Use Not Applicable (NA) if you have not used this service and cannot judge its <span class="underline"><b>effectiveness</b></span>.</div>
                                        <div class="sectionInstructionTable">
                                            <div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-cell--8-col-phone mdl-card mdl-shadow--3dp key">
                                                <div class="mdl-card__title mdl-card--expand">
                                                    <h2 class="mdl-card__title-text">Key</h2>
                                                </div>
                                                <div class="mdl-card__supporting-text">
                                                    1 - Does not meet my expectations || 2 - Meets some of my expectations || 3 - Meets all of my expectations || 4 - Exceeds my expectations || NA - You have not used this service and cannot judge its effectiveness

                                                </div>
                                            </div>
                                        </div>
                                        <%} else if (sectionId == 3) {%>
                                        <div class="sectionInstructionText">For each of the following HR Services, please rate each in terms of its importance in meeting your expectation and needs. Use Not Applicable (NA) if you have not used this service and cannot judge its <span class="underline"><b>importance</b></span>.</div>
                                        <div class="sectionInstructionTable">
                                            <div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-cell--8-col-phone mdl-card mdl-shadow--3dp key">
                                                <div class="mdl-card__title mdl-card--expand">
                                                    <h2 class="mdl-card__title-text">Key</h2>
                                                </div>
                                                <div class="mdl-card__supporting-text">
                                                    1 - Not important at all || 2 - Somewhat important || 3 - Very important || 4 - Critical || NA - You have not used this service and cannot judge its importance
                                                </div>
                                            </div>
                                        </div>
                                        <%}%>

                                        <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp section2Table" id="table-section-<%=sectionId%>">
                                            <thead>
                                                <tr>
                                                    <th>Question</th>
                                                    <th>1</th>
                                                    <th>2</th>
                                                    <th>3</th>
                                                    <th>4</th>
                                                    <th>N/A</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    List<Question> qList = resultMap.get(sectionId);
                                                    for (int i = 0; i < qList.size(); i++) {
                                                        Question q = qList.get(i);
                                                        int questionId = q.getQuestionId();
                                                        Map<Integer, String> qoMap = optionMap.get(questionId);
                                                %>
                                                <tr>
                                                    <td><%=q.getQuestionText()%><%if (q.getMandatory() == 1) {%><div class="mandatory">&nbsp;*</div><%}%></td>
                                                    <%
                                                        for (int optionId : qoMap.keySet()) {
                                                    %>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="<%=q.getQuestionId()%>-<%=optionId%>">
                                                            <input type="radio" id="<%=q.getQuestionId()%>-<%=optionId%>" name="<%=q.getQuestionId()%>" class="mdl-radio__button" value="<%=optionId%>">
                                                        </label>
                                                    </td>
                                                    <%
                                                        }
                                                    %>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                    <%} else if (sectionId == 4) {%>
                                    <%
                                        List<Question> qList = resultMap.get(sectionId);
                                        for (int i = 0; i < qList.size(); i++) {
                                            Question q = qList.get(i);
                                            int questionId = q.getQuestionId();
                                    %>
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="question-<%=questionId%>">
                                        <div class="questionText">
                                            <h2><%=q.getQuestionText()%></h2>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield openTextFieldNoInstructions">
                                            <textarea class="mdl-textfield__input openTextResponse" type="text" rows="5" maxrows="5" id="openText-<%=questionId%>" ></textarea>
                                            <label class="mdl-textfield__label" for="openText"><i>Note: Your responses are <b>confidential</b></i></label>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    } else if (sectionId == 5) {%>
                                    <%
                                        List<Question> qList = resultMap.get(sectionId);
                                        for (int i = 0; i < qList.size(); i++) {
                                            Question q = qList.get(i);
                                            int questionId = q.getQuestionId();
                                    %>
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone question" id="question-<%=questionId%>">
                                        <div class="questionText">
                                            <h2><%=q.getQuestionText()%><%if (q.getMandatory() == 1) {%><div class="mandatory">&nbsp;*</div><%}%></h2>
                                        </div>
                                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                                            <select id="dropdown_function_<%=q.getQuestionId()%>" name="function" class="mdl-selectfield__select" required>
                                                <option value="0">Please select an option</option>
                                                <%
                                                    Map<Integer, String> qoMap = optionMap.get(questionId);
                                                    for (int optionId : qoMap.keySet()) {
                                                %>
                                                <option value=<%=optionId%>><%=qoMap.get(optionId)%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                            <!--<label class="mdl-selectfield__label" for="myselect">Please select an option</label>-->
                                            <!--<span class="mdl-selectfield__error">Please select a function</span>-->
                                        </div>
                                    </div>
                                    <%}
                                        }%>
                                </div>
                                <%}%>
                            </div>
                            <!-- Add Arrows -->
                            <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone note">
                                <div><i>(Note: All questions marked <span class="mandatory">*</span> must be answered to proceed to the next page)</i></div>
                            </div>
                            <div class="mdl-grid">
                                <div class="mdl-cell mdl-cell--4-col mdl-cell--3-col-tablet mdl-cell--3-col-phone">
                                    <button class="mdl-button mdl-js-button swiper-prev mdl-button--raised" id="prevButton" disabled>
                                        Previous
                                    </button>
                                    <button class="mdl-button mdl-js-button swiper-next mdl-button--raised" id="nextButton" disabled>
                                        Next
                                    </button>
                                </div>
                                <div class="mdl-cell mdl-cell--4-col mdl-cell--2-col-tablet mdl-cell--1-col-phone paginationContainer">
                                    <!-- Add Pagination -->
                                    <div class="swiper-pagination"></div>
                                </div>    
                                <div class="mdl-cell mdl-cell--4-col mdl-cell--3-col-tablet mdl-cell--4-col-phone">
                                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="submitButton" disabled>
                                        Submit
                                    </button>
                                    <div class="mdl-tooltip mdl-tooltip--large mdl-tooltip--left" for="submitButton">
                                        Submit your responses
                                    </div>
                                </div>
                            </div>
                            <!--<div class="swiper-button-next"></div>-->
                            <!--<div class="swiper-button-prev"></div>-->
                        </div>
                        <div class="centerSpinner">
                            <div class="android-card-container mdl-grid">
                                <div class="mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-cell--4-col-phone">
                                    <div class="mdl-spinner mdl-js-spinner is-active" id="loadingSpinner"></div>
                                </div>
                            </div>
                        </div>
                    </div>             
                </div>
            </main>
        </div>
    </div>
    <script src="assets/js/material.min.js"></script>
    <script src="assets/js/mdl-selectfield.min.js"></script>
    <script src="assets/js/gbc.js"></script>
    <script src="assets/js/swiper.min.js"></script>
</body>
</html>
