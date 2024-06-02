 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Danh sách đơn hàng</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>

</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="card shadow p-4">
					<h2 class="mb-4">Thống kê</h2>
					<div class="list-group">
						<div class="list-group-item">
							<div class="d-flex w-100 justify-content-between">
								<h6 class="mb-1">Tổng số đơn hàng:</h6>
								<span class="badge bg-primary rounded-pill px-3">${totalOrders}</span>
							</div>
						</div>
						<div class="list-group-item">
							<div class="d-flex w-100 justify-content-between">
								<h6 class="mb-1">Số đơn hàng đã giao:</h6>
								<span class="badge bg-success rounded-pill px-3">${totalShippedOrders}</span>
							</div>
						</div>
						<div class="list-group-item">
							<div class="d-flex w-100 justify-content-between">
								<h6 class="mb-1">Số đơn hàng chưa giao:</h6>
								<span class="badge bg-warning rounded-pill px-3">${totalPendingOrders}</span>
							</div>
						</div>
						<div class="list-group-item">
							<div class="d-flex w-100 justify-content-between">
								<h6 class="mb-1">Tổng doanh thu:</h6>
								<span class="badge bg-info rounded-pill px-3"><fmt:formatNumber
										value="${totalRevenue}" type="currency" currencyCode="VND" /></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<div>
					<canvas id="myChart"></canvas width="400px" he>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="">
				<div class="card shadow p-4">
					<h2 class="mb-4">Danh sách đơn hàng</h2>
					<form action="/admin/ordersinfo/index" method="get" class="mb-3">
						<div class="row">
							<div class="col-md-6">
								<label for="statusFilter" class="form-label">Lọc theo
									trạng thái:</label> <select id="statusFilter" name="status"
									class="form-select">
									<option value="all">Tất cả</option>
									<option value="shipped">Đã giao</option>
									<option value="pending">Chưa giao</option>
								</select>
							</div>
							<div class="col-md-6 d-flex align-items-end">
								<button type="submit" class="btn btn-primary">Lọc</button>
							</div>
						</div>
					</form>

					<table class="table">
						<thead>
							<tr>
								<th scope="col">Mã đơn hàng</th>
								<th scope="col">Tên khách hàng</th>
								<th scope="col">Tên nhân viên</th>
								<th scope="col">Ngày đặt</th>
								<th scope="col">Tên thú cưng</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Giá</th>
								<th scope="col">Thành tiền</th>
								<th scope="col">Trạng thái</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="order" items="${ordersInfo}">
								<tr>
									<td><a href="/admin/orders/edit/${order[0]}">${order[0]}</a></td>
									<td>${order[1]}</td>
									<td>${order[2]}</td>
									<td>${order[3]}</td>
									<td>${order[4]}</td>
									<td>${order[5]}</td>
									<td><fmt:formatNumber value="${order[6]}" type="currency"
											currencyCode="VND" /></td>
									<td><fmt:formatNumber value="${order[7]}" type="currency"
											currencyCode="VND" /></td>
									<td>
										<button
											class="btn ${order[8] eq 'Shipped' ? 'btn-success' : 'btn-warning'}">${order[8]}</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
const ctx = document.getElementById('myChart');

new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Đơn hàng'],
        datasets: [{
            label: 'Tổng số đơn hàng',
            data: [${totalOrders}],
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            borderColor: 'rgba(255, 99, 132, 1)',
            borderWidth: 1
        },
        {
            label: 'Số đơn hàng đã giao',
            data: [${totalShippedOrders}],
            backgroundColor: 'rgba(54, 162, 235, 0.2)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 1
        },
        {
            label: 'Số đơn hàng chưa giao',
            data: [${totalPendingOrders}],
            backgroundColor: 'rgba(255, 206, 86, 0.2)',
            borderColor: 'rgba(255, 206, 86, 1)',
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true,
                title: {
                    display: true,
                    text: 'Số lượng'
                }
            }
        },
        plugins: {
            title: {
                display: true,
                text: 'Biểu đồ số lượng đơn hàng',
                font: {
                    size: 18
                }
            }
        }
    }
});
</script>
</html>
