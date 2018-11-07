<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<title>Login Manager</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<spring:url value="/resources/Login_resources/images/icons/favicon.ico"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/vendor/bootstrap/css/bootstrap.min.css"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/fonts/iconic/css/material-design-iconic-font.min.css"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/vendor/animate/animate.css"/>"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/vendor/css-hamburgers/hamburgers.min.css"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/vendor/animsition/css/animsition.min.css"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/vendor/select2/select2.min.css"/>"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/vendor/daterangepicker/daterangepicker.css"/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/css/util.css"/>"/>
	<link rel="stylesheet" type="text/css" href="<spring:url value="/resources/Login_resources/css/main.css"/>"/>
<!--===============================================================================================-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url(<spring:url value='/resources/Login_resources/images/bg-01.jpg'/>);"/>
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="post">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>
					<span class="login100-form-title p-b-34 p-t-27">
						ĐĂNG NHẬP
					</span>
					<c:url value="/handleLogin" var="loginUrl"/>
					<form action="${loginUrl}" method="post">
					<c:if test="${param.error != null}">        
						<p style="color: white; text-align: center;">
							** Tài khoản hoặc mật khẩu không đúng! **
						</p>
					</c:if>
					<c:if test="${param.logout != null}">       
						<p style="color: #00ff00; text-align: center;">
							** Bạn đã đăng xuất! **
						</p>
					</c:if>
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<label for="username"></label>
						<input class="input100" type="text" name="username" placeholder="Tài khoản">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<label for="password"></label>
						<input class="input100" type="password" name="password" placeholder="Mật khẩu">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<br>
					
					<input type="hidden"                        
						name="${_csrf.parameterName}"
						value="${_csrf.token}"/>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Đăng nhập
						</button>
					</div>
					</form>
				</form>
				<a href='<spring:url value="/" />' style="float: right;">Trở về trang chủ</a>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="<spring:url value="/resources/Login_resources/vendor/jquery/jquery-3.2.1.min.js"/>"/></script>
<!--===============================================================================================-->
	<script src="<spring:url value="/resources/Login_resources/vendor/animsition/js/animsition.min.js"/>"/></script>
<!--===============================================================================================-->
	<script src="<spring:url value="/resources/Login_resources/vendor/bootstrap/js/popper.js"/>"/></script>
	<script src="<spring:url value="/resources/Login_resources/vendor/bootstrap/js/bootstrap.min.js"/>"/></script>
<!--===============================================================================================-->
	<script src="<spring:url value="/resources/Login_resources/vendor/select2/select2.min.js"/>"/></script>
<!--===============================================================================================-->
	<script src="<spring:url value="/resources/Login_resources/vendor/daterangepicker/moment.min.js"/>"/></script>
	<script src="<spring:url value="/resources/Login_resources/vendor/daterangepicker/daterangepicker.js"/>"/></script>
<!--===============================================================================================-->
	<script src="<spring:url value="/resources/Login_resources/vendor/countdowntime/countdowntime.js"/>"/></script>
<!--===============================================================================================-->
	<script src="<spring:url value="/resources/Login_resources/js/main.js"/>"/></script>
</body>
</html>