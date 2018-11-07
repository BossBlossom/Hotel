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
	
<link
	href='<spring:url value="resources/Home_resources/css/bootstrap.min.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/font-awesome/css/font-awesome.min.css"/>'
	rel="stylesheet" type="text/css" />
<!-- Custom styles for this template -->
<link
	href='<spring:url value="resources/Home_resources/css/style.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/fonts/antonio-exotic/stylesheet.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/css/lightbox.min.css"/>'
	rel="stylesheet">
<link
	href='<spring:url value="resources/Home_resources/css/responsive.css"/>'
	rel="stylesheet">
</head>

<body>
	<header>
		<h1 id="effectText1">TRANG QUẢN LÝ</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a> 
		<a href='<spring:url value="/manager-list/create" />'>Tạo phòng mới</a>
		<a href='<spring:url value="/product-list" />'>Danh sách sản phẩm</a>
		<a href='<spring:url value="/logout" />' style="float: right;">Đăng xuất</a>
	</nav>

	<article>
		<div id="filter" style="margin-bottom: 50px;">
			<input type="text" id="inp1" class="myInput" onkeyup="myFunction1()" placeholder="Tìm kiếm theo số phòng..." title="Nhập số phòng">
			<input type="text" id="inp2" class="myInput" onkeyup="myFunction2()" placeholder="Tìm kiếm theo trạng thái..." title="Nhập trạng thái">
		</div>
		
		<div id="myFilter">
			<c:forEach var="room" items="${rooms}">
			<c:if test="${room.status eq 'none'}">
				<div class="room" style="background-color: #00e600;">
			</c:if>
			<c:if test="${room.status eq 'customer'}">
				<div class="room" style="background-color: #e6e600;">
			</c:if>
			<c:if test="${room.status eq 'check in'}">
				<div class="room" style="background-color: #e60000; color:yellow;">
			</c:if>
			<c:if test="${room.status eq 'closed'}">
				<div class="room" style="background-color: grey; color:white;">
			</c:if>
					<table>
						<tr>
							<td style="color: black;"><b> ${room.getRoomStyle().getName()} </b></td>
						</tr>
						<tr>
							<td>${room.roomNo}</td>
						</tr>
						<c:if test="${room.status eq 'none'}">
							<tr>
								<td>Phòng trống</td>
							</tr>
						</c:if>
						<c:if test="${room.status eq 'closed'}">
							<tr>
								<td>Đang sửa chữa</td>
							</tr>
						</c:if>
						<c:if test="${room.status eq 'customer'}">
							<tr>
								<td>Phòng đã đặt</td>
							</tr>
						</c:if>
						<c:if test="${room.status eq 'check in'}">
							<tr>
								<td>Phòng có khách</td>
							</tr>
						</c:if>
					</table>
					
					<c:if test="${room.status eq 'check in'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/view-room?roomNo=${room.roomNo}" />'>xem thông tin</a> 
								<a href='<spring:url value="/manager-list/check-out?roomNo=${room.roomNo}" />'>trả phòng</a>
							</span>
						</span>
					</c:if>
					
					<c:if test="${room.status eq 'customer'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/view-room?roomNo=${room.roomNo}" />'>xem thông tin</a>
								<a href='<spring:url value="/manager-list/check-in?roomNo=${room.roomNo}" />'>nhận phòng</a>
								<a href='<spring:url value="/manager-list/cancel?roomNo=${room.roomNo}" />'>hủy</a>
							</span>
						</span>
					</c:if>
					
					<c:if test="${room.status eq 'closed'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/open?roomNo=${room.roomNo}" />'>mở</a> 
								<a href='<spring:url value="/manager-list/update?roomNo=${room.roomNo}" />'>cập nhật</a>
								<a href='<spring:url value="/manager-list/delete?roomNo=${room.roomNo}" />'>xóa</a>
							</span>
						</span>
					</c:if>
					
					<c:if test="${room.status eq 'none'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/booking?roomNo=${room.roomNo}" />'>đặt phòng</a>
								<a href='<spring:url value="/manager-list/closed?roomNo=${room.roomNo}" />'>khóa phòng</a> 
								<a href='<spring:url value="/manager-list/update?roomNo=${room.roomNo}" />'>cập nhật</a>
								<a href='<spring:url value="/manager-list/delete?roomNo=${room.roomNo}" />'>xóa</a>
							</span>
						</span>
					</c:if>
					
				</div>
			</c:forEach>
		</div>

	</article>


	<footer>
	</footer>
	
	
	
	<script src="//code.jquery.com/jquery.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
	
	
	<script>
		function myFunction1() {
		    var input, filter, div, div1, a, i;
		    input = document.getElementById("inp1");
		    filter = input.value.toUpperCase();
		    div = document.getElementById("myFilter");
		    div1 = div.getElementsByTagName("div");
		    for (i = 0; i < div1.length; i++) {
		        td = div1[i].getElementsByTagName("td")[1];
		        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
		            div1[i].style.display = "";
		        } else {
		            div1[i].style.display = "none";
		        }
		    }
		}
	</script>
	
	<script>
		function myFunction2() {
		    var input, filter, div, div1, a, i;
		    input = document.getElementById("inp2");
		    filter = input.value.toUpperCase();
		    div = document.getElementById("myFilter");
		    div1 = div.getElementsByTagName("div");
		    for (i = 0; i < div1.length; i++) {
		        td = div1[i].getElementsByTagName("td")[2];
		        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
		            div1[i].style.display = "";
		        } else {
		            div1[i].style.display = "none";
		        }
		    }
		}
	</script>
	
</body>
</html>