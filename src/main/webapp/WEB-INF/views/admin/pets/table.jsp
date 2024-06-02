<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="col-9">
	    <h1>Pets Table</h1>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead class="table-dark">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Loài</th>
						<th>Giống</th>
						<th>Tuổi</th>
						<th>Giá</th>
						<th>Hình ảnh</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.maThuCung}</td>
							<td>${item.tenThuCung}</td>
							<td>${item.loai}</td>
							<td>${item.giong}</td>
							<td>${item.tuoi}</td>
							<td>${item.gia}</td>
							<td><img id="${item.hinhAnh}" alt="${item.hinhAnh}"
								src="${item.hinhAnh}" /></td>
							<td><a
								href="${pageContext.request.contextPath}/admin/pets/edit/${item.maThuCung}"
								class="btn btn-primary">Edit</a> <a
								href="${pageContext.request.contextPath}/admin/pets/delete/${item.maThuCung}"
								class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
