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
<title>Trang chủ HOTEL</title>
<link rel="stylesheet" type="text/css" href='<spring:url value="resources/css/style2.css"/>'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
</head>
<%
	int i = 1;
%>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a> 
		<a href='<spring:url value="/manager-create-room" />'>Tạo phòng mới</a> 
		<a href="">Lịch sử phòng</a> <a href=""	style="float: right;">Ðặt phòng online</a>
	</nav>

	<article>
		<div>
			<table>
				<tr>
					<th>Lầu <%=i++%></th>
				</tr>
				<tr>
					<td class="col1">Phòng</td>
					<td class="col2">Ngày đặt phòng</td>
					<td class="col3">Ngày trả phòng</td>
					<td class="col4">Ghi chú</td>
					<td class="col5">Điều khiển</td>
				</tr>
				<tr>
					<c:forEach var="room" items="${rooms}">
						<td>${room.roomNo }</td>
						<td>__/__/____</td>
						<td>__/__/____</td>
						<td>${room.status }</td>
						<c:if test="${room.status eq 'check in'}">
							<td class="left"><a href="">view_room</a> | <a href="">update_room</a>
								| <a href="">update_date</a> | <a href="">view_customer</a> | <a
								href="">order</a> | <a href="">check_out</a> | <a href="">history</a>
								| <a href="">delete</a></td>
						</c:if>
						<c:if test="${room.status eq 'check out'}">
							<td class="left"><a href="">view_room</a> | <a href="">update_room</a>
								| <a href="">history</a> | <a href="">bill</a></td>
						</c:if>
						<c:if test="${room.status eq 'customer'}">
							<td class="left"><a href="">view_room</a> | <a href="">update_room</a>
								| <a href="">view_customer</a> | <a href="">check_in</a> | <a
								href="">history</a></td>
						</c:if>
						<c:if test="${room.status eq 'none'}">
							<td class="left"><a href="">view_room</a> | <a href="">update_room</a>
								| <a href="">create_customer</a> | <a href="">history</a></td>
						</c:if>
				</tr>
				</c:forEach>
			</table>
		</div>

	</article>

	<jsp:include page="../template/aside.jsp"></jsp:include>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>