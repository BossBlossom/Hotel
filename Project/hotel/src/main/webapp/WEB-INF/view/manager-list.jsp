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
		<a href='<spring:url value="/manager-list/create" />'>Tạo phòng mới</a>
		<a href='<spring:url value="/product-list" />'>Danh sách sản phẩm</a>
	</nav>

	<article>
		<div id="filter" style="margin-bottom: 50px;">
			<input type="text" id="inp1" class="myInput" onkeyup="myFunction1()" placeholder="Search for room no..." title="Type in a no">
			<input type="text" id="inp2" class="myInput" onkeyup="myFunction2()" placeholder="Search for status..." title="Type in a status">
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
				<div class="room" style="background-color: #e60000;">
			</c:if>
			<c:if test="${room.status eq 'check out'}">
				<div class="room" style="background-color: #b300b3;">
			</c:if>
			<c:if test="${room.status eq 'closed'}">
				<div class="room" style="background-color: grey;">
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
								<td>phòng trống</td>
							</tr>
						</c:if>
						<c:if test="${room.status eq 'closed'}">
							<tr>
								<td>phòng đang sửa chữa</td>
							</tr>
						</c:if>
						<c:if test="${room.status eq 'customer'}">
							<tr>
								<td>phòng chờ</td>
							</tr>
						</c:if>
						<c:if test="${room.status eq 'check in'}">
							<tr>
								<td>phòng có khách</td>
							</tr>
						</c:if>
						<c:if test="${room.status eq 'check out'}">
							<tr>
								<td>trả phòng</td>
							</tr>
						</c:if>
					</table>
					
					<c:if test="${room.status eq 'check in'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/view-room?roomNo=${room.roomNo}" />'>view</a> 
								<a href='<spring:url value="/manager-list/order?roomNo=${room.roomNo}" />'>order</a>
								<a href='<spring:url value="/manager-list/check-out?roomNo=${room.roomNo}" />'>check out</a>
								<a href="#">history</a>
							</span>
						</span>
					</c:if>
					
					<c:if test="${room.status eq 'check out'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/bill?roomNo=${room.roomNo}" />'>bill</a> 
								<a href='<spring:url value="/manager-list/view-room?roomNo=${room.roomNo}" />'>view</a>
								<a href="#"	data-toggle="modal" data-target="#myModal"
									data-backdrop="static" data-keyboard="false">bill</a> 
								<a href="#">history</a>
							</span>
						</span>
					</c:if>
					
					<c:if test="${room.status eq 'customer'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/view-room?roomNo=${room.roomNo}" />'>view</a>
								<a href='<spring:url value="/manager-list/check-in?roomNo=${room.roomNo}" />'>check in</a>
								<a href='<spring:url value="/manager-list/cancel?roomNo=${room.roomNo}" />'>cancel</a>
								<a href="#">history</a>
							</span>
						</span>
					</c:if>
					
					<c:if test="${room.status eq 'closed'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/open?roomNo=${room.roomNo}" />'>open</a> 
								<a href='<spring:url value="/manager-list/update?roomNo=${room.roomNo}" />'>update</a>
								<a href='<spring:url value="/manager-list/delete?roomNo=${room.roomNo}" />'>delete</a>
								<a href="#">history</a>
							</span>
						</span>
					</c:if>
					
					<c:if test="${room.status eq 'none'}">
						<span class="dropdown">
							<button class="dropbtn">&#9947;</button>
							<span class="dropdown-content">
								<a href='<spring:url value="/manager-list/booking?roomNo=${room.roomNo}" />'>booking</a>
								<a href='<spring:url value="/manager-list/closed?roomNo=${room.roomNo}" />'>closed</a> 
								<a href='<spring:url value="/manager-list/update?roomNo=${room.roomNo}" />'>update</a>
								<a href='<spring:url value="/manager-list/delete?roomNo=${room.roomNo}" />'>delete</a>
								<a href="#">history</a>
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
	
	
<!--  	<form:form modelAttribute="room" action="room" method="post">   -->    
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLongTitle" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle"
								style="font-size: 30px;">Hóa Đơn</h5>
						</div>

						<div class="modal-body" style="height: 350px;">

							<div class="inf-position">
								<table style="border-collapse: collapse; width: 550px;">
									<tr style="padding: 5px;">
										<td style="padding: 10px;">Phòng:</td>
										<td colspan="5">101</td>
									</tr>
									<tr style="padding: 5px;">
										<td style="padding: 10px;">Tổng tiền phòng:</td>
										<td colspan="5">100</td>
									</tr>
									<tr style="padding: 5px;">
										<td style="padding: 10px;">Tổng tiền dịch vụ:</td>
										<td colspan="5">100</td>
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
										<td colspan="3">100</td>
									</tr>

								</table>
							</div>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">CLOSE</button>
							<button type="submit" class="btn btn-primary">XUẤT HÓA ĐƠN</button>
						</div>
					</div>
				</div>
			</div>
<!--    		</form:form>   -->    
	
	
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