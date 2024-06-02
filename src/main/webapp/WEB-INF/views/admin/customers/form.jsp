<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Form</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
<style>
</style>
</head>
<body>
	<div class="col-3">
		<h2>Customer Form</h2>
		<form:form action="/admin/customers/index" modelAttribute="item">
			<div class="form-group">
				<label for="maKhachHang">Mã khách hàng:</label>
				<form:input path="maKhachHang" class="form-control" id="maKhachHang" />
			</div>
			<div class="form-group">
				<label for="tenKhachHang">Tên khách hàng:</label>
				<form:input path="tenKhachHang" class="form-control"
					id="tenKhachHang" />
			</div>
			<div class="form-group">
				<label for="emailKH">Email:</label>
				<form:input path="emailKH" class="form-control" id="emailKH" />
			</div>
			<div class="form-group">
				<label for="matKhauKH">Mật khẩu:</label>
				<form:input path="matKhauKH" class="form-control" id="matKhauKH" />
			</div>
			<div class="form-group">
				<label for="soDienThoaiKH">Số điện thoại:</label>
				<form:input path="soDienThoaiKH" class="form-control"
					id="soDienThoaiKH" />
			</div>
			<div class="form-group">
				<label for="diaChiKH">Địa chỉ:</label>
				<form:input path="diaChiKH" class="form-control" id="diaChiKH" />
			</div>
			<button type="submit" formaction="/admin/customers/save"
				class="btn btn-primary">Lưu</button>
			<button type="submit" formaction="/admin/customers/update"
				class="btn btn-secondary">Sửa</button>
			<button type="submit"
				formaction="/admin/customers/edit/${item.maKhachHang}"
				class="btn btn-danger">Xóa</button>
		</form:form>
	</div>
</body>
</html>
