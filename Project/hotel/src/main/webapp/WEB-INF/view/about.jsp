<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href='<spring:url value="resources/Home_resources/images/icons/favicon.png"></spring:url>' />
<title>StarHome</title>

<!-- Bootstrap core CSS -->
<link href='<spring:url value="resources/Home_resources/css/bootstrap.min.css"/>' rel="stylesheet">
<link href='<spring:url value="resources/Home_resources/font-awesome/css/font-awesome.min.css"/>' rel="stylesheet"
	type="text/css" />
<!-- Custom styles for this template -->
<link href='<spring:url value="resources/Home_resources/css/style.css"/>' rel="stylesheet">
<link href='<spring:url value="resources/Home_resources/fonts/antonio-exotic/stylesheet.css"/>' rel="stylesheet">
<link rel="stylesheet" href='<spring:url value="resources/Home_resources/css/lightbox.min.css"/>' >
<link href='<spring:url value="resources/Home_resources/css/responsive.css"/>' rel="stylesheet">
<script src='<spring:url value="resources/Home_resources/js/jquery.min.js"/>' type="text/javascript"></script>
<script src='<spring:url value="resources/Home_resources/js/bootstrap.min.js"/>' type="text/javascript"></script>
<script src='<spring:url value="resources/Home_resources/js/lightbox-plus-jquery.min.js"/>' type="text/javascript"></script>
<script src='<spring:url value="resources/Home_resources/js/instafeed.min.js"/>' type="text/javascript"></script>
<script src='<spring:url value="resources/Home_resources/js/custom.js"/>' type="text/javascript"></script>
</head>
<body>
	<div id="page">
		<!---header top---->
		<div class="top-header">
			<div class="container">
				<div class="row">
					<div class="col-md-6"></div>
				</div>
			</div>
		</div>
	</div>
	<!--header--->
	<header class="header-container">
		<div class="container">
			<div class="top-row">
				<div class="row">
					<div class="col-md-2 col-sm-6 col-xs-6">
						<div id="logo">
							<!--<a href="index.html"><img src="images/logo.png" alt="logo"></a>-->
							<a href="rooms"><span>Star</span>home</a>
						</div>
					</div>
					<div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
						<nav class="navbar navbar-default">
							<div class="navbar-header page-scroll">
								<button data-target=".navbar-ex1-collapse"
									data-toggle="collapse" class="navbar-toggle" type="button">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>

							</div>
							<div
								class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
								<ul class="list-unstyled nav1 cl-effect-10">
									<li><a data-hover="Rooms" href="rooms"><span>Rooms</span></a></li>
									<li><a data-hover="Services" href="services"><span>Services</span></a></li>
									<li><a data-hover="About" class="active"><span>About</span></a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>


	<!--end-->
	<div id="myCarousel1" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->

			<ol class="carousel-indicators">
				<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel1" data-slide-to="1"></li>
				<li data-target="#myCarousel1" data-slide-to="2"></li>
				<li data-target="#myCarousel1" data-slide-to="3"></li>
				<li data-target="#myCarousel1" data-slide-to="4"></li>
				<li data-target="#myCarousel1" data-slide-to="5"></li>
				<li data-target="#myCarousel1" data-slide-to="6"></li>
				<li data-target="#myCarousel1" data-slide-to="7"></li>
				<li data-target="#myCarousel1" data-slide-to="8"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src='<spring:url value="resources/Home_resources/images/banner3.jpg"/>' style="width: 100%; height: 500px"
						alt="First slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/resort.jpg"/>' style="width: 100%; height: 500px"
						alt="Ninth slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/blog-full.png"/>' style="width: 100%; height: 500px"
						alt="Second slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery1-1.jpg"/>' style="width: 100%; height: 500px"
						alt="Third slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery2-2.jpg"/>' style="width: 100%; height: 500px"
						alt="Forth slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery5-5.jpg"/>' style="width: 100%; height: 500px"
						alt="Fifth slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery6-6.jpg"/>' style="width: 100%; height: 500px"
						alt="Sixth slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery7-7.jpg"/>' style="width: 100%; height: 500px"
						alt="Seventh slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery9-9.jpg"/>' style="width: 100%; height: 500px"
						alt="Eighth slide">
					<div class="carousel-caption">
						<h1>
							about us
						</h1>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img src='<spring:url value="resources/Home_resources/images/icons/left-arrow.png"/>'
				onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow-hover.png"/>'"
				onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow.png"/>'" alt="left"></a>
			<a class="right carousel-control" href="#myCarousel1"
				data-slide="next"><img src="images/icons/right-arrow.png"
				onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow-hover.png"/>'"
				onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow.png"/>'" alt="left"></a>

		</div>
	<div class="clearfix"></div>


	<section class="about-block">
		<div class="container">
			<div class="row">
				<div class="col-md-5 about-left">
					<p>
						Lorem <label>ipsum</label> dol <span>-sitamet</span>
					</p>
				</div>
				<div class="col-md-7 about-right">
					<h3>Lorem ipsum dolor sit amet, consec</h3>
					<p>Donec bibendum massa metus, vel aliquet nunc varius eu.
						Curabitur nec scelerisque dui. Quisque mattis libero et enim
						ultricies gravida. Nulla ut commodo massa, eget tincidunt ligula.
						Vivamus eu ante tincidunt, fermentum risus nec, pharetra turpis.
						Donec rhoncus eros sed felis aliquet tincidunt. In consectetur
						tempor quam</p>
					<ul class="list-unstyled list-inline">
						<li>Sed vitae facilisis nisi, in finibus lacus. Duis vel
							nulla orci.</li>
						<li>fringilla, at ultrices felis dignissim. Integer ultricies
							posuere odio</li>
						<li>Sed vestibulum mattis laoreet. Donec sollicitudin justo
							luctus nulla consectetur</li>
						<li>Nam dolor tellus, dictum sit amet libero eu, semper
							placerat massa.</li>
						<li>consectetur tempor quam, aliquam dignissim diam hendrerit
							nec. Cras sodales at nisl</li>
					</ul>
					<span>Lorem ipsum dolor sit amet, consectetur adipiscing
						elit</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</section>

	<!---footer--->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12 width-set-50">
					<div class="footer-details">
						<h4>Get in touch</h4>
						<ul class="list-unstyled footer-contact-list">
							<li><i class="fa fa-map-marker fa-lg"></i>
								<p>701 Old York Drive Richmond USA.</p></li>
							<li><i class="fa fa-phone fa-lg"></i>
								<p>
									<a href="tel:+1-202-555-0100"> 0974384921</a>
								</p></li>
							<li><i class="fa fa-envelope-o fa-lg"></i>
								<p>
									<a href="mailto:ndsg1964@gmail.com"> ndsg1964@gmail.com</a>
								</p></li>
						</ul>
						<div class="input-group" id="subscribe">
							<input type="text" class="form-control subscribe-box" value=""
								name="subscribe" placeholder="EMAIL ID"> <span
								class="input-group-btn">
								<button type="button" class="btn subscribe-button">
									<i class="fa fa-paper-plane fa-lg"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12 width-50 width-set-50">
					<div class="footer-details">
						<h4>explore</h4>
						<ul class="list-unstyled footer-links">
							<li><a href="rooms">Rooms</a></li>                              
                            <li><a href="services">Services</a></li>
                            <li class="active"><a>About</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="footer-details">
						<h4>Now On Instagram</h4>
						<div class="row">
							<div class="instagram-images">
								<div id="instafeed"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="copyright">
				&copy; 2017 All right reserved. Designed by <a href=""
					target="_blank">Thien An.</a>
			</div>

		</div>
	</footer>

	<!--back to top--->
	<a style="display: none;" href="javascript:void(0);"
		class="scrollTop back-to-top" id="back-to-top"> <span><i
			aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span> <span>Top</span>
	</a>

	</div>
</body>
</html>
