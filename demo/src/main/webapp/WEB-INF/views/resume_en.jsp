<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Spin resume">
    <meta name="keywords" content="Spin">
    <meta name="author" content="Spin Liao">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spin Resume</title>
    <link rel="stylesheet" href="../resources/css/w3.css">
    <style type="text/css">
        * {
            border: 0;
            box-sizing: border-box;
            font-size: 100%;
            font: inherit;
            margin: 0px;
            padding: 0px;
            vertical-align: baseline;
        }
        body {
            font-size: 12px;
            line-height: 1.5rem;
        }
        .spin-main {
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
            font-family: Meiryo, "微軟正黑體", "Microsoft JhengHei", "Segoe UI", Arial, sans-serif;
            margin: 0 auto;
        }
        .spin-header {
            background-color: #34383a;
            color: white;
            height: 5%;
            padding-top: 0.5%;
            width: 100%;
        }
        .spin-header .myname{
            font-size: 1.5rem;
            font-weight: bold;
            padding-left: 10px;
        }
        .spin-header .mytitle{
            font-size: 0.9rem;
            padding-left: 10px;
            padding-bottom: 10px;
        }
        .spin-body-wrapper {
            color: #34383a;
            height: 95%;
            width: 100%;
        }
        .spin-left {
            background-color: #f3f3f3;
            float: left;
            height: 100%;
            overflow-wrap: break-word;
            padding-right: 10px;
            text-align: justify;
            width: 70%;
        }
        .spin-right {
            background-color: #dbdbdb;
            float: left;
            height: 100%;
            width: 30%;
        }
        .spin-h1 {
            font-weight: bold;
            font-size: 1rem;
            padding-left: 10px;
            margin-top: 10px;
        }
        .spin-h2 {
            font-weight: bold;
        }
        .spin-job-title {
            font-weight: bold;
        }
        .spin-company-name {
            font-style: italic;
        }
        .spin-content-1, .spin-content-2 {
            line-height: calc(1.3em + .2vw);
        }
        .spin-content-1 {
            padding-top: 10px;
            padding-left: 10px;
        }
        .spin-line-separator-left, .spin-line-separator-right{
            border-bottom:1px groove #d2d2d2;
            border-collapse: collapse;
            margin-left: 10px;
            width: 95%;
        }
        [class*="col-"]  {
            width: 100%;
        }
        [class*="spin-left-1"],
        [class*="spin-left-2-"],
        [class*="spin-left-3-"],
        [class*="spin-right-1-"],
        [class*="spin-right-2-"],
        [class*="spin-right-3-"] {
            padding-top: 5px;
            padding-left: 10px;
            padding-right: 10px;
        }
        .spin-body-wrapper::after,
        [class*="spin-left-2"]::after,
        [class*="spin-left-3"]::after,
        [class*="spin-right-1"]::after,
        [class*="spin-right-2"]::after,
        [class*="spin-right-3"]::after {
            clear: both;
            content: "";
            display: block;
            height: 0;
            visibility: hidden;
        }
        .spin-item-name, .spin-progress{
            float: left;
        }
        .spin-time {
            float: right;
            font-weight: bold;
        }
        .spin-record {
            width: 100%;
        }
        .spin-item-name {
            font-weight: bold;
            width: 100%;
        }
        .spin-progress {
            width: 100%;
        }
        .spin-photo {
            border-radius: 5%;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            height: auto;
            margin: 10px 0px;
            width: 70%;
        }
        ul {
            list-style: none;
            padding-left: 1em;
        }
        li {
            padding-left: 1em;
            text-indent: -1em;
        }
        li:before {
            content: "•";
            padding-right: 8px;
        }
        @media screen and (min-width: 768px), print{
            .spin-main {
                height: 297mm;
                width: 210mm;
            }
            .col-left {
                width: 75%;
            }
            .col-right {
                width: 25%;
            }
            .spin-line-separator-left {
                width: 95%;
            }
            .spin-line-separator-right{
                width: 90%;
            }
            .spin-time {
                float: right;
                width: 30%;
            }
            .spin-record {
                padding-bottom: 10px;
                width: 100%;
            }
            .spin-left-1 {
                height: 11%;
            }
            .spin-left-2 {
                height: 74%;
            }
            .spin-right-1 {
                height: 31%;
            }
            .spin-right-2 {
                height: 53%;
            }
        }
    </style>
