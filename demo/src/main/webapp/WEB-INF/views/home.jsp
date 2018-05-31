<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Spin Home</title>
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
        <img src="${baseUrl}/resources/images/bk.jpg" alt="" width="1200" height="700">
        <div class="carousel-caption">
          <h1>Spin</h1>
          <p>I love coding</p>
        </div>
      </div>
    </div>
</div>
<div id="about" class="container text-center">
	<img src="${baseUrl}/resources/images/39609236971_d5bec810b7_b.jpg" class="img-circle person" alt="Spin">
	<h3>Spin Liao</h3>
	<p><em>Java Developer</em></p>
	<div style="text-align:left">
		<t:insertAttribute name="introduction"/>
	</div>
	<br>
 	<div class="row">
		<div class="col-sm-4">
			<p class="text-center">
				<a href="${baseUrl}/resume/"><strong>English Resume</strong></a>
			</p>
    	</div>
	    <div class="col-sm-4">
			<p class="text-center">
				<a href="${baseUrl}/resume/tw"><strong>Chinese Resume</strong></a>
			</p>
	    </div>
	    <div class="col-sm-4">
			<p class="text-center">
	      		<a href="${baseUrl}/resume/skill"><strong>My Skills</strong></a>
	      	</p>
	    </div>
	    <div class="col-sm-4">
			<p class="text-center">
	      		<a href="${baseUrl}/download/Mastering_Spring_MVC_4"><strong>Mastering Spring MVC 4</strong></a>
	      	</p>
	    </div>
	    <div class="col-sm-4">
			<p class="text-center">
	      		<a href="${baseUrl}/download/Spring_in_Action_4th_Edition"><strong>Spring in Action, 4th Edition</strong></a>
	      	</p>
	    </div>
	</div>
</div>
<div id="question" class="bg-1">
	<div class="container">
    	<h3 class="text-center">Question</h3>
    	<t:insertAttribute name="question"/>
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
			<form:form method="POST" action="${baseUrl}/addContact" modelAttribute="contact">
	        	<div class="row">
		          	<div class="col-sm-6 form-group">
		                <form:input path="name" class="form-control" id="name" placeholder="Name" type="text" required="required"/>
					</div>
					<div class="col-sm-6 form-group">
						<form:input path="email" class="form-control" id="email" placeholder="Email" type="email" required="required"/>
					</div>
				</div>
	      		<form:textarea path="comments" class="form-control" id="comments" placeholder="Comment" rows="5"/>
	      		<br>
	      		<div class="row">
	        		<div class="col-md-12 form-group">
	          			<button class="btn pull-right" type="submit">Send</button>
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