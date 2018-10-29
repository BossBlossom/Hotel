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
<title>Tạo phòng</title>
<link rel="stylesheet" type="text/css"
	href='<spring:url value="/resources/css/style3.css"/>'>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
	
<script type="text/javascript" src='<spring:url value="/resources/js/app.js" />'></script>

</head>

<body>

	<header>
		<h1 id="effectText1">MANAGER PAGE</h1>
	</header>

	<nav>
		<a href='<spring:url value="/product-list" />'>Trang chủ</a>
	</nav>
	<c:url var="formUrl" value="/product-list/create" />

	<form:form id="form1" modelAttribute="room" action="${formUrl}" method="post">
		<article>
			<div>
				<table>
					<tr>
						<td>LOẠI SẢN PHẨM</td>
						<td colspan="2">
							<form:select path="roomStyleId">
								<form:option value="1">Nước</form:option>
								<form:option value="2">Đồ ăn</form:option>
								<form:option value="3">Rượu</form:option>
								<form:option value="4">Đồ tráng miệng</form:option>
							</form:select>
						</td>
					</tr>
					<tr>
						<td>ID</td>
						<td colspan="2"><form:input path="roomNo" /></td>
						<td id="msg" style="color: red">${ketqua}</td>
					</tr>
					<tr>
						<td>TÊN SẢN PHẨM</td>
						<td colspan="2"><form:input path="bed" type="text"/></td>
						<td id="msg" style="color: red">${ketqua}</td>
					</tr>
					<tr>
						<td>HÌNH ẢNH</td>
						<td><form:input path="airConditioner" type="file" id="h1"/></td>
						<td><img alt="" src="" id="hinh1"></td>
					</tr>
					<tr>
						<td>GIÁ TIỀN</td>
						<td colspan="2"><form:input path="money" type="number" step="10" /></td>
					</tr>
					<tr>
						<td>SỐ LƯỢNG</td>
						<td colspan="2"><form:input path="money" type="number" step="1" /></td>
					</tr>
				</table>
				<p>

					<a style="margin: 10px 10px 10px 28%" href="#" onclick="submitForm('form1')">TẠO SẢN PHẨM</a> 
					<a href='<spring:url value="/manager-list" />'>TRỞ VỀ</a>
				</p>
			</div>
		</article>
	</form:form>

	<footer>
		<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du
			lịch và đi công tác tại thành phố hoa</h3>
	</footer>


	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#hinh1').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
		$("#h1").change(function() {
			readURL(this);
		});
	</script>


</body>
</html>