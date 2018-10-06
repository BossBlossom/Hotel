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
	<link rel="stylesheet" type="text/css" href="resources/css/style2.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>

<body>
	<header>
		<h1 id="effectText1">KHÁCH SẠN AN AN</h1>
	</header>

	<nav>
		<a href ="">Trang chủ</a>
		<a href ="">Tạo phòng mới</a>
		<a href ="">Lịch sử phòng</a>
		<a href ="" style="float: right;">Ðặt phòng online</a>
	</nav>

	<article>
		<div>
			<table>
				<tr>
					<th>Lầu 1</th>
				</tr>
				<tr>
					<td class="col1">Phòng</td>
					<td class="col2">Ngày đặt phòng</td>
					<td class="col3">Ngày trả phòng</td>
					<td class="col4">Ghi chú</td>
					<td class="col5">Điều khiển</td>
				</tr>
				<tr>
					<td>101</td>
					<td>6/10/2018</td>
					<td>10/10/2018</td>
					<td>check in</td>
					<td class="left">
						<a href="">view_room</a> | 
						<a href="">update_room</a> | 
						<a href="">update_date</a> | 
						<a href="">view_customer</a> | 
						<a href="">order</a> | 
						<a href="">check_out</a> | 
						<a href="">history</a> | 
						<a href="">delete</a>
					</td>
				</tr>
				<tr>
					<td>102</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>103</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>104</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>105</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
			</table>
		</div>
			
		<div>
			<table>
				<tr>
					<th>Lầu 2</th>
				</tr>
				<tr>
					<td class="col1">Phòng</td>
					<td class="col2">Ngày đặt phòng</td>
					<td class="col3">Ngày trả phòng</td>
					<td class="col4">Ghi chú</td>
					<td class="col5">Điều khiển</td>
				</tr>
				<tr>
					<td>201</td>
					<td>7/10/2018</td>
					<td>11/10/2018</td>
					<td>check out</td>
					<td class="left">
						<a href="">view_room</a> | 
						<a href="">update_room</a> | 
						<a href="">history</a> | 
						<a href="">bill</a> | 
 						<a href="">delete</a>
					</td>
				</tr>
				<tr>
					<td>202</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>203</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>204</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>205</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
			</table>
		</div>

		<div>
			<table>
				<tr>
					<th>Lầu 3</th>
				</tr>
				<tr>
					<td class="col1">Phòng</td>
					<td class="col2">Ngày đặt phòng</td>
					<td class="col3">Ngày trả phòng</td>
					<td class="col4">Ghi chú</td>
					<td class="col5">Điều khiển</td>
				</tr>
				<tr>
					<td>301</td>
					<td>10/10/2018</td>
					<td>15/10/2018</td>
					<td>customer</td>
					<td class="left">
						<a href="">view_room</a> | 
						<a href="">update_room</a> | 
						<a href="">view_customer</a> | 
						<a href="">check_in</a> | 
						<a href="">history</a> | 
						<a href="">delete</a>
					</td>
				</tr>
				<tr>
					<td>302</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>303</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>304</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>305</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
			</table>
		</div>

		<div>
			<table>
				<tr>
					<th>Lầu 4</th>
				</tr>
				<tr>
					<td class="col1">Phòng</td>
					<td class="col2">Ngày đặt phòng</td>
					<td class="col3">Ngày trả phòng</td>
					<td class="col4">Ghi chú</td>
					<td class="col5">Điều khiển</td>
				</tr>
				<tr>
					<td>401</td>
					<td>20/10/2018</td>
					<td>22/10/2018</td>
					<td></td>
					<td class="left">
						<a href="">view_room</a> | 
						<a href="">update_room</a> | 
						<a href="">create_customer</a> | 
						<a href="">history</a>
					</td>
				</tr>
				<tr>
					<td>402</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>403</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>404</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
				<tr>
					<td>405</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="left"></td>
				</tr>
			</table>
		</div>
	</article>
	
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