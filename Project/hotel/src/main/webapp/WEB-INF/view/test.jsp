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
    <title>Tạo phòng</title>
	<link rel="stylesheet" type="text/css" href='<spring:url value="resources/css/style3.css"/>'>
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	
	<script type="text/javascript">
		function submitForm(formName) {
			document.getElementById(formName).submit();
		}
	</script>

    <!-- Bootstrap core CSS -->
    <link href='<spring:url value="resources/View_resources/vendor/bootstrap/css/bootstrap.min.css"/>' rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href='<spring:url value="resources/View_resources/css/portfolio-item.css"/>' rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="">MANAGER PAGE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Portfolio Item Heading -->
      <h1 class="my-4">Page Heading
        <small>Secondary Text</small>
      </h1>

      <!-- Portfolio Item Row -->
      <div class="row">

        <div class="col-md-8">
          <img class="img-fluid" src="http://placehold.it/750x500" alt="">
        </div>

        <div class="col-md-4">
          <h3 class="my-3">Project Description</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>
          <h3 class="my-3">Project Details</h3>
          <ul>
            <li>Lorem Ipsum</li>
            <li>Dolor Sit Amet</li>
            <li>Consectetur</li>
            <li>Adipiscing Elit</li>
          </ul>
        </div>

      </div>
      <!-- /.row -->

      <!-- Related Projects Row -->
      <h3 class="my-4">Related Projects</h3>

      <div class="row">

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="http://placehold.it/500x300" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="http://placehold.it/500x300" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="http://placehold.it/500x300" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid" src="http://placehold.it/500x300" alt="">
          </a>
        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <jsp:include page="../template/footer.jsp"></jsp:include>

    <!-- Bootstrap core JavaScript -->
    <script src='<spring:url value="resources/View_resources/vendor/jquery/jquery.min.js"/>'></script>
    <script src='<spring:url value="resources/View_resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>'></script>

  </body>

</html>
