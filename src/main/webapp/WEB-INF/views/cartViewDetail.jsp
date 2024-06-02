<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ hàng</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container my-5">
		<h1>Giỏ hàng</h1>
		<a href="/">Quay lại</a>
		<div class="card">
			<div class="card-header">
				<h4>Chi tiết giỏ hàng</h4>
			</div>
			<div class="card-body">	
				<table class="table">
					<thead>
						<tr>
							<th>Mã sản phẩm</th>
							<th>Tên sản phẩm</th>
							<th>Loại</th>
							<th>Giống</th>
							<th>Tuổi</th>
							<th>Giá</th>
							<th>Hành động</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="entry" items="${cart}">
							<tr>
								<td><c:out value="${entry.key}" /></td>
								<td><c:out value="${entry.value.tenThuCung}" /></td>
								<td><c:out value="${entry.value.loai}" /></td>
								<td><c:out value="${entry.value.giong}" /></td>
								<td><c:out value="${entry.value.tuoi}" /></td>
								<td><c:out value="${entry.value.gia}" /></td>
								<td>
									<form
										action="<c:url value='/cart/details/remove/${entry.key}'/>"
										method="post">
										<button class="btn btn-danger btn-sm">Xóa</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="text-right">
					<button class="btn btn-success">Thanh toán</button>
				</div>
				<div class="text-right">
					<button class="btn btn-success"><a href="/cart/details/clear">Clear All</a></button>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
