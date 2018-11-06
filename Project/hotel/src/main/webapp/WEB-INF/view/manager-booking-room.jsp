<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tạo phòng</title>
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/style3.css"/>'>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
	
<script type="text/javascript" src='<spring:url value="/resources/js/app.js" />'></script>

</head>

<body>
	<header>
		<h1 id="effectText1">TRANG QUẢN LÝ</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>

	<form:form id="form1" modelAttribute="booking" action="${formUrl}" method="post">
		<article>
			<div>
				<table>
					<tr>
						<td colspan="2"><b>PHÒNG ${room.roomNo}</b></td>
						<form:hidden path="roomNo"/>
					</tr>
					<tr>
						<td>Họ Tên: </td>
						<td><form:input path="fullName" name="fullName"/></td>
					</tr>
					<tr>
						<td>Chứng minh nhân dân: </td>
						<td><form:input path="cmnd" name="cmnd" /></td>
					</tr>

				</table>
				<span style="margin-bottom: 100px;"></span>
				<p class="btn">
					<a style="margin: 10px 10px 10px 34%" href="#" onclick="submitForm('form1')">ĐẶT PHÒNG</a> <a
						href='<spring:url value="/manager-list" />'>TRỞ VỀ</a>
				</p>
			</div>
		</article>
	</form:form>

	<footer>
		<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
			lịch và đi công tác tại thành phố hoa</h3>
	</footer>


</body>
</html>