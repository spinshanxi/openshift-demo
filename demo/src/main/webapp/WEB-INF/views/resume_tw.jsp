<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-TW">
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
            font-size: 13px;
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
                width: 26%;
            }
            .spin-record {
                padding-bottom: 10px;
                width: 100%;
            }
            .spin-left-1 {
                height: 9%;
            }
            .spin-left-2 {
                height: 76%;
            }
            .spin-left-3 {
                height: 20%;
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
            <p class="myname">廖善璽 ( Spin Liao )</p>
            <p class="mytitle">Java Programmer</p>
        </div>
        <div class="spin-body-wrapper">
            <div class="spin-left col-left">
                <div class="spin-left-1">
                    <p class="spin-content-1">研究所期間利用 Java 撰寫程式進行論文的數值分析研究一年, 從事網站程式維護與開發工作近七年。 Java-based 網站有四年的經歷, PHP-based 網站有兩年多的經歷。 平常喜歡學習並補強技術, 對於程式設計有極大熱情。 喜歡改善程式效能、提升系統穩定度、改善團隊開發效率。</p>
                </div>
                <div class="spin-left-2">
                    <p class="spin-h1">Experience</p>
                    <div class="spin-line-separator-left"></div>
                    <div class="spin-left-2-1">
                        <div class="spin-time">
                            <p>2017.03 ~ 2018.05</p>
                        </div>
                        <div class="spin-record">
                            <div>
                                <p class="spin-job-title">Java Programmer</p>
                            </div>
                            <div>
                                <p class="spin-company-name">聯合數位文創股份有限公司</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>負責維護與開發 Java-based 電商平台: 1.有.設計 uDesign 網購平台, 2.供應商管理後台。</li>
                                    <li>大致工作內容為修正系統與資料異常, 開發新功能, 測試, 撰寫文件。</li>
                                    <li>提升前後端程式效能與解決前端 bug。例如: 利用 Web Storage 機制實現前台的回上一頁的快取效果, 前台商品加入我的最愛商品清單效果, AJAX 選單順序錯亂, 提升前台商品清單頁呈現速度。</li>
                                    <li>模組開發-負責建立系統核心模組讓平台可以置入國外商品並且販售。</li>
                                    <li>API 串接-利用外部系統提供的 API 進行資料交換, 例如: 開通大量「有.設計」會員為「售票網」會員。
                                    <li>撰寫系統文件-產出系統缺乏的商業邏輯文件與程式撰寫規範文件, 讓後進可以快速上手。</li>
                                    <li>指導並引領新進同仁開發程式, 提升大家的開發效率。</li>
                                    <li>這份工作使用的相關技術有: Spring 2.x/4.x, Spring MVC, Struts 1.x, iBatis/Mybatis, Java, Servlet/JSP, Oracle/MySql, JS, CSS, HTML。</li>
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
                                <p class="spin-company-name">新加坡商優達斯國際有限公司台灣分公司</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>維護 PHP-Based 倉庫管理系統。該系統用於國內倉庫的進出貨, 跨境進出貨, 國內外物流商的資料串接。</li>
                                    <li>負責修正系統與資料異常, 開發新功能, 測試。</li>
                                    <li>負責補貨(自動算出需要補貨的商品), 出貨(商品離開倉庫的各種情境的流程), 物流(與國內外物流商的貨態資料串接)的後端 API 程式，提供 JSON 格式的資料給各種前端,與外部系統透過 FTP, HTTP 串接資料。</li>
                                    <li>使用的相關技術有: PHP5, Oracle SQL, JS, HTML, PHP, Git, CodeIgniter。</li>
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
                                <p class="spin-company-name">長榮國際股份有限公司</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>維護 Java-Based 進出口貿易網站後台系統。</li>
                                    <li>負責修正系統與資料異常, 開發新功能, 測試。</li>
                                    <li>負責維護後台系統模組: 訂艙, 進出口文件, 航期, 資料交換。</li>
                                    <li>負責維護網站: 長榮旅行社, 長榮物流形象官網。</li>
                                    <li>開發畫面功能, 報表(PDF, XLS), 長榮航空訂艙資料交換, 訂單管理模組, 排程。</li>
                                    <li>研究套件(POI, JFreeChart)升級的影響性並提出改善報告。</li>
                                    <li>支援開發系統: 長榮櫃場系統, 長榮酒店系統, 長榮中再保系統。</li>
                                    <li>使用的相關技術有: Java, Servlet/JSP, JS, HTML, Oracle SQL, PL/SQL。</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="spin-left-3">
                    <p class="spin-h1">Education</p>
                    <div class="spin-line-separator-left"></div>
                    <div class="spin-left-3-1">
                        <div class="spin-time">
                            <p>2007.09 ~ 2010.02</p>
                        </div>
                        <div class="spin-record">
                            <div>
                                <p>國立東華大學 全球運籌管理所</p>
                                <p>論文主題: 最佳補貨周期與改進演法</p>
                                <p>研究內容: 建立補貨周期模型與演算法, 討論與比較現有文獻的演算法</p>
                            </div>
                        </div>
                    </div>
                    <div class="spin-left-3-2">
                        <div class="spin-time">
                            <p>2002.09 ~ 2006.06</p>
                        </div>
                        <div class="spin-record">
                            <div>
                                <p>淡江大學 國際貿易學系</p>
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
                        <span class="spin-h2">+886 939 153 198</span>
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
        $(document).ready(function(){
            $('[class="spin-progress"]').each(function(){
                let $this = $(this);
                let hl = '<div class="w3-light-grey w3-tiny w3-round"><div class="w3-container w3-center w3-blue-gray w3-round" style="line-height:15px; height:15px; width:'+$this.data('percent')+'%">'+$this.data('percent')+'%</div></div>'
                $this.html(hl);
            });
        });
    </script>
    <noscript>Sorry, your browser does not support JavaScript!</noscript>
</body>
</html>