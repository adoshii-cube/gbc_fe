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
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


        <link href="assets/css/jplist.core.min.css" rel="stylesheet" type="text/css">
        <script src="assets/js/jplist.core.min.js"></script>
        <script src="assets/js/jplist.pagination-bundle.min.js"></script>


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
                            <img class="android-logo-image" src="assets/images/Logo.png" alt="Logo">&nbsp;HR Survey</span>
                    </a>
                    <!-- Add spacer, to align navigation to the right -->
                    <div class="mdl-layout-spacer"></div>
                    <!-- Navigation -->
                    <!--<div class="android-navigation-container">-->
                    <!--<nav class="mdl-navigation">-->
                    <!--<a class="mdl-navigation__link" href="">Link</a>-->
                    <!--</nav>-->
                    <!--</div>-->
                    <!-- Right aligned menu below button -->

                    <button id="switch-role-menu"
                            class="mdl-button mdl-js-button mdl-button--icon">
                        <i class="material-icons">account_circle</i>
                    </button>
                    <button id="header-menu"
                            class="mdl-button mdl-js-button mdl-button--icon">
                        <i class="material-icons">more_vert</i>
                    </button>
                    <a>
                        <span class="android-mobile-title mdl-layout-title" id="switchUserMobile">
                            <img class="android-logo-image" src="assets/images/Logo.png" alt="Logo">&nbsp;HR Survey</span>
                    </a>
                </div>
            </header>
            <main class="android-content mdl-layout__content">
                <div class="page-content">
                    <div class="android-card-container mdl-grid">
                        <!-- demo -->
                        <div id="demo" class="box jplist">				 
                            <!-- data -->   
                            <div class="list box text-shadow">					
                                <!-- item 1 -->
                                <div class="list-item box">
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Calendar</p>
                                        <p class="desc">A calendar is a system of organizing days for social, religious, commercial, or administrative purposes. This is done by giving names to periods of time, typically days, weeks, months, and years. The name given to each day is known as a date. Periods in a calendar (such as years and months) are usually, though not necessarily, synchronized with the cycle of the sun or the moon.</p>
                                    </div>
                                </div>

                                <!-- item 2 -->
                                <div class="list-item box">	
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Architecture</p>
                                        <p class="desc">Architecture is both the process and product of planning, designing and construction. Architectural works, in the material form of buildings, are often perceived as cultural symbols and as works of art. Historical civilizations are often identified with their surviving architectural achievements.</p>
                                    </div>
                                </div>

                                <!-- item 3 -->
                                <div class="list-item box">	
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Autumn</p>
                                        <p class="desc">Autumn or Fall is one of the four temperate seasons. Autumn marks the transition from summer into winter, in September (Northern Hemisphere) or March (Southern Hemisphere) when the arrival of night becomes noticeably earlier. The equinoxes might be expected to be in the middle of their respective seasons, but temperature lag (caused by the thermal latency of the ground and sea) means that seasons appear later than dates calculated from a purely astronomical perspective.</p>
                                    </div>
                                </div>

                                <!-- item 4 -->
                                <div class="list-item box">
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Summer</p>
                                        <p class="desc">A boat is a watercraft of any size designed to float or plane, to provide passage across water. Usually this water will be inland (lakes) or in protected coastal areas. However, boats such as the whaleboat were designed to be operated from a ship in an offshore environment. In naval terms, a boat is a vessel small enough to be carried aboard another vessel (a ship).</p>
                                    </div>
                                </div>

                                <!-- item 5 -->
                                <div class="list-item box">
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Arch</p>
                                        <p class="desc">An arch is a structure that spans a space and supports a load. Arches appeared as early as the 2nd millennium BC in Mesopotamian brick architecture and their systematic use started with the Ancient Romans who were the first to apply the technique to a wide range of structures.</p>
                                    </div>
                                </div>

                                <!-- item 6 -->
                                <div class="list-item box">	
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Books</p>
                                        <p class="desc">A book is a set of written, printed, illustrated, or blank sheets, made of ink, paper, parchment, or other materials, usually fastened together to hinge at one side. A single sheet within a book is called a leaf, and each side of a leaf is called a page. A book produced in electronic format is known as an electronic book (e-book).</p>
                                    </div>
                                </div>

                                <!-- item 7 -->
                                <div class="list-item box">					
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Business</p>
                                        <p class="desc">A business (also known as enterprise or firm) is an organization engaged in the trade of goods, services, or both to consumers. Businesses are predominant in capitalist economies, where most of them are privately owned and administered to earn profit to increase the wealth of their owners. Businesses may also be not-for-profit or state-owned. A business owned by multiple individuals may be referred to as a company, although that term also has a more precise meaning.</p>
                                    </div>
                                </div>

                                <!-- item 8 -->
                                <div class="list-item box">					
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Car</p>
                                        <p class="desc">An automobile, autocar, motor car or car is a wheeled motor vehicle used for transporting passengers, which also carries its own engine or motor. Most definitions of the term specify that automobiles are designed to run primarily on roads, to have seating for one to eight people, to typically have four wheels, and to be constructed principally for the transport of people rather than goods.</p>
                                    </div>
                                </div>

                                <!-- item 9 -->
                                <div class="list-item box">					
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">Christmas</p>
                                        <p class="desc">Christmas or Christmas Day is an annual commemoration of the birth of Jesus Christ, celebrated generally on December as a religious and cultural holiday by billions of people around the world. A feast central to the Christian liturgical year, it closes the Advent season and initiates the twelve days of Christmastide. Christmas is a civil holiday in many of the world"s nations, is celebrated by an increasing number of non-Christians, and is an integral part of the Christmas and holiday season.</p>
                                    </div>
                                </div>

                                <!-- item 10 -->
                                <div class="list-item box">					
                                    <!-- data -->
                                    <div class="block">
                                        <p class="title">The Christmas Toy</p>
                                        <p class="desc">The Christmas Toy is a 1986 made-for-TV movie by The Jim Henson Company. It originally aired on ABC on December 6, 1986, and was originally sponsored by Kraft Foods. Originally introduced by Kermit The Frog, it was released on VHS format in 1993. In 2008, HIT Entertainment (distributed by Lionsgate) released the special on DVD, but edited out Kermit"s appearance due to legal issues.</p>
                                    </div>
                                </div>

                            </div>
                            <div class="jplist-ios-button">
                                Show pagination
                            </div>
                            <!-- panel -->
                            <div class="jplist-panel box panel-bottom">
                                <div 
                                    class="jplist-label" 
                                    data-type="{start} - {end} of {all}"
                                    data-control-type="pagination-info" 
                                    data-control-name="paging" 
                                    data-control-action="paging">
                                </div>
                                <div 
                                    class="jplist-pagination" 
                                    data-control-type="pagination" 
                                    data-control-name="paging" 
                                    data-control-action="paging"
                                    data-items-per-page="2"
                                    data-control-animate-to-top="false">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script src="assets/js/material.min.js"></script>
        <script src="assets/js/gbc.js"></script>
    </body>
</html>
