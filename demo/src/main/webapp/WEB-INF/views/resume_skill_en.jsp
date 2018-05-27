<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Spin Skils">
    <meta name="keywords" content="Spin">
    <meta name="author" content="Spin Liao">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spin Skills</title>
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
            width: 100%;
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
                width: 100%;
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
                <div class="spin-left-2">
                    <p class="spin-h1">詳細技能程度</p>
                    <div class="spin-line-separator-left"></div>
                    <div class="spin-left-2-1">
                        <div class="spin-record">
                            <div>
                                <p class="spin-job-title">Spring</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>主要都是用 Spring 建置網站，在工作的經歷是上是使用 Spring 2.5.6 的版本，自學部份是 Spring 4.3.12。在 Spring 的幾個模組中較為熟悉也常用的是 Core, DAO, AOP, ORM, Web, Test。</li>
                                    <li>了解 Spring IoC 容器的基礎，不管是 XML-base 還是 Java-base 的設定都很熟悉。</li>
                                    <li>了解如何使用 iBatis Mapping 工具或是 Spring JDBC 操作資料庫異動與查詢資料。</li>
                                    <li>了解 AOP 觀念，利用 AspectJ 的整合，建立 method 層級的 Advice，例如: 資料庫的交易管理、例外處理、log。</li>
                                    <li>了解 Spring MVC 與 Spring web flow 的使用與設定，可搭配 JSP 與 Thymeleaf。</li>
                                    <li>了解使用 interface 在實作前，建立測試程式的重要性。</li>
                                    <li>了解如何搭配 Quartz 建立排程。</li>
                                    <li>了解 JMS 的 Queue 與 Topic 在 Spring 上的使用。</li>
                                    <li>了解 Restful 在 Spring 上的使用方式。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">Linux</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>使用過 Fedora 27 server 版，程度仍在初學階段。</li>
                                    <li>會使用簡單的基本指令，如: ls, grep, rm, mkdir, vi...等。不熟悉知道用 man 去查。</li>
                                    <li>會簡單的 bash shell script，程度在基礎的流程控制。</li>
                                    <li>架設過簡單的 httpd, vsftpd server。</li>
                                    <li>會用 ssh 遠端登入、上傳檔案。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">Java</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>基礎 Java 語法都沒有問題，但廣大的 API 仍在學習中，主要用 SE 與 EE 平台。</li>
                                    <li>SE: 會一點 Swing 的觀念、用 JDBC 操作資料庫、用 JNDI 設定 Resource、Java Networking(還沒有把 NIO 學完)、用 Regular Expression 進行文字規換與檢查、依資料型態搭態使相應的集合等。</li>
                                    <li>EE: 熟悉 JSP(會用 JSTL 或 Scriptlet 寫樣版)、Servlet(原始的寫法與 annotation 寫法)、JSON(用於傳遞 key-value 格式資料搭配 AJAX 給前端使用)、JPA(由於使用 Spring framework 故並不是很清楚其中的規範，但卻很常使用)</li>
                                    <li>由於 Spring Framework 簡化了 Java EE 的使用，故對於 Java EE 沒有很深入的了解。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">SQL</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>用過 Oracle 與 MySQL</li>
                                    <li>了解關聯式資料庫的基本觀念，基礎的 DDL 與 DML 的指令都能使用。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">Mapping Tools</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>熟悉用 Spring 搭配 iBatis 取出資料庫資料對應到 Entity 上，並了解用 iBatis 建立動態的 SQL。。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">Struts</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>工作上的經歷是在 Struts 1.1 的版本，應用在 Controller 的部份，並了解如何與 Spring 整合，在 Struts 的 action 裡，使用 Spring 的 bean。</li>
                                    <li>了解如何使用 Struts Tiles，定義樣版並將 JSP 元件化。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">JavaScript</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>了解基礎物件導向的寫法，會用 Prototype 擴充功能，知道 Associative array 與 Constructor 在建立 object 上的差別。</li>
                                    <li>了解 Call, Apply, Closures 等基礎用法。</li>
                                    <li>會用 JQuery 操作 DOM。</li>
                                    <li>看過 W3C 網站上一點點的 Angular JS 的教學。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">CSS</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>工作上較少會用到，但看過完整的 W3C CSS 的教學，也看過幾本 CSS 的書，語法上還算是熟悉。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">Git/SVN</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>Git 會用 init、pull、push、commit、merge、stage、revert 等基礎指令</li>
                                    <li>SVN 會用 init、update、commit、revert 等基礎指令</li>
                                    <li>由於工作上不是負責最後統整上版的人，所以在使用經歷上比較偏上單純個人 branch 的操作。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">Testing</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>了解如何使用 JUnit 測試 Spring。例如: 一個單純 Service 的 method signature、 DAO 資料庫流程的操作、Spring MVC controller 的測試。</li>
                                    <li>會用 Selenium 寫腳本在 browser 上測試畫面流程。</li>
                                </ul>
                            </div>
                            <div>
                                <p class="spin-job-title">Build management tool</p>
                            </div>
                            <div class="spin-content-2">
                                <ul>
                                    <li>在 Eclipse 上使用 Maven，透過 Maven 建立 Module 間的關聯，產生  war、jar。</li>
                                    <li>還沒有完整的使用過整個生命週期，只用了 test 與 package，因為在本機開發時，大多掛在 JBOSS 下自動部署。 </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--div class="spin-right col-right">
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
            </div-->
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