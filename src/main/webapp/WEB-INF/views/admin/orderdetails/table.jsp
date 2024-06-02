<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<table border="1">
		<tr>
			<th>Mã chi tiết đơn hàng</th>
			<th>Mã đơn hàng</th>
			<th>Mã thú cưng</th>
			<th>Số lượng</th>
			<th>Giá</th>
			<th>Trạng thái</th>
			<th>Thao tác</th>
		</tr>
		<c:forEach items="${items}" var="item">
			<tr>
				<td>${item.maChiTietDonHang}</td>
				<td>${item.donHang.maDonHang}</td>
				<td>${item.thuCung.maThuCung}</td>
				<td>${item.soLuong}</td>
				<td>${item.gia}</td>
				<td>${item.trangThai}</td>
				<td><a href="/admin/orderdetails/edit/${item.maChiTietDonHang}">Sửa</a>
					<a href="/admin/orderdetails/delete/${item.maChiTietDonHang}">Xóa</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>