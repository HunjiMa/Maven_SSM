<%--
  Created by IntelliJ IDEA.
  User: Markus
  Date: 2017/12/21 0021
  Time: 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Page</title>
    <link rel="stylesheet" type="text/css" href="../../css/calendar.css">
    <link rel="stylesheet" type="text/css" href="../../css/my_groundwork.css">
    <script type="text/javascript" src="../../js/Clock.js"></script>
    <style type="text/css">
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            margin: 0;
            padding: 0;

            position: absolute;
            width: 100%;
            min-height: 100%;
        }

        #header {
            /*border-image: linear-gradient(to right, #216684, #83d0f2) 10;*/
            /*box-shadow: 0 0 9px 0 rgba(75, 216, 255, 0.3);*/
            width: 100%;
            height: 76px;
            clear: both;
            position: relative;
            background-color: #004359;
            padding-top: 16px;
            border: 6px solid #ffffff;
            border-width: 6px 0 0;
        }

        #nav-sec {
            position: absolute;
            width: 120px;
            height: 70px;
            top: 0;
            right: 0;
            /*border: solid 1px #ad3079;*/
            background-color: #000000;
        }

        #sign {
            position: absolute;
            width: 100%;
            height: 70px;
            margin: 0 auto;
            /*border: solid 1px #cccccc;*/
            text-align: center;
        }

        .login {
            color: #FFFFFF;
            line-height: 70px;
            /*font-family: Serif;*/
            font-size: 19px;
            /*font-weight: bold;*/
        }

        /*.logo {*/
        /*position: relative;*/
        /*z-index: 2;*/
        /*width: 170px;*/
        /*height: 50px;*/
        /*background: url("img/web-docs-sprite.22a6a085cf14.svg") 100% 0 no-repeat;*/
        /*background-size: 219px auto;*/
        /*display: block;*/
        /*direction: ltr;*/
        /*text-indent: -9999px;*/
        /*overflow: hidden;*/
        /*left: 30px;*/
        /*border: solid 1px darkgreen;*/
        /*}*/

        #content {
            background-color: #ffffff;
            width: 100%;
            min-height: 100%;

            /*height: auto !important;*/
            /*height: 100%; !*ie6不识别min-height,如上述处理*!*/
        }

        .column-all {
            display: -webkit-flex;
            display: flex;
            margin: 80px 20px 80px 90px;
            /*height: 100%;*/
            /*background-color: #89b2a1;*/
        }

        .column-left {
            -webkit-flex: initial;
            flex: initial;
            width: 65%;
            min-width: 100px;
            border-right: solid 1px #DAE3E6;
        }

        #before-article {
            border-bottom: solid 1px #DAE3E6;
        }

        article {
            border-bottom: solid 1px #DAE3E6;
            padding-top: 13px;
            padding-bottom: 30px;
            padding-right: 40px;
        }

        span {
            font-size: 10px;
        }

        h2 {
            font-family: "Arial";
            font-size: 22px;
            color: rgba(11, 16, 17, 0.8);
            font-weight: lighter;

        }

        h1 {
            color: rgba(11, 16, 17, 0.8);
        }

        .main-text {
            padding-top: 15px;
            font-family: "Arial";
            font-size: 15px;
            color: rgba(11, 16, 17, 0.8);
        }

        .column-right {
            -webkit-flex: 1;
            flex: 1;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
            border-top: solid 1px #DAE3E6;

        }

        #footer {
            border: solid 1px #313131;
            width: 100%;
            height: 100px;
            background-color: #004359;
            bottom: 0;
        }

        .FooterText {
            color: #87908d;
            font-size: 20px;
        }

        .FooterText2 {
            color: #FFFFFF;
            font-size: 20px;
        }

        a {
            text-decoration: none;
            color: #000;
        }

        a:hover {
            color: #168da8;
        }

        .author {
            color: #00A3D9;
            font-size: 11px;
        }

    </style>
</head>
<body onload="showTime();">

<!--Header Begin-->
<div id="header">
    <!--<a href="/TEc/index.html" class="logo"></a>-->
    <div class="On-Logo">
        <a class="Author-name" href="#">Http://TEc</a>
        <div id="result"></div>
    </div>
    <div id="nav-sec">
        <a href="localhost:63342/TEc/index.html">
            <div id="sign">
                <ul>
                    <li style="list-style-type:none;">
                        <span class="login">Sign in</span>
                        <!--<i class="icon-github" aria-hidden="true"></i>-->
                    </li>
                </ul>
            </div>
        </a>
    </div>
