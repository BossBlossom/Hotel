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
	tr, td {
		border: 2px solid black;
		padding: 3px;
		margin: 3px;
	}
</style>
</head>

<body>
	<header>
		<h1 id="effectText1">TRANG QUẢN LÝ</h1>
	</header>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a> 
	</nav>

	<article>
		<div id="filter" style="margin-bottom: 50px; float: none;">
			<input type="text" id="inp1" class="myInput" onkeyup="myFunction1()" placeholder="Tìm kiếm theo tên..." title="Nhập tên dịch vụ"> 
			<input type="text" id="inp2" class="myInput" onkeyup="myFunction2()" placeholder="Tìm kiếm theo loại..." title="Nhập loại dịch vụ">
		</div>
		
		<div id="myFilter" style="margin: auto; float: none;">
			<table>
				<tr>
					<td style="font-size: 23px;"><b>Hình</b></td>
					<td style="font-size: 23px;"><b>Tên</b></td>
					<td style="font-size: 23px;"><b>Loại</b></td>
					<td style="font-size: 23px;"><b>Giá</b></td>
				</tr>
				<c:forEach var="product" items="${products}">
				
					<c:if test="${product.style eq 'food'}">
						<tr>
								<td><img src='<spring:url value="resources/Home_resources/images/food/${product.image}" />' height="300px" width="500px"/></td>
								<td style="font-size: 20px;">${product.product}</td>
								<td style="font-size: 20px;">Đồ ăn</td>
								<td style="font-size: 20px;">${product.price}$</td>
						</tr>
					</c:if>
					
					<c:if test="${product.style eq 'drink'}">

							<tr>
								<td><img src='<spring:url value="resources/Home_resources/images/drink/${product.image}" />' height="300px" width="300px"/></td>
								<td style="font-size: 20px;">${product.product}</td>
								<td style="font-size: 20px;">Đồ uống và tráng miệng</td>
								<td style="font-size: 20px;">${product.price}$</td>
							</tr>
					</c:if>
					
				</c:forEach>
			</table>
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
			tr = div.getElementsByTagName("tr");
			for (i = 1; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[1];
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
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
			tr = div.getElementsByTagName("tr");
			for (i = 1; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[2];
				if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
	</script>

</body>
</html>