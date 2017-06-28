<%-- 
    Document   : index
    Created on : 27 Jun, 2017, 2:19:16 PM
    Author     : adoshi
--%>

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
        <meta name="theme-color" content="#010101">
        <!-- Windows Phone -->
        <meta name="msapplication-navbutton-color" content="#010101">
        <!-- iOS Safari -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="#010101">
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
                            <!-- Add Pagination -->
                            <div class="swiper-pagination"></div>
                            <div class="swiper-wrapper">
                                <div class="swiper-slide" id="section1">
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question"id="mQuestion-">
                                        <div class="questionText">
                                            <h2>Question text for Section 1 Question 1 goes here</h2>
                                        </div>
                                        <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp section1Table" id="question3">
                                            <thead>
                                                <tr>
                                                    <th>Fully</th>
                                                    <th>Partially</th>
                                                    <th>To a limited extent</th>
                                                    <th>Not at all</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s1q1o1">
                                                            <input type="radio" id="s1q1o1" class="mdl-radio__button" name="s1q1" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s1q1o2">
                                                            <input type="radio" id="s1q1o2" class="mdl-radio__button" name="s1q1" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s1q1o3">
                                                            <input type="radio" id="s1q1o3" class="mdl-radio__button" name="s1q1" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s1q1o4">
                                                            <input type="radio" id="s1q1o4" class="mdl-radio__button" name="s1q1" value="1">
                                                        </label>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--                                        <table class="meScore" id="table-">
                                                                                    <tr class="score">
                                                                                        <td>1</td>
                                                                                        <td>2</td>
                                                                                        <td>3</td>
                                                                                        <td>4</td>
                                                                                        <td>5</td>
                                                                                    </tr>
                                                                                    <tr class="radioButtons">
                                                                                        <td>
                                                                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="me1-">
                                                                                                <input type="radio" id="me1-" class="mdl-radio__button" name="meOptions-" value="1">
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="me2-">
                                                                                                <input type="radio" id="me2-" class="mdl-radio__button" name="meOptions-" value="2">
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="me3-">
                                                                                                <input type="radio" id="me3-" class="mdl-radio__button" name="meOptions-" value="3">
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="me4-">
                                                                                                <input type="radio" id="me4-" class="mdl-radio__button" name="meOptions-" value="4">
                                                                                            </label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="me5-">
                                                                                                <input type="radio" id="me5-" class="mdl-radio__button" name="meOptions-" value="5">
                                                                                            </label>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>-->
                                        <div class="mdl-textfield mdl-js-textfield openTextField">
                                            <textarea class="mdl-textfield__input openTextResponse" type="text" rows="5" maxrows="5" id="openText-" ></textarea>
                                            <label class="mdl-textfield__label" for="openText"><i>Note: Your responses are <b>confidential</b></i></label>
                                            <input type="hidden" id="qtype_" value="" /> 
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide" id="section2">
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="oQuestion-">
                                        <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp section2Table" id="question3">
                                            <thead>
                                                <tr>
                                                    <th class="mdl-data-table__cell--non-numeric">Question</th>
                                                    <th>1<br>[Not important at all]</th>
                                                    <th>2<br>[Somehwhat important] </th>
                                                    <th>3<br>[Very important] </th>
                                                    <th>4<br>[Critical]</th>
                                                    <th>NA<br>[You have not used this service and cannot judge its importance]</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="mdl-data-table__cell--non-numeric">Faith at word</td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q1o1">
                                                            <input type="radio" id="s2q1o1" class="mdl-radio__button" name="s2q1" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q1o2">
                                                            <input type="radio" id="s2q1o2" class="mdl-radio__button" name="s2q1" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q1o3">
                                                            <input type="radio" id="s2q1o3" class="mdl-radio__button" name="s2q1" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q1o4">
                                                            <input type="radio" id="s2q1o4" class="mdl-radio__button" name="s2q1" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q1o5">
                                                            <input type="radio" id="s2q1o5" class="mdl-radio__button" name="s2q1" value="1">
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="mdl-data-table__cell--non-numeric">Induction</td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q2o1">
                                                            <input type="radio" id="s2q2o1" class="mdl-radio__button" name="s2q2" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q2o2">
                                                            <input type="radio" id="s2q2o2" class="mdl-radio__button" name="s2q2" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q2o3">
                                                            <input type="radio" id="s2q2o3" class="mdl-radio__button" name="s2q2" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q2o4">
                                                            <input type="radio" id="s2q2o4" class="mdl-radio__button" name="s2q2" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q2o5">
                                                            <input type="radio" id="s2q2o5" class="mdl-radio__button" name="s2q2" value="1">
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="mdl-data-table__cell--non-numeric">Diversity and inclusion guidance</td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q3o1">
                                                            <input type="radio" id="s2q3o1" class="mdl-radio__button" name="s2q3" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q3o2">
                                                            <input type="radio" id="s2q3o2" class="mdl-radio__button" name="s2q3" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q3o3">
                                                            <input type="radio" id="s2q3o3" class="mdl-radio__button" name="s2q3" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q3o4">
                                                            <input type="radio" id="s2q3o4" class="mdl-radio__button" name="s2q3" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q3o5">
                                                            <input type="radio" id="s2q3o5" class="mdl-radio__button" name="s2q3" value="1">
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="mdl-data-table__cell--non-numeric">Headcount budget advice</td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q4o1">
                                                            <input type="radio" id="s2q4o1" class="mdl-radio__button" name="s2q4" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q4o2">
                                                            <input type="radio" id="s2q4o2" class="mdl-radio__button" name="s2q4" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q4o3">
                                                            <input type="radio" id="s2q4o3" class="mdl-radio__button" name="s2q4" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q4o4">
                                                            <input type="radio" id="s2q4o4" class="mdl-radio__button" name="s2q4" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q4o5">
                                                            <input type="radio" id="s2q4o5" class="mdl-radio__button" name="s2q4" value="1">
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="mdl-data-table__cell--non-numeric">HR policies</td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q6o1">
                                                            <input type="radio" id="s2q6o1" class="mdl-radio__button" name="s2q6" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q6o2">
                                                            <input type="radio" id="s2q6o2" class="mdl-radio__button" name="s2q6" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q6o3">
                                                            <input type="radio" id="s2q6o3" class="mdl-radio__button" name="s2q6" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q6o4">
                                                            <input type="radio" id="s2q6o4" class="mdl-radio__button" name="s2q6" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q6o5">
                                                            <input type="radio" id="s2q6o5" class="mdl-radio__button" name="s2q6" value="1">
                                                        </label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="mdl-data-table__cell--non-numeric">Line Manager skills training and support (including lifecycle processes, developing your team, managing difficult situations, performance discussions)</td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q5o1">
                                                            <input type="radio" id="s2q5o1" class="mdl-radio__button" name="s2q5" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q5o2">
                                                            <input type="radio" id="s2q5o2" class="mdl-radio__button" name="s2q5" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q5o3">
                                                            <input type="radio" id="s2q5o3" class="mdl-radio__button" name="s2q5" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q5o4">
                                                            <input type="radio" id="s2q5o4" class="mdl-radio__button" name="s2q5" value="1">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="s2q5o5">
                                                            <input type="radio" id="s2q5o5" class="mdl-radio__button" name="s2q5" value="1">
                                                        </label>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="swiper-slide" id="section3">
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="oQuestion-">

                                    </div>
                                </div>
                                <div class="swiper-slide" id="section4">
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="oQuestion-">
                                        <div class="questionText">
                                            <h2>Section 4 Question text goes here</h2>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield openTextField">
                                            <textarea class="mdl-textfield__input openTextResponse" type="text" rows="5" maxrows="5" id="openText-" ></textarea>
                                            <label class="mdl-textfield__label" for="openText"><i>Note: Your responses are <b>confidential</b></i></label>
                                            <input type="hidden" id="qtype_" value="" /> 
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide" id="section5">
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="oQuestion-">
                                        <div class="questionText">
                                            <h2>Section 4 Question text goes here</h2>
                                        </div>
                                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                                            <select id="dropdown_function" name="function" class="mdl-selectfield__select" required>
                                                <option value="1">Option 1</option>
                                                <option value="2">Option 2</option>
                                                <option value="3">Option 3</option>
                                            </select>
                                            <label class="mdl-selectfield__label" for="myselect">FUNCTION</label>
                                            <span class="mdl-selectfield__error">Please select a function</span>
                                        </div>
                                    </div>
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="oQuestion-">
                                        <div class="questionText">
                                            <h2>Section 4 Question text goes here</h2>
                                        </div>
                                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                                            <select id="dropdown_function" name="function" class="mdl-selectfield__select" required>
                                                <option value="1">Option 1</option>
                                                <option value="2">Option 2</option>
                                                <option value="3">Option 3</option>
                                            </select>
                                            <label class="mdl-selectfield__label" for="myselect">FUNCTION</label>
                                            <span class="mdl-selectfield__error">Please select a function</span>
                                        </div>
                                    </div>
                                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card question" id="oQuestion-">
                                        <div class="questionText">
                                            <h2>Section 4 Question text goes here</h2>
                                        </div>
                                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                                            <select id="dropdown_function" name="function" class="mdl-selectfield__select" required>
                                                <option value="1">Option 1</option>
                                                <option value="2">Option 2</option>
                                                <option value="3">Option 3</option>
                                            </select>
                                            <label class="mdl-selectfield__label" for="myselect">FUNCTION</label>
                                            <span class="mdl-selectfield__error">Please select a function</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Add Arrows -->
                            <button class="mdl-button mdl-js-button swiper-prev">
                                Previous
                            </button>
                            <button class="mdl-button mdl-js-button swiper-next">
                                Next
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" id="submitButton">
                                Submit
                            </button>
                            <!--<div class="swiper-button-next"></div>-->
                            <!--<div class="swiper-button-prev"></div>-->
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script src="assets/js/material.min.js"></script>
        <script src="assets/js/mdl-selectfield.min.js"></script>
        <script src="assets/js/gbc.js"></script>
        <script src="assets/js/swiper.min.js"></script>
    </body>
</html>
