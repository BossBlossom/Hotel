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
<title>Chỉnh sửa phòng</title>
<link rel="stylesheet" type="text/css" href='<spring:url value="resources/css/style3.css"/>'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	
	<script type="text/javascript">
		function submitForm(formName) {
			document.getElementById(formName).submit();
		}
	</script>	

</head>

<body>

	<jsp:include page="../template/header.jsp"></jsp:include>

	<nav>
		<a href='<spring:url value="/manager-list" />'>Trang chủ</a>
	</nav>
	
	<form:form name="form1" modelAttribute="room">
		<article>
			<div>
				<table>
					<p>PHÒNG</p>
					<tr>
						<td>SỐ PHÒNG</td>
						<td><form:input path="roomNo" /></td>
					</tr>
					<tr>
						<td>GIƯỜNG</td>
						<td><form:input path="bed" type="number" /></td>
					</tr>
					<tr>
						<td>MÁY LẠNH</td>
						<td><form:input path="airConditioner" type="number" /></td>
					</tr>
					<tr>
						<td>THÔNG TIN</td>
						<td><form:input path="information" rows="5" cols="70" /></td>
					</tr>
					<tr>
						<td>GIÁ TIỀN</td>
						<td><form:input path="money" type="number" step="50000" /></td>
					</tr>
				</table>
				<p>
					
					<a style="margin: 10px 10px 10px 28%" href="#" onclick="submitForm('form1')">UPDATE PHÒNG</a>
					<a>XÓA PHÒNG</a>
					<a href='<spring:url value="/manager-list" />'>TRỞ VỀ</a>
				</p>
			</div>
		</article>
	</form:form>

	<jsp:include page="../template/aside.jsp"></jsp:include>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>