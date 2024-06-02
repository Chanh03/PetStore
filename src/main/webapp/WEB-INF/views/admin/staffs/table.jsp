<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="col-9">
		<h2>Staffs Table</h2>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead class="table-dark">
					<tr>
						<th>Mã nhân viên</th>
						<th>Tên nhân viên</th>
						<th>Mật khẩu nhân viên</th>
						<th>Email nhân viên</th>
						<th>Số điện thoại nhân viên</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.maNhanVien}</td>
							<td>${item.tenNhanVien}</td>
							<td>${item.matKhauNV}</td>
							<td>${item.emailNV}</td>
							<td>${item.soDienThoaiNV}</td>
							<td><a href="/admin/staffs/edit/${item.maNhanVien}"
								class="btn btn-primary">Edit</a> <a
								href="/admin/staffs/delete/${item.maNhanVien}"
								class="btn btn-danger">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
