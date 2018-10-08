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
<link rel="stylesheet" type="text/css" href="resources/css/style1.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
</head>

<body>

	<jsp:include page="../template/header.jsp"></jsp:include>

	<nav>
		<a href="">Trang chủ</a> <a href="">Liên hệ</a> <a href=""
			style="float: right;">Ðặt phòng online</a>
	</nav>

	<article>
		<div>
			<img src="resources/images_hotel/main01.jpg" alt="Image">
		</div>
		<div>
			<h2 align="center">
				Khách sạn An An <font color="#e60000">Kính Chào Quý Khách</font>
			</h2>
			<p style="font-size: 20px;" align="center">
				Chỉ cách Sân Golf Đà Lạt 5 phút đi bộ, khách sạn An An với không
				gian và tiện nghi sang trọng và lịch sự luôn sẵn sàng chào đón quý
				khách. <br> Khách sạn An An mang đầy đủ tiện nghi của một khách
				sạn đạt chuẩn 3 sao với 20 phòng đầy đủ tiện nghi. Ngoài ra quý
				khách còn có thể yên tâm trải ngiệm những ngày nghỉ cùng gia đình
				hay những đợt công tác dài ngày với hệ thống quản lý an ninh thông
				minh được bố trí khắp khách sạn, hầm để xe an toàn với sức chứa 8 xe
				con, 30 xe gắn máy. Đến với khách sạn chúng tôi, quý khách còn có
				thể đắm mình trong không gian thơ mộng của Đà Lạt nhìn từ trên cao
				với nhà hàng & café được bài trí đẹp mắt tại tầng bốn của khách sạn.
				<br> Hân hạnh được phục vụ quý khách!
			</p>
		</div>
	</article>

	<jsp:include page="../template/aside.jsp"></jsp:include>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>