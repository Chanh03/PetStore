<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="col-3">
		<h2>Staffs Form</h2>
		<form:form action="/admin/staffs/index" modelAttribute="item"
			class="row g-3">
			<div class="form-group">
				<label for="maNhanVien" class="form-label">Mã nhân viên</label>
				<form:input path="maNhanVien" id="maNhanVien" class="form-control" />
			</div>
			<div class="form-group">
				<label for="tenNhanVien" class="form-label">Tên nhân viên</label>
				<form:input path="tenNhanVien" id="tenNhanVien" class="form-control" />
			</div>
			<div class="form-group">
				<label for="matKhauNV" class="form-label">Mật khẩu</label>
				<form:input path="matKhauNV" id="matKhauNV" class="form-control" />
			</div>
			<div class="form-group">
				<label for="emailNV" class="form-label">Email</label>
				<form:input path="emailNV" id="emailNV" class="form-control" />
			</div>
			<div class="form-group">
				<label for="soDienThoaiNV" class="form-label">Số điện thoại</label>
				<form:input path="soDienThoaiNV" id="soDienThoaiNV"
					class="form-control" />
			</div>
			<div class="form-group">
				<button formaction="/admin/staffs/save" class="btn btn-primary">Lưu</button>
				<button formaction="/admin/staffs/update" class="btn btn-success">Sửa</button>
				<button formaction="/admin/staffs/delete/${item.maNhanVien}"
					class="btn btn-danger">Xóa</button>
				<a href="/admin/staffs/index" class="btn btn-secondary">Trở lại</a>
			</div>
		</form:form>
	</div>
</body>
</html>
