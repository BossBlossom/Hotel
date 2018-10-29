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
<link rel="stylesheet" type="text/css" href='<spring:url value="/resources/css/style2.css"/>'>
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

	<c:forEach var="room" items="${rooms}">
		<article>

			<div>
				<table>
					<tr>
						<td colspan="2">Chi tiết phòng ${room.getRoom().getRoomNo()}</td>
					</tr>
					<tr>
						<td>Loại phòng: </td>
						<td>${room.getRoom().getRoomStyle().getName()}</td>
					</tr>
					<tr>
						<td>Trạng thái: </td>
						<td>${room.getRoom().getStatus()}</td>
					</tr>
					<tr>
						<td>Giường: </td>
						<td>${room.getRoom().getBed()}</td>
					</tr>
					<tr>
						<td>Máy lạnh: </td>
						<td>${room.getRoom().getAirConditioner()}</td>
					</tr>
					<tr>
						<td>Giá tiền: </td>
						<td>${room.getRoom().getMoney()}</td>
					</tr>
				</table>
				
				<c:if test="${(room.getRoom().getStatus() eq 'customer') or (room.getRoom().getStatus() eq 'check in')}">
				<table>
					<tr>
						<td></td>
						<td>${room.getCustomer().getCmnd()}</td>
					</tr>
					<tr>
						<td></td>
						<td>${room.getCustomer().getFullName()}</td>
					</tr>
					<tr>
						<td></td>
						<td>${room.startedAt}</td>
					</tr>
					<tr>
						<td></td>
						<td>${room.endedAt}</td>
					</tr>
				</table>
				</c:if>
				
			</div>
			
		</article>
	</c:forEach>

		<footer>
			<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
				lịch và đi công tác tại thành phố hoa</h3>
		</footer>
</body>
</html>