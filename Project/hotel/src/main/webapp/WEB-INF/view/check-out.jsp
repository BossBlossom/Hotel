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
	href='<spring:url value="/resources/css/style3.css"/>'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	
	
<style type="text/css">

.inf-position {
	margin: 0 auto;
	padding: 0 auto;
	float: none;
	position: relative;
	text-align: left;
}

</style>

</head>

<body>
	<header>
		<h1 id="effectText1">TRANG QUẢN LÝ</h1>
	</header>

	<nav style="z-index: 1;">
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>
	
	<article>
	<c:url var="formUrl" value="/manager-list/check-out?roomNo=${checkout.roomNo}" />
		<form:form id="form1" action="${formUrl}" method="post">
			<div class="inf-position">
				<table style="border-collapse: collapse; width: 550px; text-align: left;">
					<tr style="padding: 5px;">
						<td colspan="2" style="padding: 10px;"><b>Phòng:</b></td>
						<td colspan="4">${checkout.roomNo}</td>
					</tr>
					<tr style="padding: 5px;">
						<td colspan="2" style="padding: 10px;"><b>Ngày nhận phòng:</b></td>
						<td colspan="4">${checkout.checkIn}</td>
					</tr>
					<tr style="padding: 5px;">
						<td colspan="2" style="padding: 10px;"><b>Ngày trả phòng:</b></td>
						<td colspan="4">${checkout.checkOut}</td>
					</tr>
					<tr style="padding: 5px;">
						<td colspan="2" style="padding: 10px;"><b>Tiền phòng:</b></td>
						<td colspan="4">${checkout.roomTotal}$</td>
					</tr>
					<%-- <tr style="padding: 5px;">
						<td style="padding: 10px;">Tổng tiền dịch vụ:</td>
						<td colspan="5">${checkout.serviceTotal}</td>
					</tr> --%>
					<tr>
						<td style="padding: 0;"><hr style="border: 2px red solid;"></td>
						<td style="padding: 0;"><hr style="border: 2px red solid;"></td>
						<td style="padding: 0;"><hr style="border: 2px red solid;"></td>
						<td style="padding: 0;"><hr style="border: 2px red solid;"></td>
						<td style="padding: 0;"><hr style="border: 2px red solid;"></td>
						<td style="padding: 0;"><hr style="border: 2px red solid;"></td>
					</tr>
					<tr style="padding: 5px;">
						<td colspan="2" style="padding: 10px;"><b>Tổng tiền:</b></td>
						<td colspan="4">${checkout.total }$</td>
					</tr>
					
					<tr style="padding: 5px;">
						<td></td>
						<td></td>
						<td style="padding: 10px;" colspan="2">
							<p class="btn" style="padding: 0; margin: 0;">	
								<a href="#" onclick="submitForm('form1')" style="font-size: 18px;">XUẤT HÓA ĐƠN</a> 								
							</p>
						</td>
						<td style="padding: 10px;" colspan="2">
							<p class="btn" style="padding: 0; margin: 0;">	
								<a href='<spring:url value="/manager-list" />' style="font-size: 18px;">TRỞ VỀ</a> 								
							</p>
						</td>
					</tr>
				</table>
			</div>
		</form:form>
	</article>


	<footer>
		<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
			lịch và đi công tác tại thành phố hoa</h3>
	</footer>

<script type="text/javascript" src='<spring:url value="/resources/js/app.js" />'></script>

</body>
</html>