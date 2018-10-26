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
<link rel="icon"
	href='<spring:url value="resources/Home_resources/images/icons/favicon.png"></spring:url>' />
<title>StarHome</title>

<!-- Bootstrap core CSS -->
<link
	href='<spring:url value="resources/Home_resources/css/bootstrap.min.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/font-awesome/css/font-awesome.min.css"/>'
	rel="stylesheet" type="text/css" />
<!-- Custom styles for this template -->
<link
	href='<spring:url value="resources/Home_resources/css/style.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/fonts/antonio-exotic/stylesheet.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/css/lightbox.min.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/css/responsive.css"/>'
	rel="stylesheet">
<script
	src='<spring:url value="resources/Home_resources/js/jquery.min.js"/>'
	type="text/javascript"></script>
<script
	src='<spring:url value="resources/Home_resources/js/bootstrap.min.js"/>'
	type="text/javascript"></script>
<script
	src='<spring:url value="resources/Home_resources/js/lightbox-plus-jquery.min.js"/>'
	type="text/javascript"></script>
<script
	src='<spring:url value="resources/Home_resources/js/instafeed.min.js"/>'
	type="text/javascript"></script>
<script
	src='<spring:url value="resources/Home_resources/js/custom.js"/>'
	type="text/javascript"></script>


<style type="text/css">
.main-main {
	position: relative;
}

.main-image {
	width: 265px;
	height: 140px;
	margin: 0px 10px 10px 10px;
}

.image-img {
	width: 80px;
	height: 80px;
	margin: 10px 0px 10px 10px;
}

.image-position {
	left: 0;
	top: 0;
	width: 290px;
	margin: 120px 0px 0px 10px;
	position: fixed;
}

.inf-position {
	right: 30px;
	width: 250px;
	margin: 60px 10px 0px 0px;
	position: absolute;
}
</style>