</head>
<body>
    <div class="spin-main">
        <div class="spin-header">
            <p class="myname">Spin Liao</p>
            <p class="mytitle">Java Programmer</p>
        </div>
        <div class="spin-body-wrapper">
            <div class="spin-left col-left">
                <div class="spin-left-1">
                    <p class="spin-content-1">I've been almost experiencing the website development and maintenance for 7 years, 4 years and 2 more years for Java-based and PHP-based website respectively. With great passion on programming, I like to study programming skills. I  like  to  improve  programs  and  development  process  for  enhancing  system  stability.</p>
                </div>
                <div class="spin-left-2">
                    <p class="spin-h1">Experience</p>
                    <div class="spin-line-separator-left"></div>
                    <div class="spin-left-2-1">
                        <div class="spin-time">
                            <p>2017.03 ~ Present</p>
                        </div>
                        <div class="spin-record">
                            <div>
                                <p class="spin-job-title">Java Programmer</p>
                            </div>
                            <div>
                                <p class="spin-company-name">udnFunLife Co., Ltd.</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>Maintained Java-based e-commerce web site: <a href="https://udesign.udnfunlife.com/" target="_blank">uDesign</a>.</li>
                                    <li>Debugged frontend and backend program problem and improved system efficiency.</li>
                                    <li>Developed new function/module and testing:
                                        <ul>
                                            <li>Built core module for platform to sell foreign products.</li>
                                            <li>Data exchange with outside systems APIs.</li>
                                            <li>Online webpage for recruiting members of uDesign web site.</li>
                                        </ul>
                                    </li>
                                    <li>Created business logic documentation and coding guidelines.</li>
                                    <li>Trained and mentored over 2 junior programmers and developers.</li>
                                    <li>Building custom Content Management System (Spring MVC, Mybatis, MySQL) for different web sites. - keep going</li>
                                    <li>Coded and Tuned code in Spring 2.x, Struts 1.x, iBatis, Java, Servlet/JSP, Oracle SQL, JS, CSS, HTML.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="spin-left-2-2">
                        <div class="spin-time">
                            <p>2014.04 ~ 2016.09</p>
                        </div>
                        <div class="spin-record">
                            <div>
                                <p class="spin-job-title">PHP Programmer</p>
                            </div>
                            <div>
                                <p class="spin-company-name">uitox Global e-commerce group</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>Maintained PHP-based warehouse system used to support inbound and outbound process, data exchange with logistics vendors.</li>
                                    <li>Debugged backend program problem and developed new function/module and testing.</li>
                                    <li>Responsible for maintenance and development of subsystems such as inventory replenishment module, warehouse outbound module and logistics.</li>
                                    <li>Developed APIs to support frontend and exchange data with outside system through FTP and HTTP protocol.</li>
                                    <li>Coded and Tuned code in PHP5, Oracle SQL, JS, HTML, PHP, Git, CodeIgniter.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="spin-left-2-3">
                        <div class="spin-time">
                            <p>2010.09 ~ 2013.09</p>
                        </div>
                        <div class="spin-record">
                            <div>
                                <p class="spin-job-title">Java Programmer</p>
                            </div>
                            <div>
                                <p class="spin-company-name">Evergreen International Corp.</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>Maintained Java-based internal global logistics system.</li>
                                    <li>Debugged backend program problem and developed new function/module.</li>
                                    <li>Responsible for maintenance and development of subsystems such as booking, document, vessel routing and data exchange.</li>
                                    <li>Developed webpage, reports on PDF and XLS format, booking data exchange with EVA, order management subsystem and scheduled jobs.</li>
                                    <li>Studied the potential side effects of upgrading library such as POI, JFreeChart.</li>
                                    <li>Assisted other team to develop terminals operating system.</li>
                                    <li>Responsible for maintenance and development on <a href="https://www.evergreen-logistics.com/STATIC/tw/jsp/index.jsp">Evergreen Logistics Corp.</a> web site.</li>
                                    <li>Coded and Tuned code in Java, Servlet/JSP, JS, HTML, Oracle SQL, PL/SQL.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="spin-left-3">
                    <p class="spin-h1">Education</p>
                    <div class="spin-line-separator-left"></div>
                    <div class="spin-left-3-1">
                        <div class="spin-record">
                            <div>
                                <p class="spin-job-title">M.A., Logistics Management, 2010, National Dong Hwa University, Taiwan.</p>
                                <p>My Thesis: Improved Algorithms for the Common Replenishment Epochs Problem</p>
                                <p>4.03 GPA</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spin-right col-right">
                <div class="spin-right-1">
                    <p class="spin-h1">Personal Info</p>
                    <div class="spin-line-separator-right"></div>
                    <div class="spin-right-1-1">
                        <center>
                            <!--a data-flickr-embed="true"  href="https://www.flickr.com/photos/162049655@N05/39609236971/in/dateposted-public/" title="大頭照2"><img class="spin-photo" src="https://farm5.staticflickr.com/4757/39609236971_d5bec810b7_b.jpg" width="1015" height="1024" alt="大頭照2"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script-->
                            <img class="spin-photo" src="../resources/images/39609236971_d5bec810b7_b.jpg" width="1015" height="1024" alt="Spin">                            
                        </center>
                    </div>
                    <div class="spin-right-1-2">
                        <p class="spin-h2">spin637@gmail.com</p>
                    </div>
                    <div class="spin-right-1-3">
                        <p class="spin-h2">+886 939 153 198</p>
                    </div>
                </div>
                <div class="spin-right-2">
                    <p class="spin-h1">Programming Skills</p>
                    <div class="spin-line-separator-right"></div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>Java</p>
                        </div>
                        <div class="spin-progress" data-percent="70"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>Servlet/JSP (JSTL)</p>
                        </div>
                        <div class="spin-progress" data-percent="65"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>Spring 2.x / 4.x</p>
                        </div>
                        <div class="spin-progress" data-percent="60"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>SQL (Oracle, Mysql)</p>
                        </div>
                        <div class="spin-progress" data-percent="60"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>iBatis / myBatis</p>
                        </div>
                        <div class="spin-progress" data-percent="50"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>Struts 1.x</p>
                        </div>
                        <div class="spin-progress" data-percent="50"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>JS (JQuery)</p>
                        </div>
                        <div class="spin-progress" data-percent="60"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>HTML</p>
                        </div>
                        <div class="spin-progress" data-percent="65"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>PHP</p>
                        </div>
                        <div class="spin-progress" data-percent="50"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>Git / SVN</p>
                        </div>
                        <div class="spin-progress" data-percent="50"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>CSS</p>
                        </div>
                        <div class="spin-progress" data-percent="60"></div>
                    </div>
                    <div class="spin-right-2-">
                        <div class="spin-item-name">
                            <p>JUnit / Selenium</p>
                        </div>
                        <div class="spin-progress" data-percent="50"></div>
                    </div>
                </div>
                <div class="spin-right-3">
                    <p class="spin-h1">Languages</p>
                    <div class="spin-line-separator-right"></div>
                    <div class="spin-right-3-1">
                        <div class="spin-item-name">
                            <p>Mandarin</p>
                        </div>
                        <div class="spin-progress" data-percent="80"></div>
                    </div>
                    <div class="spin-right-3-2">
                        <div class="spin-item-name">
                            <p>English</p>
                        </div>
                        <div class="spin-progress" data-percent="70"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../resources/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $('[class="spin-progress"]').each(function(){
                let $this = $(this);
                let hl = '<div class="w3-light-grey w3-tiny w3-round"><div class="w3-container w3-center w3-blue-gray w3-round" style="line-height:15px; height:15px; width:'+$this.data('percent')+'%">'+$this.data('percent')+'%</div></div>'
                $this.html(hl);
            });
            let lang = $('html').attr('lang');
            if(lang == 'en') {
                $('body').css('font-size', '12.8px');
            } else {
                $('body').css('font-size', '13.5px');
            }
        });
    </script>
    <noscript>Sorry, your browser does not support JavaScript!</noscript>
</body>
</html>