</div>

<!--Content Begin-->
<div id="content">
    <div class="column-all">
        <!-- Left Part -->
        <div class="column-left">
            <div id="before-article"></div>
            <c:forEach items="${articles}" var="article">
                <article>
                    <h2>${article.subject}</h2>
                    <span class="icon-user"></span><a class="author" href="#">${article.authorId}</a>&nbsp;&nbsp;&nbsp;&nbsp;<span
                        class="icon-time"></span><span class="time-dis"><fmt:formatDate value="${article.create_time }"
                                                                                        pattern="yyyy-MM-dd HH:mm:ss"/></span>
                    <div id="article1" class="main-text">${article.content}…</div>
                </article>
            </c:forEach>
            <article>
                <h2>Yoo Ah In Calls Out People Leaving Negative Comments Online + Moves To End…</h2>
                <span class="icon-user"></span><a class="author" href="#">mch</a>&nbsp;&nbsp;&nbsp;&nbsp;<span
                    class="icon-time"></span><span class="time-dis">2017-11-27 16:25:35</span>
                <div id="article2" class="main-text">Late at night on November 24, actor Yoo Ah In puzzled fans and
                    lookers-on with his sudden tirade against people leaving negative comments about him online. On his
                    personal Twitter account, he wrote, “ I’ll let you in on a great tip. If you don’t want to look at
                    me,…
                </div>
            </article>
            <article>
                <h2>Challenge 192 - Voting</h2>
                <span class="icon-user"></span><a class="author" href="#">mch</a>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;<span
                    class="icon-time"></span><span class="time-dis">2017-11-27 16:25:35</span>
                <div id="article3" class="main-text">voting. 1. You don't have to be a member to vote. 2. Do not vote
                    for yourself and do not ask your friends to vote for you. 3. Anonymous vote is NOT allowed. 4. Vote
                    based on the quality of the icons, not based on the TV shows. 5. Vote for your 4 FAVORITE ICONS (in
                    order of preference), 1 BEST…
                </div>
            </article>
            <article>
                <h2>乔治娅11.27-12.3周运!</h2>
                <span class="icon-user"></span><a class="author" href="#">mch</a>&nbsp;&nbsp;&nbsp;&nbsp;<span
                    class="icon-time"></span><span class="time-dis">2017-11-27 16:25:35</span>
                <div id="article4" class="main-text">
                    周，太阳、水星、金星和土星全部位于射手座。耶！大家都出去玩吧！不过，还有两件事值得注意：周五，暴烈的火星将会对冲变幻莫测的天王星。（哎呀！）第二天，幸运的木星又会和海王星形成三分相位。因此，这周的主题将是解放、独立、突发事件和压力的纾解--随之而来的是汹涌的怜悯心和对真相的诉求。对同情心的反馈象征着一个世界对灾难的回应…
                </div>
            </article>
            <article>
                <h2>Yoo Ah In Calls Out People Leaving Negative Comments Online + Moves To End…</h2>
                <span class="icon-user"></span><a class="author" href="#">mch</a>&nbsp;&nbsp;&nbsp;&nbsp;<span
                    class="icon-time"></span><span class="time-dis">2017-11-27 16:25:35</span>
                <div id="article5" class="main-text">Late at night on November 24, actor Yoo Ah In puzzled fans and
                    lookers-on with his sudden tirade against people leaving negative comments about him online. On his
                    personal Twitter account, he wrote, “ I’ll let you in on a great tip. If you don’t want to look at
                    me,…
                </div>
            </article>
            <article>
                <h2>Challenge 192 - Voting</h2>
                <span class="icon-user"></span><a class="author" href="#">mch</a>&nbsp;&nbsp;&nbsp;&nbsp;<span
                    class="icon-time"></span><span class="time-dis">2017-11-27 16:25:35</span>
                <div id="article6" class="main-text">voting. 1. You don't have to be a member to vote. 2. Do not vote
                    for yourself and do not ask your friends to vote for you. 3. Anonymous vote is NOT allowed. 4. Vote
                    based on the quality of the icons, not based on the TV shows. 5. Vote for your 4 FAVORITE ICONS (in
                    order of preference), 1 BEST…
                </div>
            </article>
            <div>
                <h1>----End----</h1>
            </div>
        </div>


        <!-- Left Part -->
        <div class="column-right">

            <!-- Calendar -->
            <div id="Calendar">
                <div class="month">
                    <ul>
                        <li class="prev">&#10094;</li>
                        <li class="next">&#10095;</li>
                        <script type="text/javascript">
                            var date = new Date();
                            var curYear = date.getFullYear();
                            var curMonth = date.getMonth();
                            var monthText = "";

                            switch (curMonth) {
                                case 0:
                                    monthText = "January".toUpperCase();
                                    break;
                                case 1:
                                    monthText = "February".toUpperCase();
                                    break;
                                case 2:
                                    monthText = "March".toUpperCase();
                                    break;
                                case 3:
                                    monthText = "April".toUpperCase();
                                    break;
                                case 4:
                                    monthText = "May".toUpperCase();
                                    break;
                                case 5:
                                    monthText = "June".toUpperCase();
                                    break;
                                case 6:
                                    monthText = "July".toUpperCase();
                                    break;
                                case 7:
                                    monthText = "August".toUpperCase();
                                    break;
                                case 8:
                                    monthText = "September".toUpperCase();
                                    break;
                                case 9:
                                    monthText = "October".toUpperCase();
                                    break;
                                case 10:
                                    monthText = "November".toUpperCase();
                                    break;
                                case 11:
                                    monthText = "December".toUpperCase();
                                    break;
                                default:
                                    break;
                            }
                            document.write("<li>" + monthText + "<br><span style='color: #FFFFFF; font-size:16px'>" + curYear + "</span></li>");
                        </script>
                    </ul>
                    <!--<ul>-->
                    <!--<li class="prev">&#10094;</li>-->
                    <!--<li class="next">&#10095;</li>-->
                    <!--<li>-->

                    <!--August<br>-->
                    <!--<span style="font-size:16px">2017</span>-->
                    <!--</li>-->
                    <!--</ul>-->
                </div>

                <ul class="weekdays">
                    <li>Su</li>
                    <li>Mo</li>
                    <li>Tu</li>
                    <li>We</li>
                    <li>Th</li>
                    <li>Fr</li>
                    <li>Sa</li>
                </ul>

                <ul class="days">

                    <!--动态输出35天日历并高亮显示当前日期-->
                    <script type="text/javascript">
                        var curDate = new Date();
                        var calendar = document.getElementsByClassName("days")[0];
                        var year = curDate.getFullYear();
                        var month = curDate.getMonth() + 1;
                        var today = curDate.getDate();
                        var countDays = (new Date(year, month, 0)).getDate();


                        var highlighted = false; // 是否已高亮显示过当前日期?
                        curDate.setDate(1); //
                        var firstDayCurMonth = curDate.getDay(); // 当前月的1号是周几
                        var moMatch = [6, 0, 1, 2, 3, 4, 5];

                        curDate.setDate(0);
                        var lastDayLastMonth = curDate.getDate();
                        var dayNo = lastDayLastMonth - parseInt(moMatch[firstDayCurMonth]);
                        var restCount = 42 - moMatch[firstDayCurMonth] - 1; // 仅显示42天的日历

                        // 打印上个月日期
                        do {
                            if (dayNo > lastDayLastMonth) {
                                dayNo = 1;
                                break;
                            }
                            calendar.innerHTML += "<li>" + dayNo + "</li>\n";
                            dayNo++;
                        } while (true);

                        // 打印当前月日历并高亮显示当前日期
                        do {
                            if (today === dayNo && highlighted === false) {
                                calendar.innerHTML += "<li style='background: #43857b;color: white !important'>" + dayNo + "</li>\n";
                                highlighted = true;
                            }
                            else {
                                calendar.innerHTML += "<li>" + dayNo + "</li>\n";
                            }

                            // 如果是当前月最后一天则从下个月第一天开始继续打印直到打印完35天为止
                            if (dayNo === countDays)
                                dayNo = 1;
                            else
                                dayNo++;
                            restCount--;
                        } while (restCount !== 0);
                    </script>
                </ul>
            </div>
            <!--Calendar End-->
        </div>
    </div>
</div>


<!-- Footer -->
<div id="footer">
    <p><br/>
        <span class="FooterText">Footer: the text color is like this or </span><span class="FooterText2">THIS</span>
    </p>
</div>

</body>
</html>
