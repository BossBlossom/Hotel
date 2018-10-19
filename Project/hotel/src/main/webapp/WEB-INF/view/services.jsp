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
                        <div class="col-md-6">

                        </div>
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
                                    <a href="rooms"><span>Star</span>home</a>
                                </div>                       
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
                                <nav class="navbar navbar-default">
                                    <div class="navbar-header page-scroll">
                                        <button data-target=".navbar-ex1-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>

                                    </div>
                                    <div class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
                                        <ul class="list-unstyled nav1 cl-effect-10">
                                            <li><a data-hover="Rooms" href="rooms"><span>Rooms</span></a></li>
											<li><a data-hover="Services" class="active"><span>Services</span></a></li>
											<li><a data-hover="About" href="about"><span>About</span></a></li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </header>


            <!--end-->
            <section class="image-head-wrapper" style="background-image: url('<spring:url value="resources/Home_resources/images/banner2.jpg"/> ');">
            </section>
            <div class="clearfix"></div>

            <!--dinning-->
            <section class="blog">
                <div class="container">
                    <div class="row">

                        <div class="col-md-9 col-sm-8 col-xs-12">
                            <h2 class="blog-title-head">StarHome Restaurant hân hạnh được phục vụ quý khách</h2>
                            <p class="user-info">Posted by <a>Thien An</a> in <a>General</a></p>
                            <div class="blog-image-single margin-top-small">
                                <img src='<spring:url value="resources/Home_resources/images/banner2.png"/>' class="img-responsive">
                            </div>
                            <p class="blog-desc">Muốn ăn hay uống gì thì vào đây... Nhé!!!</p>

                            <div class="clearfix"></div>
                            
                        </div>
                        <aside class="col-md-3 col-sm-4 col-xs-12">
                            <div class="blog-list">
                                <h4>ĐỒ UỐNG</h4>
                                <ul>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/coca.jpg"/>'><i class="fa fa-caret-right"> </i>Coca Cola</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/pepsi.jpg"/>'><i class="fa fa-caret-right"> </i>Pepsi</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/mirinda.jpg"/>'><i class="fa fa-caret-right"> </i>Mirinda</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/sting.jpg"/>'><i class="fa fa-caret-right"> </i>Sting</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/samurai.jpg"/>'><i class="fa fa-caret-right"> </i>Samurai</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/redbull.jpg"/>'><i class="fa fa-caret-right"> </i>Red Bull</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/water1.jpg"/>'><i class="fa fa-caret-right"> </i>Aquafina</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/water2.jpg"/>'><i class="fa fa-caret-right"> </i>LaVie</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/333Bear.jpg"/>'><i class="fa fa-caret-right"> </i>Bear 333</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/SaigonBear.jpg"/>'><i class="fa fa-caret-right"> </i>Bear Sài Gòn</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/HanoiBear.jpg"/>'><i class="fa fa-caret-right"> </i>Bear Hà Nội</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/blue_cocktail.jpg"/>'><i class="fa fa-caret-right"> </i>Blue Cocktail</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/blue_lagoon.jpg"/>'><i class="fa fa-caret-right"> </i>Blue Lagoon</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/gin.jpg"/>'><i class="fa fa-caret-right"> </i>Rượu Gin</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/vodka.jpg"/>'><i class="fa fa-caret-right"> </i>Rượu Vodka</a></li>
                                    <li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/drink/whisky.jpg"/>'><i class="fa fa-caret-right"> </i>Rượu Whisky</a></li>
                                </ul>

                                <div class="clearfix"> </div>
                            </div>
                            <div class="blog-list">
                                <h4>ĐỒ ĂN</h4>
                                <ul>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food1.jpg"/>'><i class="fa fa-caret-right"> </i>Lẩu thập cẩm</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food2.jpg"/>'><i class="fa fa-caret-right"> </i>Ức gà nấu trứng hầm khoai</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food3.jpg"/>'><i class="fa fa-caret-right"> </i>Bánh Tiramisu</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food4.jpg"/>'><i class="fa fa-caret-right"> </i>Sườn bò</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food5.jpg"/>'><i class="fa fa-caret-right"> </i>Mỳ Ramen</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food6.jpg"/>'><i class="fa fa-caret-right"> </i>Cá viên, bò viên chiên</a></li>	
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food7.jpg"/>'><i class="fa fa-caret-right"> </i>Mỳ xào giòn chay</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food8.jpg"/>'><i class="fa fa-caret-right"> </i>Sallad Cá Khoai</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food9.jpg"/>'><i class="fa fa-caret-right"> </i>Nui xào bò</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food10.jpg"/>'><i class="fa fa-caret-right"> </i>Bánh Machiato Cam</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food11.jpg"/>'><i class="fa fa-caret-right"> </i>Bánh Machiato Nho</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food12.jpg"/>'><i class="fa fa-caret-right"> </i>Set trà và bánh ngọt 1</a></li>
                                	<li><a data-lightbox="example-1" href='<spring:url value="resources/Home_resources/images/Food/food13.jpg"/>'><i class="fa fa-caret-right"> </i>Set trà và bánh ngọt 2</a></li>
                                </ul>
                            </div>
                           
                        </aside>
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
                                <h4>Get in touch</h4>
                                <ul class="list-unstyled footer-contact-list">
                                    <li>
                                        <i class="fa fa-map-marker fa-lg"></i>
                                        <p>701 Old York Drive Richmond USA.</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-phone fa-lg"></i>
                                        <p><a href="tel:+1-202-555-0100"> 0974384921</a></p>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope-o fa-lg"></i>
                                        <p><a href="mailto:ndsg1964@gmail.com"> ndsg1964@gmail.com</a></p>
                                    </li>
                                </ul>
                                <div class="input-group" id="subscribe">
                                    <input type="text" class="form-control subscribe-box" value="" name="subscribe" placeholder="EMAIL ID">
                                    <span class="input-group-btn">
                                        <button type="button" class="btn subscribe-button"><i class="fa fa-paper-plane fa-lg"></i></button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12 width-50 width-set-50">
                            <div class="footer-details">
                                <h4>explore</h4>
                                <ul class="list-unstyled footer-links">                                                                       
                                    <li><a href="rooms">Rooms</a></li>                              
                                    <li class="active"><a>Services</a></li>
                                    <li><a href="about">About</a></li>
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
                        &copy; 2017 All right reserved. Designed by <a href="" target="_blank">Thien An.</a>
                    </div>

                </div>
            </footer>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>

        </div>
    </body>
</html>
