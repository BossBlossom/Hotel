<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Trang chủ HOTEL</title>
	<link rel="stylesheet" type="text/css" href="resources/css/style3.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>

<body>
	<header>
		<h1 id="effectText1">KHÁCH SẠN AN AN</h1>
	</header>

	<nav>
		<a href ="">Trang chủ</a>
		<a href ="">Liên hệ</a>
		<a href ="" style="float: right;">Ðặt phòng online</a>
	</nav>
<form:form modelAttribute="room">
	<article>
		<div>
			<table>
				<p>PHÒNG</p>
				<tr>
					<td>SỐ PHÒNG</td>
					<td><form:input path="roomNo"/></td>
				</tr>
				<tr>
					<td>GIƯỜNG</td>
					<td><form:input path="bed" type="number"/></td>
				</tr>
				<tr>
					<td>MÁY LẠNH</td>
					<td><form:input path="airConditioner" type="number"/></td>
				</tr>
				<tr>
					<td>THÔNG TIN</td>
					<td><form:input path="information" rows="5" cols="70"/></td>
				</tr>
				<tr>
					<td>GIÁ TIỀN</td>
					<td><form:input path="money" type="number" step="50000"/></td>
				</tr>
			</table>
			<p>
				<form:button name="action" value="create" style="margin: 10px 10px 10px 28%">TẠO PHÒNG</form:button>
				<a href='<spring:url value="/manager-list" />'>TRỞ VỀ</a>
			</p>
		</div>
	</article>
</form:form>
	<aside>
		<div>
			<h1 class="effectText2">Thông tin liên hệ</h1>
			<img src="resources/images_action/backrough_1.gif" alt="Image"/>
			<img src="resources/images_action/backrough.gif" alt="Image"/>
			<h6>Địa chỉ: 67, Phù Đổng Thiên Vương, phường 8, TP Đà Lạt</h6>
			<h6>Số điện thoại: A.Ân 0974384921 - A.Dũng 0987264731</h6>
		</div>

		<div id="popular">
			<h3 class="effectText2">Khách yêu thích chỗ này vì...</h3>
			<h4>** Hoàn hảo cho kỳ nghỉ 1 đêm!</h4>
			<h5><i class="fas fa-map-marker-alt"></i>  Địa điểm hàng đầu: Được khách gần đây đánh giá cao (9,9 điểm)</h5>
			<h4>** Phòng có:</h4>
			<h5><i class="fas fa-eye"></i>  Ban công nhìn ra quang cảnh</h5>
			<h5><i class="fas fa-swimming-pool"></i>  Có hồ bơi trong khuôn viên khách sạn</h5>
			<h5><i class="fas fa-eye"></i>  Nhìn ra Thành phố / Núi</h5>
			<h5 style="color: white; background-color: green;"><i class="fas fa-wifi"></i>  Wifi miễn phí</h5>
			<h5><i class="fas fa-parking"></i>  Có chỗ đậu xe miễn phí tại khách sạn</h5>
		</div>
	
		<div>
			<h3 class="effectText2">Tất cả các phòng có: </h3>
			<h5><i class="fas fa-shower"></i>  Phòng tắm riêng</h5>
			<h5><i class="fas fa-tv"></i>  Ti vi màn hình phẳng</h5>
			<h5><i class="fas fa-check"></i>  Chậu rửa vệ sinh</h5>
			<h5><i class="fas fa-check"></i>  Không gây dị ứng</h5>
			<h5><i class="fas fa-check"></i>  Sản phẩm lau rửa</h5>
			<h5><i class="fas fa-check"></i>  Nệm nước</h5>
		</div>
	</aside>
	
	<footer>
		<h3>Nơi dừng chân nghỉ ngơi hợp với túi tiền của bạn khi đi du lịch và đi công tác tại thành phố hoa</h3>
	</footer>
</body>
</html>