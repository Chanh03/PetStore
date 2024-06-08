<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default"
	data-assets-path="${pageContext.request.contextPath}/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Customers</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/hinhAnh/pets/logo.png" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script
	src="${pageContext.request.contextPath}/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/assets/js/config.js"></script>
<style type="text/css">
#backToTopBtn {
	display: none; /* Ẩn nút ban đầu */
	position: fixed; /* Nút luôn ở vị trí cố định */
	bottom: 20px; /* Khoảng cách từ nút đến đáy trang */
	right: 30px; /* Khoảng cách từ nút đến phải trang */
	z-index: 99; /* Đảm bảo nút nằm trên cùng */
	font-size: 18px;
	border: none;
	outline: none;
	background-color: red;
	color: white;
	cursor: pointer;
	padding: 15px;
	border-radius: 4px;
	transition: background-color 0.3s ease, transform 0.3s ease;
	/* Thêm transition */
}

#backToTopBtn:hover {
	background-color: #555; /* Màu khi hover */
	transform: scale(1.1); /* Tăng kích thước khi hover */
}
</style>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<defs> <path
						d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
						id="path-1"></path> <path
						d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
						id="path-3"></path> <path
						d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
						id="path-4"></path> <path
						d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
						id="path-5"></path> </defs>
					<g id="g-app-brand" stroke="none" stroke-width="1" fill="none"
						fill-rule="evenodd"> <g id="Brand-Logo"
						transform="translate(-27.000000, -15.000000)"> <g id="Icon"
						transform="translate(27.000000, 15.000000)"> <g id="Mask"
						transform="translate(0.000000, 8.000000)"> <mask id="mask-2"
						fill="white"> <use xlink:href="#path-1"></use> </mask> <use
						fill="#696cff" xlink:href="#path-1"></use> <g id="Path-3"
						mask="url(#mask-2)"> <use fill="#696cff" xlink:href="#path-3"></use>
					<use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
					</g> <g id="Path-4" mask="url(#mask-2)"> <use fill="#696cff"
						xlink:href="#path-4"></use> <use fill-opacity="0.2" fill="#FFFFFF"
						xlink:href="#path-4"></use> </g> </g> <g id="Triangle"
						transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
					<use fill="#696cff" xlink:href="#path-5"></use> <use
						fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use> </g> </g> </g> </g>
					</svg>
					</span> <a href="#"><span
						class="app-brand-text demo menu-text fw-bolder ms-2">Waggy
							Pets</span></a> </a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
						<i class="bx bx-chevron-left bx-sm align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboard -->
					<li class="menu-item active"><a
						href="/admin/ordersinfo1/index" class="menu-link"> <i
							class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">Dashboard</div>
					</a></li>

					<!-- Layouts -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-layout"></i>
							<div data-i18n="Layouts">Quản lý</div>
					</a>

						<ul class="menu-sub">
							<li class="menu-item"><a href="/admin/pets1/index"
								class="menu-link">
									<div data-i18n="Without menu">Thú cưng</div>
							</a></li>
							<li class="menu-item"><a href="/admin/customers1/index"
								class="menu-link">
									<div data-i18n="Without navbar">Khách hàng</div>
							</a></li>
							<li class="menu-item"><a href="/admin/staffs11/index"
								class="menu-link">
									<div data-i18n="Container">Nhân viên</div>
							</a></li>
							<li class="menu-item"><a href="layouts-fluid.html"
								class="menu-link">
									<div data-i18n="Fluid">Fluid</div>
							</a></li>
							<li class="menu-item"><a href="layouts-blank.html"
								class="menu-link">
									<div data-i18n="Blank">Blank</div>
							</a></li>
						</ul></li>

					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">Pages</span></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-dock-top"></i>
							<div data-i18n="Account Settings">Account Settings</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a
								href="pages-account-settings-account.html" class="menu-link">
									<div data-i18n="Account">Account</div>
							</a></li>
							<li class="menu-item"><a
								href="pages-account-settings-notifications.html"
								class="menu-link">
									<div data-i18n="Notifications">Notifications</div>
							</a></li>
							<li class="menu-item"><a
								href="pages-account-settings-connections.html" class="menu-link">
									<div data-i18n="Connections">Connections</div>
							</a></li>
						</ul></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-lock-open-alt"></i>
							<div data-i18n="Authentications">Authentications</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="auth-login-basic.html"
								class="menu-link" target="_blank">
									<div data-i18n="Basic">Login</div>
							</a></li>
							<li class="menu-item"><a href="auth-register-basic.html"
								class="menu-link" target="_blank">
									<div data-i18n="Basic">Register</div>
							</a></li>
							<li class="menu-item"><a
								href="auth-forgot-password-basic.html" class="menu-link"
								target="_blank">
									<div data-i18n="Basic">Forgot Password</div>
							</a></li>
						</ul></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-cube-alt"></i>
							<div data-i18n="Misc">Misc</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="pages-misc-error.html"
								class="menu-link">
									<div data-i18n="Error">Error</div>
							</a></li>
							<li class="menu-item"><a
								href="pages-misc-under-maintenance.html" class="menu-link">
									<div data-i18n="Under Maintenance">Under Maintenance</div>
							</a></li>
						</ul></li>
					</li>

					<!-- Forms & Tables -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">Forms &amp; Tables</span></li>
					<!-- Forms -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="Form Elements">Form Elements</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="forms-basic-inputs.html"
								class="menu-link">
									<div data-i18n="Basic Inputs">Basic Inputs</div>
							</a></li>
							<li class="menu-item"><a href="forms-input-groups.html"
								class="menu-link">
									<div data-i18n="Input groups">Input groups</div>
							</a></li>
						</ul></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="Form Layouts">Form Layouts</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="form-layouts-vertical.html"
								class="menu-link">
									<div data-i18n="Vertical Form">Vertical Form</div>
							</a></li>
							<li class="menu-item"><a href="form-layouts-horizontal.html"
								class="menu-link">
									<div data-i18n="Horizontal Form">Horizontal Form</div>
							</a></li>
						</ul></li>
					<!-- Tables -->
					<li class="menu-item"><a href="tables-basic.html"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-table"></i>
							<div data-i18n="Tables">Tables</div>
					</a></li>

				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Search -->
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="bx bx-search fs-4 lh-0"></i> <input type="text"
									class="form-control border-0 shadow-none"
									placeholder="Search${pageContext.request.contextPath}."
									aria-label="Search${pageContext.request.contextPath}." />
							</div>
						</div>
						<!-- /Search -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->
							<li class="nav-item lh-1 me-3"><a class="github-button"
								href="https://github.com/themeselection/sneat-html-admin-template-free"
								data-icon="octicon-star" data-size="large"
								data-show-count="true"
								aria-label="Star themeselection/sneat-html-admin-template-free on GitHub">Star</a>
							</li>

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow"
								href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
										<img
											src="${pageContext.request.contextPath}/assets/img/avatars/1.png"
											alt class="w-px-40 h-auto rounded-circle" />
									</div>
							</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex">
												<div class="flex-shrink-0 me-3">
													<div class="avatar avatar-online">
														<img
															src="${pageContext.request.contextPath}/assets/img/avatars/1.png"
															alt class="w-px-40 h-auto rounded-circle" />
													</div>
												</div>
												<div class="flex-grow-1">
													<span class="fw-semibold d-block">John Doe</span> <small
														class="text-muted">Admin</small>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-user me-2"></i> <span class="align-middle">My
												Profile</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-cog me-2"></i> <span class="align-middle">Settings</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <span
											class="d-flex align-items-center align-middle"> <i
												class="flex-shrink-0 bx bx-credit-card me-2"></i> <span
												class="flex-grow-1 align-middle">Billing</span> <span
												class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
										</span>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="auth-login-basic.html">
											<i class="bx bx-power-off me-2"></i> <span
											class="align-middle">Log Out</span>
									</a></li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->

					<div class="container-xxl flex-grow-1 container-p-y">
						<div class="row">
							<!-- Welcome Message -->
							<div class="col-lg-8 mb-4 order-0">
								<div class="card">
									<div class="d-flex align-items-end row">
										<div class="col-sm-7">
											<div class="card-body">
												<h5 class="card-title text-primary">Welcome to Our Pet
													Store</h5>
												<p class="mb-4">Discover a world of love and
													companionship at our pet store. From playful puppies to
													majestic cats and exotic birds, we have the perfect pet for
													every family. Explore our wide selection of pet supplies
													and accessories to keep your furry friends happy and
													healthy.</p>

												<a href="#" class="btn btn-sm btn-outline-primary">Shop
													Now</a>
											</div>
										</div>
										<div class="col-sm-5 text-center text-sm-left">
											<div class="card-body pb-0 px-0 px-md-4">
												<img
													src="${pageContext.request.contextPath}/hinhAnh/pets/logo.png"
													width="100%" alt="Pet Store" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Analytics -->
							<div class="col-lg-4 col-md-4 order-1">
								<div class="row">
									<div class="col-lg-6 col-md-12 col-6 mb-4">
										<div class="card">
											<div class="card-body">
												<div
													class="card-title d-flex align-items-start justify-content-between">
													<div class="avatar flex-shrink-0">
														<img
															src="${pageContext.request.contextPath}/assets/img/icons/unicons/chart-success.png"
															alt="chart success" class="rounded" />
													</div>
													<div class="dropdown">
														<button class="btn p-0" type="button" id="cardOpt3"
															data-bs-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false">
															<i class="bx bx-dots-vertical-rounded"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-end"
															aria-labelledby="cardOpt3">
															<a class="dropdown-item" href="javascript:void(0);">View
																More</a> <a class="dropdown-item" href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
												<span class="fw-semibold d-block mb-1">Đã vận chuyển</span>
												<h3 class="card-title mb-2">
													<fmt:formatNumber type="currency" currencyCode="USD"
														currencySymbol="$" value="${thongKeDoanhThu_shipped}"></fmt:formatNumber>
												</h3>
												<small class="text-success fw-semibold"><i
													class="bx bx-up-arrow-alt"></i> +72.80%</small>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-12 col-6 mb-4">
										<div class="card">
											<div class="card-body">
												<div
													class="card-title d-flex align-items-start justify-content-between">
													<div class="avatar flex-shrink-0">
														<img
															src="${pageContext.request.contextPath}/assets/img/icons/unicons/wallet-info.png"
															alt="Credit Card" class="rounded" />
													</div>
													<div class="dropdown">
														<button class="btn p-0" type="button" id="cardOpt6"
															data-bs-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false">
															<i class="bx bx-dots-vertical-rounded"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-end"
															aria-labelledby="cardOpt6">
															<a class="dropdown-item" href="javascript:void(0);">View
																More</a> <a class="dropdown-item" href="javascript:void(0);">Delete</a>
														</div>
													</div>
												</div>
												<span>Đang vận chuyển</span>
												<h3 class="card-title text-nowrap mb-1">
													<fmt:formatNumber type="currency" currencyCode="USD"
														currencySymbol="$" value="${thongKeDoanhThu_pending}"></fmt:formatNumber>
												</h3>
												<small class="text-success fw-semibold"><i
													class="bx bx-up-arrow-alt"></i> +28.42%</small>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="card shadow p-4">
									<form action="/admin/ordersinfo/index" method="get"
										class="mb-3">
										<div class="row">
											<div class="col-md-6">
												<label for="statusFilter" class="form-label">Lọc
													theo trạng thái:</label> <select id="statusFilter" name="status"
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
									<table class="table table-bordered table-hover">
										<thead class="">
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
													<td>
														<div class="dropdown">
															<button class="btn btn-secondary dropdown-toggle"
																type="button" id="dropdownMenuButton"
																data-bs-toggle="dropdown" aria-expanded="false">
																Actions</button>
															<ul class="dropdown-menu"
																aria-labelledby="dropdownMenuButton">
																<li><a class="dropdown-item edit-btn" href="#"
																	data-bs-toggle="modal" data-bs-target="#editModal"
																	data-id="${item.maNhanVien}"
																	data-name="${item.tenNhanVien}"
																	data-password="${item.matKhauNV}"
																	data-email="${item.emailNV}"
																	data-phone="${item.soDienThoaiNV}">Edit</a></li>
																<li><a class="dropdown-item delete-btn"
																	href="/admin/staffs1/delete/${item.maNhanVien}">Delete</a></li>
															</ul>
														</div>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- Modal -->
							<!-- Modal -->
							<div class="modal fade" id="editModal" tabindex="-1"
								aria-labelledby="editModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="editModalLabel">Chỉnh sửa
												khách hàng</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<form:form action="/admin/staffs1/index" modelAttribute="item"
												class="row g-3">
												<div class="form-group">
													<label for="maNhanVien" class="form-label">Mã nhân
														viên</label>
													<form:hidden path="maNhanVien" id="maNhanVien"
														class="form-control" />
												</div>
												<div class="form-group">
													<label for="tenNhanVien" class="form-label">Tên
														nhân viên</label>
													<form:input path="tenNhanVien" id="tenNhanVien"
														class="form-control" />
												</div>
												<div class="form-group">
													<label for="matKhauNV" class="form-label">Mật khẩu</label>
													<form:input path="matKhauNV" id="matKhauNV"
														class="form-control" />
												</div>
												<div class="form-group">
													<label for="emailNV" class="form-label">Email</label>
													<form:input path="emailNV" id="emailNV"
														class="form-control" />
												</div>
												<div class="form-group">
													<label for="soDienThoaiNV" class="form-label">Số
														điện thoại</label>
													<form:input path="soDienThoaiNV" id="soDienThoaiNV"
														class="form-control" />
												</div>
												<div class="form-group">
													<button formaction="/admin/staffs1/save"
														class="btn btn-primary">Lưu</button>
													<button formaction="/admin/staffs1/update"
														class="btn btn-success">Sửa</button>
													<button
														formaction="/admin/staffs1/delete/${item.maNhanVien}"
														class="btn btn-danger">Xóa</button>
													<a href="/admin/staffs1/index" class="btn btn-secondary">Trở
														lại</a>
												</div>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row"></div>
			</div>
			<!-- / Content -->


			<!-- / Footer -->

			<div class="content-backdrop fade"></div>
		</div>
		<!-- Content wrapper -->
	</div>
	<!-- / Layout page -->
	</div>

	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->

	<div class="buy-now">
		<button onclick="topFunction()" id="backToTopBtn" title="Go to top">^</button>
	</div>

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/jquery/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/popper/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	<!-- Page JS -->
	<script
		src="${pageContext.request.contextPath}/assets/js/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.edit-btn').on('click', function() {
				var id = $(this).data('id');
				var name = $(this).data('name');
				var password = $(this).data('password');
				var email = $(this).data('email');
				var phone = $(this).data('phone');

				$('#tenNhanVien').val(name);
				$('#matKhauNV').val(password);
				$('#emailNV').val(email);
				$('#soDienThoaiNV').val(phone);
				$('#editModal').modal('show');
			});
		});
	</script>

</body>
</html>
