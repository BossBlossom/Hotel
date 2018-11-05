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
	href='<spring:url value="resources/css/style3.css"/>'>
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

	<c:url var="formUrl" value="/order" />
	<form:form id="form1" modelAttribute="order" action="${formUrl}" method="post">
	
	<article>
		<div id="filter" style="margin-bottom: 50px;">
			<input type="text" id="inp1" class="myInput" onkeyup="myFunction1()" placeholder="Search for name..." title="Type in a name food">
			<p>${room.roomNo}</p>
		</div>

		<div id="myFilter">
			<table>
				<tr>
					<td>Tên</td>
					<td>Loại</td>
					<td>Giá</td>
					<td>Số lượng</td>
				</tr>
				<c:forEach var="product" items="${products}">
					<tr>
						<td><form:label path="product" name="product" readonly="readonly" /></td>
						<td><form:label path="style" name="style" readonly="readonly" /></td>
						<td><form:label path="price" name="price" readonly="readonly" /></td>
						<td><form:input type="number" path="quantum"  name="quantum" /></td>	
					</tr>
				</c:forEach>
				
				<p class="btn">
					<a style="right: 0;" href="#" onclick="submitForm('form1')">ORDER</a>
					<a href='<spring:url value="/manager-list" />'>TRỞ VỀ</a>
				</p>
			</table>
			
		</div>

	</article>

	</form:form>

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
				td = div1[i].getElementsByTagName("td")[0];
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