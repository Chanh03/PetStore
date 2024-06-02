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
	<div class="table-responsive">
		<table class="table table-bordered table-hover">
			<thead class="table-dark">
				<tr>
					<th>Mã đơn hàng</th>
					<th>Ngày đặt</th>
					<th>Tên khách hàng</th>
					<th>Tên nhân viên</th>
					<th>Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
					<tr>
						<td>${item.maDonHang}</td>
						<td>${item.ngayDat}</td>
						<td>${item.khachHang.tenKhachHang}</td>
						<td>${item.nhanVien.tenNhanVien}</td>
						<td><a
							href="/admin/orders/edit/${item.maDonHang}">Edit</a>
							<a
							href="/admin/orders/delete/${item.maDonHang}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>