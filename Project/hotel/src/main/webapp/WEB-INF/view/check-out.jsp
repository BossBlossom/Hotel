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
	href='<spring:url value="/resources/css/style2.css"/>'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	
	
<style type="text/css">

.inf-position {
	margin: 0 auto;
	padding: 0 auto;
	position: relative;
}

</style>

</head>

<body>
	<header>
		<h1 id="effectText1">MANAGER PAGE</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>

	<article>
		<div class="inf-position">
			<table style="border-collapse: collapse; width: 550px;">
				<tr style="padding: 5px;">
					<td style="padding: 10px;">Phòng:</td>
					<td colspan="5">${checkout.roomNo}</td>
				</tr>
				<tr style="padding: 5px;">
					<td style="padding: 10px;">Ngày nhận phòng:</td>
					<td colspan="5">${checkout.checkIn}</td>
				</tr>
				<tr style="padding: 5px;">
					<td style="padding: 10px;">Ngày trả phòng:</td>
					<td colspan="5">${checkout.checkOut}</td>
				</tr>
				<tr style="padding: 5px;">
					<td style="padding: 10px;">Tiền phòng:</td>
					<td colspan="5">${checkout.roomTotal}</td>
				</tr>
				<tr style="padding: 5px;">
					<td style="padding: 10px;">Tổng tiền dịch vụ:</td>
					<td colspan="5">${checkout.serviceTotal}</td>
				</tr>
				<tr>
					<td><hr style="border: 2px red solid;"></td>
					<td><hr style="border: 2px red solid;"></td>
					<td><hr style="border: 2px red solid;"></td>
					<td><hr style="border: 2px red solid;"></td>
					<td><hr style="border: 2px red solid;"></td>
				</tr>
				<tr style="padding: 5px;">
					<td></td>
					<td style="padding: 10px;">Tổng tiền:</td>
					<td colspan="3">${checkout.total }</td>
				</tr>

			</table>
		</div>
	</article>


	<footer>
		<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
			lịch và đi công tác tại thành phố hoa</h3>
	</footer>

</body>
</html>