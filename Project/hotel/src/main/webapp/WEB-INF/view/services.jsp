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
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"
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
<link rel="stylesheet"
	href='<spring:url value="resources/Home_resources/css/lightbox.min.css"/>'>
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
.list-services {
	border-collapse: collapse;
}

.tr-list-services {
	margin: 5px;
	padding: 10px;
}

.td-list-services {
	padding: 15px;
}

.td-list-sv{
	padding: 15px 25px 15px 25px;
}
.td-list-sv-1{
	padding: 15px 25px 15px 4.5%;
}
</style>


</head>
<body>
	<div id="page">
		<!---header top---->
		<div class="top-header">
			<div class="container">
				<div class="row">
					<div class="col-md-6"></div>
					<div class="col-md-6"></div>
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
										<li><a data-hover="Trang chủ" href="home"><span>Trang
													chủ</span></a></li>
										<li><a data-hover="Dịch vụ" class="active"><span>Dịch
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
		<section class="image-head-wrapper"
			style="background-image: url('<spring:url value="resources/Home_resources/images/banner2.jpg"/> ');">
		</section>
		<div class="clearfix"></div>

		<!--dinning-->
		<section class="blog">
			<div class="container">
				<div class="row">

					<div class="col-md-9 col-sm-8 col-xs-12" style="width: 100%;">
						<h2 class="blog-title-head" style="font-size: 30px;">StarHome
							Restaurant hân hạnh được phục vụ quý khách</h2>
						<p class="user-info">
							Được viết bởi <a href="https://thienan1999.wordpress.com/">Thiên
								Ân</a>
						</p>
						<p class="blog-desc" style="font-size: 20px;">Muốn ăn hay uống
							gì thì vào đây... Nhé!!!</p>
						<div class="blog-image-single margin-top-large">
							<h2>
								<b>Đồ uống nhanh</b>
							</h2>
							<hr style="border: 2px solid red;">

							<div id="myCarousel1" class="carousel slide" style="padding: 0 40px 0 40px" data-ride="carousel">
								<!-- Indicators -->

								<div class="carousel-inner">
									<div class="item active">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/water1.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/water1.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														AQUAFINA
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/water2.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/water2.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink"> LA
														VIE
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/sting.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/sting.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														STING
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/mirinda.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/mirinda.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														MIRINDA
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/coca.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/coca.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														COCA COLA
												</a></td>
											</tr>
										</table>
									</div>

									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/pepsi.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/pepsi.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														PEPSI
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/samurai.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/samurai.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														SAMURAI
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/redbull.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/redbull.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														RED BULL
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/HanoiBear.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/HanoiBear.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														BIA HÀ NỘI
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/SaigonBear.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/SaigonBear.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														BIA SÀI GÒN
												</a></td>
											</tr>
										</table>
									</div>

									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/333Bear.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/333Bear.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														BIA 333
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/TigerBear.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/TigerBear.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														BIA TIGER
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/HeinekenBear.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/HeinekenBear.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														BIA HEINEKEN
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/BudweiserBear.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/BudweiserBear.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														BIA BUDWEISER
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/blacklabel.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/blacklabel.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														RƯỢU BLACK LABEL
												</a></td>
											</tr>
										</table>
									</div>

									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/gin.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/gin.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														RƯỢU GIN
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/vodka.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/vodka.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														RƯỢU VODKA
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/whisky.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/whisky.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														RƯỢU WHISKY
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/vang.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/vang.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														RƯỢU VANG
												</a></td>
												<td class="td-list-services"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/nacallan.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/macallan.jpg"/> '
														class="img-responsive"
														style="width: 200px; height: 200px;" alt="drink">
														RƯỢU MACALLAN
												</a></td>
											</tr>
										</table>
									</div>


								</div>

								<a class="left carousel-control" href="#myCarousel1"
									data-slide="prev" style="width: 0; left: 0; right: auto;">
									<img
									src='<spring:url value="resources/Home_resources/images/icons/Arrow_Left.png"/>'
									onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow-hover.png"/>'"
									onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/Arrow_Left.png"/>'"
									alt="left">
								</a> <a class="right carousel-control" href="#myCarousel1"
									data-slide="next" style="width: 0; margin-right: 32px;"><img
									src='<spring:url value="resources/Home_resources/images/icons/Arrow_Right.png"/>'
									onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow-hover.png"/>'"
									onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/Arrow_Right.png"/>'"
									alt="right"></a>
							</div>
						</div>

						<div class="clearfix"></div>
						<br><br><br><br>

						<div class="blog-image-single margin-top-large">
							<h2>
								<b>Đồ ăn - Đồ uống của nhà hàng</b>
							</h2>
							<hr style="border: 2px solid red;">

							<div id="myCarousel2" style="padding: 0 40px 0 40px" class="carousel slide" data-ride="carousel">
								<!-- Indicators -->

								<div class="carousel-inner">
									<div class="item active">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/cafe.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/cafe.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														CÀ PHÊ
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/espresso .jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/espresso .jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														ESPRESSO
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/lemontea.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/lemontea.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														TRÀ CHANH
												</a></td>
											</tr>
										</table>
									</div>

									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/tea.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/tea.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														TRÀ HOA CÚC
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/waterlemon.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/waterlemon.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														NƯỚC ÉP DƯA HẤU
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/fruit.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/fruit.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														NƯỚC ÉP HOA QUẢ
												</a></td>
											</tr>
										</table>
									</div>

									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/chocolate_cake.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/chocolate_cake.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														BÁNH HẠT CHOCOLATE
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/rainbow_cake.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/rainbow_cake.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														BÁNH LY CẦU VỒNG
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/drink/dau_cake.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/drink/dau_cake.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														BÁNH LY DÂU
												</a></td>
											</tr>
										</table>
									</div>

									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food1.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food1.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														BÁNH BURRITOS
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food2.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food2.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														BÒ BÍP TẾT LOẠI 1
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food3.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food3.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														BÒ BÍP TẾT LOẠI 2
												</a></td>
											</tr>
										</table>
									</div>
									
									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food4.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food4.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														CÁ PHI LÊ
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food5.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food5.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														HAMBURGER
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food6.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food6.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														LẨU CÁ CHÉP NẤU CHUA
												</a></td>
											</tr>
										</table>
									</div>
									
									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food7.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food7.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														LẨU CÁ LẤU CỦ CẢI
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food8.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food8.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														PHI LÊ CÁ BƠN
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food9.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food9.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														PHI LÊ CHIÊN
												</a></td>
											</tr>
										</table>
									</div>
									
									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food10.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food10.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														PIZZA NẤM
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food11.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food11.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														PIZZA PHÔ MAI
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food12.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food12.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														BÀN CƠM TRƯA GIA ĐÌNH
												</a></td>
											</tr>
										</table>
									</div>
									
									<div class="item">
										<table class="display" id="example" style="width: 100%;">
											<tr class="tr-list-services">
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food13.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food13.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														SUSHI
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food14.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food14.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														TRỨNG CÁ MUỐI
												</a></td>
												<td class="td-list-sv"><a
													class="example-image-link img-responsive"
													href='<spring:url value="resources/Home_resources/images/food/food15.jpg"/> '
													data-lightbox="example-1" style="text-align: center;">
														<img
														src='<spring:url value="resources/Home_resources/images/food/food15.jpg"/> '
														class="img-responsive"
														style="width: 300px; height: 200px;" alt="drink">
														LẨU CUA BIỂN
												</a></td>
											</tr>
										</table>
									</div>


								</div>

								<a class="left carousel-control" href="#myCarousel2"
									data-slide="prev" style="width: 0; left: 0; right: auto;">
									<img
									src='<spring:url value="resources/Home_resources/images/icons/Arrow_Left.png"/>'
									onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/left-arrow-hover.png"/>'"
									onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/Arrow_Left.png"/>'"
									alt="left">
								</a> <a class="right carousel-control" href="#myCarousel2"
									data-slide="next" style="width: 0; margin-right: 32px;"><img
									src='<spring:url value="resources/Home_resources/images/icons/Arrow_Right.png"/>'
									onmouseover="this.src = '<spring:url value="resources/Home_resources/images/icons/right-arrow-hover.png"/>'"
									onmouseout="this.src = '<spring:url value="resources/Home_resources/images/icons/Arrow_Right.png"/>'"
									alt="right"></a>
							</div>
						</div>

					</div>

				</div>
			</div>
		</section>
		<!--end-->
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
								<li class="active"><a>Dịch vụ</a></li>
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
					&copy; 2017 All right reserved. Designed by <a
						href="https://thienan1999.wordpress.com/" target="_blank">Thien
						An.</a>
				</div>

			</div>
		</footer>

		<!--back to top--->
		<a style="display: none;" href="javascript:void(0);"
			class="scrollTop back-to-top" id="back-to-top"> <span><i
				aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span> <span>Đầu</span>
			<span>Trang</span>
		</a>

	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
</body>
</html>
