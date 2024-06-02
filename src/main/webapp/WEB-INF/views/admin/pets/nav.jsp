<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Navigation Menu</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
<style>
/* Tạo hiệu ứng card và bóng */
.nav-item {
	transition: all 0.3s ease;
}

.nav-item:hover {
	transform: translateY(-3px);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
		<div class="container">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link"
						href="/admin/pets/index">Thú cưng</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/admin/customers/index">Khách hàng</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/admin/staffs/index">Nhân viên</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/admin/ordersinfo/index">Đơn hàng</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>

