<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>婚禮出席詢問</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${baseUrl}/resources/css/bootstrap.css">
  <link href="${baseUrl}/resources/css/lato.css" rel="stylesheet" type="text/css">
  <link href="${baseUrl}/resources/css/montserrat.css" rel="stylesheet" type="text/css">
  <script src="${baseUrl}/resources/js/jquery.js"></script>
  <script src="${baseUrl}/resources/js/bootstrap.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h1, p {
  	font-family: Montserrat, sans-serif;
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
      top: 10%;
      bottom: auto;
  }
  .carousel-inner img {
      -webkit-filter: contrast(150%);
      filter: contrast(150%); /* make all photos black and white */ 
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
  @media (max-width: 768px) {
    .container {
      padding: 10px 10px;
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
      <a class="navbar-brand" href="#myPage">玉奇 & 善璽</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">首頁</a></li>
        <li><a href="#contact">邀請</a></li>
      </ul>
    </div>
  </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${baseUrl}/resources/images/S__19431472.jpg" alt="" width="1200" height="700">
        <div class="carousel-caption">
          <h1>玉奇 & 善璽</h1>
          <p>❤我們結婚了❤</p>
        </div>
      </div>
    </div>
</div>
<div id="contact" class="container">
	<h3 class="text-center">婚禮出席詢問表</h3>
	<p class="text-center"><em>誠摯的邀請您</em></p>
	<div class="row">
		<div class="col-md-12">
			<form:form method="POST" action="${baseUrl}/submitInvitation" modelAttribute="invitation">
				<div class="row">
					<div class="col-sm-6 form-group">
							<form:label path="attendType">9月1日是否願意出席午宴見證我們的婚禮?<span class="marked"></span></form:label></br>
							<form:radiobutton path="attendType" value="1"/>萬分期待，願意參加!</br> 
							<form:radiobutton path="attendType" value="2"/>禮到人不到，但還是要記得炸我哦!</br>
							<form:radiobutton path="attendType" value="3"/>謝謝邀請，我祝福的心與你們同在 :)</br>
							<form:radiobutton path="attendType" value="4"/>其它</br>					
					</div>
					<div class="col-sm-6 form-group">
							<form:label path="relationType">您與新人的關係<span class="marked"></span></form:label></br>
							<form:radiobutton path="relationType" value="M"/>男方親友</br> 
							<form:radiobutton path="relationType" value="F"/>女方親友</br>							
					</div>
				</div>
	        	<div class="row">
		          	<div class="col-sm-6 form-group">
		          		<form:label path="name">您的大名<span class="marked"></span></form:label>
		                <form:input path="name" class="form-control" id="name" placeholder="姓名" type="text" required="required"/>
						<form:label path="email">您的 Email<span class="marked"></span></form:label>
						<form:input path="email" class="form-control" id="email" placeholder="Email" type="email" required="required"/>
						<form:label path="phone">您的手機號碼<span class="marked"></span></form:label>
						<form:input path="phone" class="form-control" id="phone" placeholder="手機號碼" type="text" required="required"/>
						<form:label path="address">您的收件地址<span class="marked"></span></form:label>
						<form:input path="address" class="form-control" id="address" placeholder="收件地址" type="text" required="required"/>
					</div>
					<div class="col-sm-6 form-group">
						<form:label path="totalNum">當天出席人數<span class="marked"></span></form:label>
						<form:input path="totalNum" class="form-control" id="totalNum" placeholder="請填出席人數" type="text" required="required"/>
						<form:label path="childChairNum">是否需要兒童坐椅?<span class="marked"></span></form:label>
						<form:input path="childChairNum" class="form-control" id="childChairNum" placeholder="請填需要的兒童坐椅張數" type="text"/>
						<form:label path="vegNum">是否需要素食?<span class="marked"></span></form:label>
						<form:input path="vegNum" class="form-control" id="vegNum" placeholder="請填素食的人數" type="text"/>
					</div>
				</div>
				<form:label path="comments">我有好多祝福的話想說<span class="marked"></span></form:label>
	      		<form:textarea path="comments" class="form-control" id="comments" placeholder="祝福的話..." rows="5"/>
	      		<br>
	      		<div class="row">
	        		<div class="col-md-12 form-group">
	          			<button class="btn pull-right" type="submit">填寫完畢，送出</button>
        			</div>
      			</div>
    		</form:form>
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