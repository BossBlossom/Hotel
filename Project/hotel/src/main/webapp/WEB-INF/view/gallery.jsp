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
<script src='<spring:url value="resources/Home_resources/js/jquery.imagesloaded.js"/>'></script>
<script src='<spring:url value="resources/Home_resources/js/masonry.pkgd.min.js"/>'></script>
<script src='<spring:url value="resources/Home_resources/js/lightbox-plus-jquery.min.js"/>' type="text/javascript"></script>
<script src='<spring:url value="resources/Home_resources/js/instafeed.min.js"/>' type="text/javascript"></script>
<script src='<spring:url value="resources/Home_resources/js/custom.js"/>' type="text/javascript"></script>
<style>
            .grid {
                background: rgba(0,0,0,0);
            }
            /* clear fix */
            .grid:after {
                content: '';
                display: block;
                clear: both;
            }
            /* ---- .grid-item ---- */
            .grid-sizer,
            .grid-item {
                width: 33.34%;
            }
            .grid-item {
                float: left;
            }
            .grid-item img {
                display: block;
                max-width: 100%;
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
                                    <!--<a href="home"><img src="images/logo.png" alt="logo"></a>-->
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
                                            <li><a data-hover="Rooms" href="rooms"><span>Rooms</span></a></li>
                                            <li><a data-hover="Gallery" class="active"><span>Gallery</span></a></li>
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
            <section class="image-head-wrapper">
            </section>
            <div class="clearfix"></div>

            <section class="gallery-block">
                <div class="container">
                    <div class="row">
                        <div class="grid hover-effect">
                            <div class="grid-sizer"></div>
                            <div class="grid-item percent37 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery1-1.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery1.png"/>' class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent25 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery2-2.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery2.png"/>' class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent37 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery3-3.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery3.png"/>' class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent25 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery4-4.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery4.png"/>' class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent37 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery5-5.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery5.png"/>' class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent20 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery6-6.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery6.png"/>' class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent20 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery7-7.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery7.png"/>' class="img-responsive" alt="gallery1"></a>
                            </div>
                            <div class="grid-item percent20 gallery-image">
                                <a class="example-image-link img-responsive" href='<spring:url value="resources/Home_resources/images/gallery8-8.jpg"/>' data-lightbox="example-1"><img src='<spring:url value="resources/Home_resources/images/gallery8.png"/>' class="img-responsive" alt="gallery1"></a> 
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
                                    <li><a href="rooms">Rooms</a></li>
                                    <li class="active"><a>Gallery</a></li>
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
        <script>
            var grid = document.querySelector('.grid');

            var msnry = new Masonry(grid, {
                itemSelector: '.grid-item',
                columnWidth: '.grid-sizer',
                percentPosition: true
            });

            imagesLoaded(grid).on('progress', function () {
                // layout Masonry after each image loads
                msnry.layout();
            });
        </script>
    </body>
</html>
