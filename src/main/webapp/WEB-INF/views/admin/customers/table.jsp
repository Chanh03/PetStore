<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer List</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
<style>

</style>
</head>
<body>
	<div class="col-9">
		<h2>Customer List</h2>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead class="table-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Tên khách hàng</th>
						<th scope="col">Email</th>
						<th scope="col">Mật khẩu</th>
						<th scope="col">Số điện thoại</th>
						<th scope="col">Địa chỉ</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.maKhachHang}</td>
							<td>${item.tenKhachHang}</td>
							<td>${item.emailKH}</td>
							<td>${item.matKhauKH}</td>
							<td>${item.soDienThoaiKH}</td>
							<td>${item.diaChiKH}</td>
							<td><a href="/admin/customers/edit/${item.maKhachHang}"
								class="btn btn-primary">Edit</a> <a
								href="/admin/customers/delete/${item.maKhachHang}"
								class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.maKhachHang}</td>
							<td>${item.tenKhachHang}</td>
							<td>${item.emailKH}</td>
							<td>${item.matKhauKH}</td>
							<td>${item.soDienThoaiKH}</td>
							<td>${item.diaChiKH}</td>
							<td><a href="/admin/customers/edit/${item.maKhachHang}"
								class="btn btn-primary">Edit</a> <a
								href="/admin/customers/delete/${item.maKhachHang}"
								class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.maKhachHang}</td>
							<td>${item.tenKhachHang}</td>
							<td>${item.emailKH}</td>
							<td>${item.matKhauKH}</td>
							<td>${item.soDienThoaiKH}</td>
							<td>${item.diaChiKH}</td>
							<td><a href="/admin/customers/edit/${item.maKhachHang}"
								class="btn btn-primary">Edit</a> <a
								href="/admin/customers/delete/${item.maKhachHang}"
								class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