</head>
<body>
	<div id="page">

		<!---header top---->
		<div class="top-header">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<!--   <a href="#"> </a>
                         <div class="info-block"><i class="fa fa-map"></i>701 Old York Drive Richmond USA.</div>-->
					</div>
					<div class="col-md-6">
						<div class="social-grid"></div>
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
										<li><a data-hover="Trang chủ" class="active"><span>Trang
													chủ</span></a></li>
										<li><a data-hover="Dịch vụ" href="services"><span>Dịch
													vụ</span></a></li>
										<li><a data-hover="Về chúng tôi" href="about"><span>Về
													chúng tôi</span></a></li>
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
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img
						src='<spring:url value="resources/Home_resources/images/banner.png"/>'
						style="width: 100%; height: 500px" alt="First slide">
					<div class="carousel-caption">
						<h1>
							starhome<br> spa & Resort
						</h1>
					</div>
				</div>
				<div class="item">
					<img
						src='<spring:url value="resources/Home_resources/images/banner2.png"/>'
						style="width: 100%; height: 500px" alt="Second slide">
					<div class="carousel-caption">
						<h1>
							starhome<br> spa & Resort
						</h1>
					</div>
				</div>
				<div class="item">
					<img
						src='<spring:url value="resources/Home_resources/images/banner3.png"/>'
						style="width: 100%; height: 500px" alt="Third slide">
					<div class="carousel-caption">
						<h1>
							starhome<br> spa & Resort
						</h1>
					</div>
				</div>
				<div class="item">
					<img
						src='<spring:url value="resources/Home_resources/images/banner4.png"/>'
						style="width: 100%; height: 500px" alt="Forth slide">
					<div class="carousel-caption">
						<h1>
							starhome<br> spa & Resort
						</h1>
					</div>
				</div>
				<div class="item">
					<img
						src='<spring:url value="resources/Home_resources/images/inner-banner.png"/>'
						style="width: 100%; height: 500px" alt="Fifth slide">
					<div class="carousel-caption">
						<h1>
							starhome<br> spa & Resort
						</h1>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel1"
				data-slide="prev"> <img
				src='<spring:url value="resources/Home_resources/images/icons/left-arrow.png"/>'
				onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow-hover.png"/>'"
				onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow.png"/>'"
				alt="left"></a> <a class="right carousel-control"
				href="#myCarousel1" data-slide="next"><img
				src='<spring:url value="resources/Home_resources/images/icons/right-arrow.png"/>'
				onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow-hover.png"/>'"
				onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow.png"/>'"
				alt="right"></a>

		</div>
		<div class="clearfix"></div>

		<!--service block--->
		<section class="service-block">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-6 width-50">
						<div class="service-details text-center">
							<div class="service-image">
								<img alt="image" class="img-responsive"
									src='<spring:url value="resources/Home_resources/images/icons/wifi.png"/>'>
							</div>
							<h4>
								<a>Wifi miễn phí</a>
							</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-6 width-50">
						<div class="service-details text-center">
							<div class="service-image">
								<img alt="image" class="img-responsive"
									src='<spring:url value="resources/Home_resources/images/icons/key.png"/>'>
							</div>
							<h4>
								<a>Dịch vụ phòng chuyên nghiệp</a>
							</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-6 mt-25">
						<div class="service-details text-center">
							<div class="service-image">
								<img alt="image" class="img-responsive"
									src='<spring:url value="resources/Home_resources/images/icons/car.png"/>'>
							</div>
							<h4>
								<a>Bãi đậu xe miễn phí</a>
							</h4>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-6 mt-25">
						<div class="service-details text-center">
							<div class="service-image">
								<img alt="image" class="img-responsive"
									src='<spring:url value="resources/Home_resources/images/icons/user.png"/>'>
							</div>
							<h4>
								<a>Tư vấn khách hàng</a>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--gallery block--->
		<section class="gallery-block gallery-front">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="gallery-image">
							<img class="img-responsive"
								src='<spring:url value="resources/Home_resources/images/room1.png"/>'>
							<div class="overlay">
								<a class="info pop example-image-link img-responsive"
									href='<spring:url value="resources/Home_resources/images/room1.png"/>'
									data-lightbox="example-1"><i class="fa fa-search"
									aria-hidden="true"></i></a>
								<p>
									<a>delux room</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="gallery-image">
							<img class="img-responsive"
								src='<spring:url value="resources/Home_resources/images/room2.png"/>'>
							<div class="overlay">
								<a class="info pop example-image-link img-responsive"
									href='<spring:url value="resources/Home_resources/images/room2.png"/>'
									data-lightbox="example-1"><i class="fa fa-search"
									aria-hidden="true"></i></a>
								<p>
									<a>super room</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="gallery-image">
							<img class="img-responsive"
								src='<spring:url value="resources/Home_resources/images/room3.png"/>'>
							<div class="overlay">
								<a class="info pop example-image-link img-responsive"
									href='<spring:url value="resources/Home_resources/images/room3.png"/>'
									data-lightbox="example-1"><i class="fa fa-search"
									aria-hidden="true"></i></a>
								<p>
									<a>single room</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
						<div class="gallery-image">
							<img class="img-responsive"
								src='<spring:url value="resources/Home_resources/images/room4.png"/>'>
							<div class="overlay">
								<a class="info pop example-image-link img-responsive"
									href='<spring:url value="resources/Home_resources/images/room4.png"/>'
									data-lightbox="example-1"><i class="fa fa-search"
									aria-hidden="true"></i></a>
								<p>
									<a>double room</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--offer block-->
		<section class="vacation-offer-block">
			<div class="vacation-offer-bgbanner">
				<div class="container">
					<div class="row">
						<div class="col-md-5 col-sm-6 col-xs-12">
							<div class="vacation-offer-details">
								<h1>Nơi nghỉ mát lý tưởng</h1>
								<h4>Hãy đến với chúng tôi để có 1 nơi nghỉ chân tuyệt vời
									và 1 chuyến du lịch đáng nhớ.</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--End-->

		<!-----blog slider----->
		<!--blog trainer block-->
		<section class="blog-block-slider" style="margin-bottom: 30px;">
			<div class="blog-block-slider-fix-image">
				<div id="myCarousel2" class="carousel slide" data-ride="carousel">
					<div class="container">
						<!-- Wrapper for slides -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel2" data-slide-to="1"></li>
							<li data-target="#myCarousel2" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<div class="blog-box">
									<h3 style="text-align: center; color: yellow;">
										<b>Một Khu Nghĩ Dưỡng Tuyệt Vời Tại Đà Lạt</b>
									</h3>
									<br>
									<p>Tôi đã có một kỳ nghĩ tuyệt vời tại đây. Rất gần gũi với
										thiên nhiên, mang lại cho tôi một cảm giác yên bình đến lạ.
										Các ngôi biệt thự cổ kính, với lối kiến trúc độc đáo mang
										phong cách châu Âu làm cho tôi thây thực sự gần gũi và cảm
										giác rất tuyệt vời khi bước vào. Nhân viên rất lịch sự, lễ
										phép và nhanh nhẹn. Đồ ăn ở đây rất ngon và đa dạng. Phòng ốc
										rất đẹp và sang trọng, đâu đó vẫn có gì đó hoài cổ rất thú vị.
										Buổi sáng trong lành, yên tĩnh và mơ mộng. Tôi thực sự thích
										nơi đây. Chắc chắn tôi sẽ trở lại đây để tận hưởng kì nghỉ
										dưỡng cùng các bạn!</p>
								</div>
								<div class="blog-view-box">
									<div class="media">
										<div class="media-left">
											<img
												src='<spring:url value="resources/Home_resources/images/client1.png"/>'
												class="media-object">
										</div>
										<div class="media-body">
											<h3 class="media-heading blog-title">Thân Văn Quốc Bảo</h3>
											<h5 class="blog-rev">Khách VIP</h5>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="blog-box">
									<h3 style="text-align: center; color: yellow;">
										<b>Một kì nghỉ đáng giá tại Đà Lạt</b>
									</h3>
									<br>
									<p>Đúng chất là một khu nghỉ dưỡng tại Đà Lạt. Không gian
										yên tĩnh, trong lành. Nhân viên lịch sự, và rất dễ thương.
										Trang thiết bị hiện đại, từ của tự động đến tivi led thế hệ
										mới, nó làm tôi rất thích thú và cảm thấy rất đáng ở đây. Đồ
										ăn ngon và rất đa dạng. Khu nghỉ dưỡng được chăm sóc rất kĩ
										càng và có nhiều hoạt động hay ho và thú vị. Tôi đã được tham
										gia hầu hết các hoạt động của khu nghỉ dưỡng như Yoga, lễ hội
										hoa. Tôi đã có một kì nghỉ cực kì đáng giá và tuyệt vời tại
										khu nghỉ dưỡng của StarHome. Chắc chắn sẽ trở lại vào kì nghỉ
										tiếp theo của tôi.</p>
								</div>
								<div class="blog-view-box">
									<div class="media">
										<div class="media-left">
											<img
												src='<spring:url value="resources/Home_resources/images/client2.png"/>'
												class="media-object">
										</div>
										<div class="media-body">
											<h3 class="media-heading blog-title">Lê Quang Anh</h3>
											<h5 class="blog-rev">Khách Thân Thiết</h5>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="blog-box">
									<h3 style="text-align: center; color: yellow;">
										<b>Là một nơi đáng để tới để nghỉ dưỡng nhất của thành phố
											Đà Lạt</b>
									</h3>
									<br>
									<p>Khu nghỉ dưỡng với những khu biệt thự mang phong cách
										châu Âu cổ kính, tôi gần như đã có một kì nghỉ tuyệt vời như
										là đang ở quê nhà của mình. Đồ ăn ở đây thực sự rất tuyệt và
										quá nhiều thứ để chọn. tôi muốn ở lại lâu hơn để có thể thưởng
										thức hết đồ ăn nơi này. Nhân viên hết sức chu đáo và lịch sự.
										Đà Lạt là một nơi tuyệt đẹp, phong cảnh hữu tình, khí hậu mát
										mẻ, tôi thật sự rất thích hoa ở Đà Lạt và thực sự tuyệt hơn
										nữa khi tôi đã vào đây. Ngưỡng tưởng như tôi đã có một kì nghỉ
										tuyệt vời tại quê nhà, cứ như mơ vậy. Trong kỳ nghỉ năm nay
										tôi sẽ trở lại với các bạn, với Đà Lạt!</p>
								</div>
								<div class="blog-view-box">
									<div class="media">
										<div class="media-left">
											<img
												src='<spring:url value="resources/Home_resources/images/client3.png"/>'
												class="media-object">
										</div>
										<div class="media-body">
											<h3 class="media-heading blog-title">Nguyễn Việt Dũng</h3>
											<h5 class="blog-rev">Khách Ngoại Quốc</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</section>

		<!---blog block--->
		<section class="blog-block" style="margin-bottom: 50px;">
			<div class="container">
				<div class="row offspace-45">
					<div class="view-set-block">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="event-blog-image">
								<img alt="image" class="img-responsive"
									src='<spring:url value="resources/Home_resources/images/blog1.png"/>'>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 side-in-image">
							<div class="event-blog-details">
								<h4>
									<a href="about">sự sang trọng của khách sạn starhome</a>
								</h4>
								<h5>
									Được viết bởi <font color="red">Thiên Ân</font> <a><i aria-hidden="true"
										class="fa fa-heart-o fa-lg"></i>Thích</a><a><i
										aria-hidden="true" class="fa fa-comment-o fa-lg"></i>Bình luận</a>
								</h5>
								<p>Khu nghỉ dưỡng StarHome năm sâu trong hồ Tuyền Lâm. Là
									một tọa lạc lí tưởng với phong cảnh mơ mộng, trữ tình. Khu nghỉ
									dưỡng gồm nhiều khu biệt thự mang đậm phong cách châu Âu cùng
									những loại phòng đa dạng, đáp ứng nhu cầu của khách hàng.</p>
								<p>Mọi phòng quý khách hàng chọn luôn được chăm sóc kĩ càng,
									sạch sẽ. Các phòng luôn mang những phong cách châu Âu nhưng
									luôn riêng biệt để không gây nhàm chán.</p>
								<p>Khu nghỉ dưỡng gồm 4 hạng phòng. Với đầy đủ mọi loại tiện
									thiết nghi cũng như phân bố đa dạng trên nhiều tọa lạc lí tưởng
									trong Resort, mang lại cho bạn cảm giác nghỉ dưỡng tuyệt vời.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row offspace-45">
					<div class="view-set-block">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="event-blog-image">
								<img alt="image" class="img-responsive"
									src='<spring:url value="resources/Home_resources/images/yoga.jpg"/>'>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 side-in-image">
							<div class="event-blog-details">
								<h4>
									<a href="about">Những hoạt động ở Khách sạn
										Homestar</a>
								</h4>
								<h5>
									Được viết bởi <font color="red">Thiên Ân</font> <a><i aria-hidden="true"
										class="fa fa-heart-o fa-lg"></i>Thích</a><a><i
										aria-hidden="true" class="fa fa-comment-o fa-lg"></i>Bình luận</a>
								</h5>
								<p>Resort luôn được chăm sóc kĩ lưỡng và cực kì chu đáo. Ở
									đây, các bạn có thể tận hưởng kì nghỉ với mọi phong cách mà các
									bạn muốn cùng những hoạt động thú vị, đậm tính chất thư giãn
									của Resort.</p>
								<p>Các bạn có thể tham gia câu lạc bộ trẻ em cùng đội ngũ
									nhân viên yêu trẻ em và thân thiện hay tham gia các hoạt động
									nghệ thuật thủ công của chúng tôi. Resort còn gồm những phòng
									tập sức khỏe công nghệ cao hay lớp học Yoga đáp ứng mọi nhu cầu
									sức khỏe của khách hàng. Hay những hoạt động thú vị ở dưới nước
									cùng mọi sự hỗ trợ và phục vụ của đội ngũ nhân viên được đào
									tạo vô cùng chuyên nghiệp của khách sạn.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="resort-overview-block" style="margin-bottom: 30px;">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12 col-xs-12 remove-padd-right">
						<div class="side-A">
							<div class="product-thumb">
								<div class="image">
									<a href="" data-toggle="modal" data-target="#myModal1"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false"><img alt="image"
										class="img-responsive"
										src='<spring:url value="resources/Home_resources/images/room1.png"/>'></a>
								</div>
							</div>
						</div>
						<div class="side-B">
							<div class="product-desc-side">
								<h3>
									<a href="" data-toggle="modal" data-target="#myModal1"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">delux room</a>
								</h3>
								<p style="margin: 5px 0px 5px 0px;">* Phòng sang trọng, tiện
									nghi cao cấp, không gian rộng, có view đẹp.</p>
								<p style="margin: 5px 0px 5px 0px;">* Phòng ngủ và phòng
									khách riêng, có người phục vụ riêng cho từng phòng.</p>
								<p style="margin: 5px 0px 5px 0px;">* Phòng 2 giường, 3 máy
									lạnh, tivi công nghệ LED cao cấp.</p>
								<p style="margin: 5px 0px 5px 0px;">* Giá: 1200$/ngày</p>
								<div class="links">
									<a href="" data-toggle="modal" data-target="#myModal1"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">Booking</a>
								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="col-md-6 col-sm-12 col-xs-12 remove-padd-left">
						<div class="side-A">
							<div class="product-thumb">
								<div class="image">
									<a href="" data-toggle="modal" data-target="#myModal2"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false"><img
										src='<spring:url value="resources/Home_resources/images/room2.png"/>'
										class="img-responsive" alt="image"></a>
								</div>
							</div>
						</div>
						<div class="side-B">
							<div class="product-desc-side">
								<h3>
									<a href="" data-toggle="modal" data-target="#myModal2"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">super room</a>
								</h3>
								<p style="margin: 5px 0px 5px 0px;">* Phòng đẹp, tiện nghi
									đầy đủ, không gian cực rộng, có view đẹp.</p>
								<p style="margin: 5px 0px 5px 0px;">* Phòng 3 giường, 3 máy
									lạnh, tivi công nghệ LED cao cấp.</p>
								<p style="margin: 5px 0px 5px 0px;">* Giá: 800$/ngày</p>
								<div class="links">
									<a href="" data-toggle="modal" data-target="#myModal2"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">Booking</a>
								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="col-md-12 offspace-45"></div>
					<div class="col-md-6 col-sm-12 col-xs-12 remove-padd-right">
						<div class="side-A">
							<div class="product-desc-side">
								<h3>
									<a href="" data-toggle="modal" data-target="#myModal3"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">single room</a>
								</h3>
								<p style="margin: 5px 0px 5px 0px;">* Phòng kín đáo, tiện
									nghi đầy đủ, không gian rộng.</p>
								<p style="margin: 5px 0px 5px 0px;">* Phòng 1 giường, 1 máy
									lạnh, tivi công nghệ LED cao cấp.</p>
								<p style="margin: 5px 0px 5px 0px;">* Giá: 300$/ngày</p>
								<div class="links">
									<a href="" data-toggle="modal" data-target="#myModal3"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">Booking</a>
								</div>
							</div>
						</div>

						<div class="side-B">
							<div class="product-thumb">
								<div class="image txt-rgt">
									<a class="arrow-left" href="" data-toggle="modal"
										data-target="#myModal3" style="margin-top: 10px;"
										data-backdrop="static" data-keyboard="false"><img
										alt="imaga" class="img-responsive"
										src='<spring:url value="resources/Home_resources/images/room3.png"/>'></a>
								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="col-md-6 col-sm-12 col-xs-12 remove-padd-left">
						<div class="side-A">
							<div class="product-desc-side">
								<h3>
									<a href="" data-toggle="modal" data-target="#myModal4"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">double room</a>
								</h3>
								<p style="margin: 5px 0px 5px 0px;">* Phòng đẹp, tiện nghi
									đầy đủ, không gian rộng, có view đẹp.</p>
								<p style="margin: 5px 0px 5px 0px;">* Phòng 2 giường, 2 máy
									lạnh, tivi công nghệ LED cao cấp.</p>
								<p style="margin: 5px 0px 5px 0px;">* Giá: 600$/ngày</p>
								<div class="links">
									<a href="" data-toggle="modal" data-target="#myModal4"
										style="margin-top: 10px;" data-backdrop="static"
										data-keyboard="false">Booking</a>
								</div>
							</div>
						</div>

						<div class="side-B">
							<div class="product-thumb txt-rgt">
								<div class="image">
									<a class="arrow-left" href="" data-toggle="modal"
										data-target="#myModal4" style="margin-top: 10px;"
										data-backdrop="static" data-keyboard="false"><img
										alt="imaga" class="img-responsive"
										src='<spring:url value="resources/Home_resources/images/room4.png"/>'></a>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
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
								<li class="active"><a>Trang chủ</a></li>
								<li><a href="services">Dịch vụ</a></li>
								<li><a href="about">Về chúng tôi</a></li>
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
						target="_blank">Thien An.</a>
				</div>

			</div>
		</footer>

		<!--back to top--->
		<a style="display: none;" href="javascript:void(0);"
			class="scrollTop back-to-top" id="back-to-top"> <span><i
				aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span> <span>Đầu</span>
			<span>Trang</span>
		</a>



	<form:form modelAttribute="booking" action="booking" method="post">
		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle"
							style="font-size: 30px;">Điền thông tin đặt phòng</h5>
					</div>
		
					<div class="modal-body" style="height: 350px; margin-right: 0;">
						<div class="image-position">
							<table>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room9.jpg"/>'
										class="main-image"></td>
								</tr>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room10.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room11.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room12.jpg"/>'
										class="image-img"></td>
								</tr>
							</table>
						</div>
						
						<div class="inf-position">
							<table style="border-collapse: collapse;">
								<%int i=0;%>
								<c:forEach var="room" items="${rooms}">
									<c:if test="${room.getRoomStyle().getName() eq 'Double'}">
										<c:if test="${room.status eq 'none'}">
											<tr style="padding: 5px;">
												<td style="padding: 10px;">Phòng:</td>
												<%while (i<5){ %>
												<td>
													<form:radiobutton path="roomNo" value="${room.roomNo}"/> ${room.roomNo}
												</td>
												<%} %>
											</tr>
										</c:if>
									</c:if>
								</c:forEach>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Họ Tên:</td>
									<td colspan="5"><form:input path="fullName"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">CMND:</td>
									<td colspan="5"><form:input path="cmnd"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày nhận phòng:</td>
									<td colspan="5"><form:input path="startedAt" type="date"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày trả phòng:</td>
									<td colspan="5"><form:input path="endedAt" type="date"/></td>
								</tr>

							</table>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">CLOSE</button>
						<button type="submit" class="btn btn-primary">BOOKING</button>
					</div>
				</div>
			</div>
		</div>		
	</form:form>	
	<form:form modelAttribute="booking" action="booking" method="post">
		<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle"
							style="font-size: 30px;">Điền thông tin đặt phòng</h5>
					</div>

					<div class="modal-body" style="height: 350px; margin-right: 0;">
						<div class="image-position">
							<table>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room13.jpg"/>'
										class="main-image"></td>
								</tr>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room14.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room15.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room16.jpg"/>'
										class="image-img"></td>
								</tr>
							</table>
						</div>
						<div class="inf-position">
							<table style="border-collapse: collapse;">
								<%int i=0;%>
								<c:forEach var="room" items="${rooms}">
									<c:if test="${room.getRoomStyle().getName() eq 'Single'}">
										<c:if test="${room.status eq 'none'}">
											<tr style="padding: 5px;">
												<td style="padding: 10px;">Phòng:</td>
												<%while (i<5){ %>
												<td>
													<form:radiobutton path="roomNo" value="${room.roomNo}"/> ${room.roomNo}
												</td>
												<%} %>
											</tr>
										</c:if>
									</c:if>
								</c:forEach>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Họ Tên:</td>
									<td><form:input path="fullName"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">CMND:</td>
									<td><form:input path="cmnd"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày nhận phòng:</td>
									<td><form:input path="startedAt" type="date"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày trả phòng:</td>
									<td><form:input path="endedAt" type="date"/></td>
								</tr>

							</table>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">CLOSE</button>
						<button type="submit" class="btn btn-primary">BOOKING</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>	
	<form:form modelAttribute="booking" action="booking" method="post">
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle"
							style="font-size: 30px;">Điền thông tin đặt phòng</h5>
					</div>

					<div class="modal-body" style="height: 350px; margin-right: 0;">
						<div class="image-position">
							<table>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room5.jpg"/>'
										class="main-image"></td>
								</tr>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room6.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room7.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room8.jpg"/>'
										class="image-img"></td>
								</tr>
							</table>
						</div>
						<div class="inf-position">
							<table style="border-collapse: collapse;">
								<%int i=0;%>
								<c:forEach var="room" items="${rooms}">
									<c:if test="${room.getRoomStyle().getName() eq 'Super'}">
										<c:if test="${room.status eq 'none'}">
											<tr style="padding: 5px;">
												<td style="padding: 10px;">Phòng:</td>
												<%while (i<5){ %>
												<td>
													<form:radiobutton path="roomNo" value="${room.roomNo}"/> ${room.roomNo}
												</td>
												<%} %>
											</tr>
										</c:if>
									</c:if>
								</c:forEach>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Họ Tên:</td>
									<td><form:input path="fullName"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">CMND:</td>
									<td><form:input path="cmnd"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày nhận phòng:</td>
									<td><form:input path="startedAt" type="date"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày trả phòng:</td>
									<td><form:input path="endedAt" type="date"/></td>
								</tr>

							</table>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">CLOSE</button>
						<button type="submit" class="btn btn-primary">BOOKING</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>	
	<form:form modelAttribute="booking" action="booking" method="post">
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle"
							style="font-size: 30px;">Điền thông tin đặt phòng</h5>
					</div>

					<div class="modal-body" style="height: 350px; margin-right: 0;">
						<div class="image-position">
							<table>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room1.jpg"/>'
										class="main-image"></td>
								</tr>
								<tr>
									<td><img
										src='<spring:url value="resources/Home_resources/images/room2.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room3.jpg"/>'
										class="image-img"> <img
										src='<spring:url value="resources/Home_resources/images/room4.jpg"/>'
										class="image-img"></td>
								</tr>
							</table>
						</div>
						<div class="inf-position">
							<table style="border-collapse: collapse;">
								<%int i=0;%>
								<c:forEach var="room" items="${rooms}">
									<c:if test="${room.getRoomStyle().getName() eq 'Delux'}">
										<c:if test="${room.status eq 'none'}">
											<tr style="padding: 5px;">
												<td style="padding: 10px;">Phòng:</td>
												<%while (i<5){ %>
												<td>
													<form:radiobutton path="roomNo" value="${room.roomNo}"/> ${room.roomNo}
												</td>
												<%} %>
											</tr>
										</c:if>
									</c:if>
								</c:forEach>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Họ Tên:</td>
									<td><form:input path="fullName"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">CMND:</td>
									<td><form:input path="cmnd"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày nhận phòng:</td>
									<td><form:input path="startedAt" type="date"/></td>
								</tr>
								<tr style="padding: 5px;">
									<td style="padding: 10px;">Ngày trả phòng:</td>
									<td><form:input path="endedAt" type="date"/></td>
								</tr>

							</table>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">CLOSE</button>
						<button type="submit" class="btn btn-primary">BOOKING</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>


	</div>
</body>
</html>
