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
<title>Trang chủ Manager</title>
<link rel="stylesheet" type="text/css"
	href='<spring:url value="resources/css/style2.css"/>'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
</head>

<body>
	<header>
		<h1 id="effectText1">MANAGER PAGE</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>

	<c:url var="formUrl" value="/manager-list/view-room" />

	<form:form modelAttribute="room" action="${formUrl}">
		<article>

			<div>
				<table>
					<tr>
						<td colspan="2">Chi tiết phòng ${room.roomNo}</td>
					</tr>
					<tr>
						<td>Loại phòng: </td>
						<td><form:input path="roomStyle" readonly/></td>
					</tr>
					<tr>
						<td>Trạng thái: </td>
						<td><form:input path="status" readonly/></td>
					</tr>
					<tr>
						<td>Giường: </td>
						<td><form:input path="bed" readonly/></td>
					</tr>
					<tr>
						<td>Máy lạnh: </td>
						<td><form:input path="airConditioner" readonly/></td>
					</tr>
					<tr>
						<td>Giá tiền: </td>
						<td><form:input path="money" readonly/></td>
					</tr>
				</table>
			</div>

		</article>
	</form:form>

		<footer>
			<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
				lịch và đi công tác tại thành phố hoa</h3>
		</footer>
</body>
</html>