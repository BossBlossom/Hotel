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
							<a href="home"><span>Star</span>home</a>
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
									<li><a data-hover="Trang chủ" href="home"><span>Trang chủ</span></a></li>
									<li><a data-hover="Dịch vụ" href="services"><span>Dịch vụ</span></a></li>
									<li><a data-hover="Về chúng tôi" class="active"><span>Về chúng tôi</span></a></li>
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
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/resort.jpg"/>' style="width: 100%; height: 500px"
						alt="Ninth slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/blog-full.png"/>' style="width: 100%; height: 500px"
						alt="Second slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery1-1.jpg"/>' style="width: 100%; height: 500px"
						alt="Third slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery2-2.jpg"/>' style="width: 100%; height: 500px"
						alt="Forth slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery5-5.jpg"/>' style="width: 100%; height: 500px"
						alt="Fifth slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery6-6.jpg"/>' style="width: 100%; height: 500px"
						alt="Sixth slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery7-7.jpg"/>' style="width: 100%; height: 500px"
						alt="Seventh slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>
				<div class="item">
					<img src='<spring:url value="resources/Home_resources/images/gallery9-9.jpg"/>' style="width: 100%; height: 500px"
						alt="Eighth slide">
					<div class="carousel-caption">
						<h1>
							về chúng tôi
						</h1>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img src='<spring:url value="resources/Home_resources/images/icons/left-arrow.png"/>'
				onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow-hover.png"/>'"
				onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow.png"/>'" alt="left"></a>
			<a class="right carousel-control" href="#myCarousel1"
				data-slide="next"><img src='<spring:url value="resources/Home_resources/images/icons/right-arrow.png"/>'
				onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow-hover.png"/>'"
				onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow.png"/>'" alt="left"></a>

		</div>
	<div class="clearfix"></div>


	<section class="about-block">
		<div class="container">
			<div class="row offspace-45" style="margin-bottom: 100px;">
					<div class="view-set-block">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="event-blog-image">
								<img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/Luxury.jpg"/>'>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 side-in-image" style="margin-top: 45px;">
							<div class="event-blog-details">
								<h4 style="font-size: 30px;">
									<a href="https://news.zing.vn/16-nha-hang-dep-nhat-the-gioi-ai-cung-ao-uoc-dat-chan-den-post689205.html" >STARHOME LUXYRY</a>
								</h4>
								
								<p style="font-size:18px; font-family: sans-serif; text-align: justify; padding: 5px; line-height: 40px;">Chào đón quý khách đến với trải nghiệm đầy ấn tượng tại StarHome Luxury. 
									Khách sạn 5 sao với thiết kế biểu trưng độc đáo, hứa hẹn mang đến những kỳ nghỉ đẳng cấp tại những điểm đến đẹp nhất Việt Nam.</p>
							</div>
						</div>
					</div>
				</div>
				
			<div class="clearfix"></div>
			
			<div class="row offspace-45" style="margin-bottom: 100px;">
					<div class="view-set-block">
						
						<div class="col-md-6 col-sm-6 col-xs-12 side-in-image" style="margin-top: 65px;">
							<div class="event-blog-details">
								<h4 style="font-size: 30px;">
									<a href="https://news.zing.vn/nhung-khu-nghi-duong-tot-nhat-the-gioi-2016-post690946.html" >STARHOME HOTELS & RESORTS</a>
								</h4>
								
								<p style="font-size: 18px; font-family: sans-serif; text-align: justify; padding: 5px; line-height: 40px;">
									Chào đón quý khách đến với không gian hoàn hảo của StarHome Hotels & Resorts; với thiết kế tuyệt đẹp của khách sạn 5 sao cùng với chuỗi spa và sân golf ngay tại resort mang tới trải nghiệm ấn tượng, chuẩn quốc tế tại những bãi biển và núi đồi trên khắp đất nước.
								</p>
							</div>
						</div>
						
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="image">
								<img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/Luxury1.jpg"/>'>
							</div>
						</div>
					</div>
				</div>
				
			<div class="clearfix"></div>
			
			<div class="row offspace-45" style="margin-bottom: 100px;">
					<div class="view-set-block">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="event-blog-image">
								<img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/Luxury2.jpg"/>'>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 side-in-image" style="margin-top: 60px;">
							<div class="event-blog-details">
								<h4 style="font-size: 30px;">
									<a href="https://news.zing.vn/10-resort-huong-bien-dep-nhat-the-gioi-post617285.html" >STARHOME DISCOVERY</a>
								</h4>
								
								<p style="font-size:18px; font-family: sans-serif; text-align: justify; padding: 5px; line-height: 40px;">
									Chào mừng quý khách đến với không gian đầy tươi mới của StarHome Discovery với hệ thống khách sạn 5 sao và condotel, resort, chắc chắn mang đến cho quý khách trải nghiệm đầy mới mẻ tại những điểm đến được mong chờ nhất tại Việt Nam.
								</p>
							</div>
						</div>
					</div>
				</div>
				
			<div class="clearfix"></div>
			
			<div class="row offspace-45" style="margin-bottom: 50px;">
					<div class="view-set-block">
						
						<div class="col-md-6 col-sm-6 col-xs-12 side-in-image" style="margin-top: 55px;">
							<div class="event-blog-details">
								<h4 style="font-size: 30px;">
									<a href="http://ndh.vn/khu-nghi-duong-datai-tren-oc-dao-langkawi-malaysia-4876217p99c121.news" >STAROASIS</a>
								</h4>
								
								<p style="font-size: 18px; font-family: sans-serif; text-align: justify; padding: 5px; line-height: 40px;">
									Chào mừng bạn đến với thế giới năng động của StarOasis. Với các khách sạn và khu nghỉ dưỡng hiện đại trên ốc đảo sôi động. StarOasis hứa hẹn cho bạn những kỳ nghỉ thú vị ở trung tâm của mọi điểm đến tuyệt vời nhất tại Việt Nam.
								</p>
							</div>
						</div>
						
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="image">
								<img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/Luxury3.jpg"/>'>
							</div>
						</div>
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
						<h4>Liên lạc</h4>
						<ul class="list-unstyled footer-contact-list">
							<li><i class="fa fa-map-marker fa-lg"></i>
								<p>311 Bùi Thị Xuân, phường 16, Tp Đà Lạt.</p></li>
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
						<h4>Khám phá</h4>
						<ul class="list-unstyled footer-links">
							<li><a href="home">Trang chủ</a></li>                              
                            <li><a href="services">Dịch vụ</a></li>
                            <li class="active"><a>Về chúng tôi</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="footer-details">
						<h4>Liên kết Instagram</h4>
						<div class="row">
							<div class="instagram-images">
								<div id="instafeed"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="copyright">
				&copy; 2017 All right reserved. Designed by <a href="https://thienan1999.wordpress.com/"
					target="_blank">ADBA.</a>
			</div>

		</div>
	</footer>

	<!--back to top--->
	<a style="display: none;" href="javascript:void(0);"
		class="scrollTop back-to-top" id="back-to-top"> <span><i
			aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span> 
			<span>Đầu</span> <span>Trang</span>
	</a>

	</div>
</body>
</html>
