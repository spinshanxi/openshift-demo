<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Spin Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.css">
  <link href="resources/css/lato.css" rel="stylesheet" type="text/css">
  <link href="resources/css/montserrat.css" rel="stylesheet" type="text/css">
  <script src="resources/js/jquery.js"></script>
  <script src="resources/js/bootstrap.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 255px;
      height: 255px;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-caption {
      top: 40%;
      bottom: auto;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;      
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .nav-tabs li a {
      color: #777;
  }
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  .mypic {
  	display: flex;
    justify-content: center;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Spin</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#question">QUESTION</a></li>
        <li><a href="#contact">CONTACT</a></li>
      </ul>
    </div>
  </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <!--ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    </ol-->
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/bk.jpg" alt="" width="1200" height="700">
        <div class="carousel-caption">
          <h1>Spin</h1>
          <p>I love coding</p>
        </div>
      </div>
    </div>
</div>
<div id="about" class="container text-center">
  <div class="mypic">
    <img src="resources/images/39609236971_d5bec810b7_b.jpg" class="img-circle person" alt="Spin">
  </div>
  <h3>Spin Liao</h3>
  <p><em>Java Developer</em></p>
  <p>I have been coding for 8 years. 1 year on my thesis, 7 years on web-site developer.</p>
  <p>I have faced many challenges in this road. Coding is difficult, but I love it.</p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center">
      	<a href="resume/"><strong>English Resume</strong></a>
      </p>
    </div>
    <div class="col-sm-4">
      <p class="text-center">
      	<a href="resume/tw"><strong>Chinese Resume</strong></a>
      </p>
    </div>
    <div class="col-sm-4">
      <p class="text-center">
      	<a href="resume/skill"><strong>My Skills</strong></a>
      </p>
    </div>
  </div>
</div>
<div id="question" class="bg-1">
  <div class="container">
    <h3 class="text-center">Question</h3>
    <p class="text-left">持續優化系統？</p>
    <p class="text-left">同事們會分享或討論程式嗎？</p>
    <p class="text-left">開發流程？</p>
    <p class="text-left">有用版控？</p>
    <p class="text-left">測試方式？</p>
    <p class="text-left">部署方式？</p>
    <p class="text-left">有任何一種形式的 Code review 嗎？</p>
    <p class="text-left">系統是外包的嗎？</p>
    <p class="text-left">Framework 的版本概況？</p>
    <p class="text-left">樣版是用 JSP 嗎？ 是否會用 Scriptlet 的風格寫商業邏輯？</p>
    <p class="text-left">Web Container 用什麼？</p>
    <p class="text-left">是否有機會參與需求討論、分析與規劃？</p>
    <p class="text-left">直屬主管對於程式的掌握度？</p>
    <p class="text-left">是否有很多程式可以寫？</p>
    <p class="text-left">上班地點是這裡嗎? 時段是 8:00-8:30 ~ 17:00-17:30？</p>
    <p class="text-left">系統有文件嗎？</p>
    <p class="text-left">工作內容？</p>
  </div>
</div>
<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>Welcome to contact me</em></p>
  <div class="row">
    <div class="col-md-4">
      <p>Leave a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Taipei, TW</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +886 939153198</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: spin637@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Powered By spin.com</p> 
</footer>
<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip(); 
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    if (this.hash !== "") {
      event.preventDefault();
      var hash = this.hash;
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 1000, function(){
        window.location.hash = hash;
      });
    }
  });
})
</script>

</body>
</html>