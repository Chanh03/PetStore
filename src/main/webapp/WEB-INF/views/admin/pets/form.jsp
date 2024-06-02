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
<style>
</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<h1>Pets Form</h1>
			<form:form action="/admin/pets/index" modelAttribute="item">
				<div class="mb-3">
					<form:input path="maThuCung" id="maThuCung" class="form-control" />
				</div>
				<div class="mb-3">
					<label for="tenThuCung" class="form-label">Tên thú cưng</label>
					<form:input path="tenThuCung" id="tenThuCung" class="form-control" />
				</div>
				<div class="mb-3">
					<label for="loai" class="form-label">Loại</label>
					<form:input path="loai" id="loai" class="form-control" />
				</div>
				<div class="mb-3">
					<label for="giong" class="form-label">Giống</label>
					<form:input path="giong" id="giong" class="form-control" />
				</div>
				<div class="mb-3">
					<label for="tuoi" class="form-label">Tuổi</label>
					<form:input path="tuoi" id="tuoi" type="number"
						class="form-control" />
				</div>
				<div class="mb-3">
					<label for="gia" class="form-label">Giá</label>
					<form:input path="gia" id="gia" type="number" class="form-control" />
				</div>
				<div class="mb-3">
					<label for="hinhAnh" class="form-label">Hình ảnh</label>
					<form:input  path="hinhAnh" id="hinhAnh" class="form-control" />
				</div>
				<%-- <div class="mb-3">
					<input type="file" name="uploadFile"> <br>
					<h5>${message}</h5>
					<h5>${messageUpload}</h5>
					<img width="300px" alt="" src="/file/${filename}">
				</div> --%>
				<div class="mb-3">
					<button formaction="/admin/pets/save" class="btn btn-primary">Lưu</button>
					<button formaction="/admin/pets/update" class="btn btn-primary">Sửa</button>
					<button formaction="/admin/pets/delete/${item.maThuCung}"
						class="btn btn-danger">Xóa</button>
					<a href="/admin/pets/index" class="btn btn-secondary">Trở lại</a>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
