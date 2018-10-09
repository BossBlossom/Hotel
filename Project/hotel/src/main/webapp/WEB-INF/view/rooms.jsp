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
                                    <a href="home"><span>Star</span>home</a>
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
                                            <li><a data-hover="Home" href="home"><span>Home</span></a></li>
                                            <li><a data-hover="About" href="about"><span>About</span></a></li>
                                            <li><a data-hover="Rooms" class="active"><span>Rooms</span></a></li>
                                            <li><a data-hover="Gallery"  href="gallery"><span>Gallery</span></a></li>
                                            <li><a data-hover="Dinning" href="dinning"><span>Dinning</span></a></li>
                                            <li><a data-hover="Rooms-View" href="rooms-view"><span>Rooms-View</span></a></li>
                                            <li><a data-hover="Booking" href="booking"><span>Booking</span></a></li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </header>


            <!--end-->
            <section class="image-head-wrapper" style="background-image: url('<spring:url value="resources/Home_resources/images/banner.jpg" />');">
            </section>
            <div class="clearfix"></div>

            <!--gallery block--->
            <section class="gallery-block gallery-front">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src='<spring:url value="resources/Home_resources/images/room1.png" />'>
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/room1.png" />' data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>delux room</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src='<spring:url value="resources/Home_resources/images/room2.png"/>'>
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/room2.png"/>' data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>super room</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src='<spring:url value="resources/Home_resources/images/room3.png"/>'>
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/room3.png"/>' data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>single room</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="gallery-image">
                                <img class="img-responsive" src='<spring:url value="resources/Home_resources/images/room4.png"/>'>
                                <div class="overlay">
                                    <a class="info pop example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/room4.png"/>' data-lightbox="example-1"><i class="fa fa-search" aria-hidden="true"></i></a>
                                    <p><a>double room</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--service block--->
            <section class="service-block">
                <div class="bg-set-col">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-3 col-xs-6 width-50">
                                <div class="service-details text-center">
                                    <div class="service-image">
                                        <img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/icons/wifi.png"/>'>
                                    </div>
                                    <h4><a>free wifi</a></h4>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-6 width-50">
                                <div class="service-details text-center">
                                    <div class="service-image">
                                        <img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/icons/key.png"/>'>
                                    </div>
                                    <h4><a>room service</a></h4>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-6 mt-25">
                                <div class="service-details text-center">
                                    <div class="service-image">
                                        <img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/icons/car.png"/>'>
                                    </div>
                                    <h4><a>free parking</a></h4>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-6 mt-25">
                                <div class="service-details text-center">
                                    <div class="service-image">
                                        <img alt="image" class="img-responsive" src='<spring:url value="resources/Home_resources/images/icons/user.png"/>'>
                                    </div>
                                    <h4><a>customer support</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                    <li><a href="home">Home</a></li>
                                    <li><a href="about">About</a></li>
                                    <li class="active"><a>Rooms</a></li>
                                    <li><a href="gallery">Gallery</a></li>
                                    <li><a href="dinning">Dinning</a></li>
                                    <li> <a href="rooms-view">Rooms-View</a></li>
                                    <li> <a href="booking">Booking</a></li>
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
