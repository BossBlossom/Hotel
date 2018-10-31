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
		<h1 id="effectText1">MANAGER PAGE</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>
	<c:url var="formUrl" value="/manager-list/booking" />

	<form:form id="form1" modelAttribute="room" action="${formUrl}" method="post">
		<article>
			<div>
				<table>
					<tr>
						<td colspan="2">PHÒNG ${rooms.roomNo}</td>
					</tr>
					<tr>
						<td>Họ Tên: </td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td>Chứng minh nhân dân: </td>
						<td><form:input path="cmnd" /></td>
					</tr>
					<tr>
						<td>Ngày đặt phòng: </td>
						<td><form:input path="start_at" type="date" /></td>
					</tr>
					<tr>
						<td>Ngày trả phòng: </td>
						<td><form:input path="start_end" type="date"/></td>
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