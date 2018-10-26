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
		<a href='<spring:url value="/product-list/create" />'>Tạo sản phẩm mới</a>
	</nav>

	<article>
		<div id="filter" style="margin-bottom: 50px;">
			<input type="text" id="inp1" class="myInput" onkeyup="myFunction1()" placeholder="Search for room no..." title="Type in a no"> 
			<input type="text" id="inp2" class="myInput" onkeyup="myFunction2()" placeholder="Search for status..." title="Type in a status">
		</div>

		<div id="myFilter">
			<c:forEach var="roon" items="${rooms}">
				<div class="room">
					<table>
						<tr>
							<td style="color: #ffff00;">loại sản phẩm</td>
						</tr>
						<tr>
							<td>tên sản phẩm</td>
						</tr>
						<tr>
							<td>giá tiền của sản phẩm</td>
						</tr>
					</table>


					<span class="dropdown">
						<button class="dropbtn">&#9947;</button> <span
						class="dropdown-content"> <a
							href='<spring:url value="/manager-list/view-room?roomNo=${room.roomNo}" />'>view</a>
							<a href="#">update date</a> <a
							href='<spring:url value="/manager-list/order?roomNo=${room.roomNo}" />'>order</a>
							<a href="#">customer view</a> <a
							href='<spring:url value="/manager-list/check-out?roomNo=${room.roomNo}" />'>check
								out</a> <a href="#">history</a>
					</span>
					</span>

				</div>
			</c:forEach>
		</div>

	</article>


	<footer>
		<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
			lịch và đi công tác tại thành phố hoa</h3>
	</footer>


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