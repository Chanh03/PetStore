<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Waggy Pet Shop</title>
<!-- ICON -->
<link rel="icon" href="images/nhaiconbanphim2-01.png">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/246169b37f.js"
	crossorigin="anonymous" type="text/javascript"></script>
<!-- Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-cn7l7gDp0ey6b8c5UyN9UNpSLQFcpTxuP8r72d9czD8Gknf2/2frT0BOu71lfFhH"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<!-- FONT -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Chilanka&family=Montserrat:wght@300;400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Playpen+Sans:wght@100..800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Grandstander:ital,wght@0,100..900;1,100..900&family=Playpen+Sans:wght@100..800&display=swap"
	rel="stylesheet">

<!-- ANGULAR JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>

<style>
body {
	font-family: 'Grandstander'
}

header {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
}

main {
	margin-top: 110px;
}

/* LOADER */

/* MENU */
a {
	transition: ease-in-out 0.3s;
}

a:hover {
	text-decoration: none;
	font-weight: bold;
	width: fit-content;
}

.fa-solid {
	font-size: 25px;
	color: #bfa789;
	transition: ease-in-out 0.3s;
}

.fa-solid:hover {
	color: #bfa789;
	cursor: pointer;
	transform: scale(1.2);
}

/* BANNER */
#banner {
	background: url(images/background-img.png) no-repeat;
	background-size: cover;
}

#banner .carousel-inner img {
	width: 500px;
	margin: 30px auto;
	filter: drop-shadow(0 0 5rem rgba(246, 175, 175, 0.759));
}

/* CATEGORIES */
.categories-item {
	text-decoration: none;
	color: #bfa789;
	cursor: pointer;
}

.category-icon {
	color: #ebcea9;
	font-size: 100px;
	margin: 0 auto;
}

.search-container {
	overflow: hidden;
	transition: width 0.3s ease-in-out;
}

.search-btn, .submit-btn {
	background-color: transparent;
	border: none;
	color: #bfa789;
	padding: 10px;
	cursor: pointer;
	border-radius: 5px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.search-btn .fa-search, .submit-btn .fa-paper-plane {
	font-size: 16px;
}

.search-input {
	width: 0;
	padding: 10px;
	border: none;
	border-radius: 5px;
	opacity: 0;
	transition: width 0.3s ease-in-out, opacity 0.3s ease-in-out,
		border-color 0.3s ease-in-out;
}

.search-input:focus {
	outline: none;
	border: 2px solid #bfa789;
	/* Màu viền khi focus */
	border-radius: 5px;
}

.search-container.expand .search-input {
	width: 200px;
	opacity: 1;
}

.search-container.expand .submit-btn {
	display: flex;
}

.submit-btn {
	display: none;
}

/* ITEMS */
.card {
	border: none;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	position: relative;
	overflow: hidden;
}

.card-img-top {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.card-title {
	font-size: 1.25rem;
	font-weight: bold;
}

.rate-star {
	font-size: 1.25rem;
	margin-bottom: 0.5rem;
	color: goldenrod;
}

.text-price {
	font-size: 1.25rem;
	font-weight: lighter;
	color: #e1b784;
}

.btn-dark {
	border-radius: 20px;
}

.card-img-overlay {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(2px); /* Điều chỉnh mức độ mờ ở đây */
	opacity: 0; /* Initially hidden */
	transition: opacity 0.3s ease-in-out, margin-bottom 0.3s ease-in-out;
}

.btn-add-to-cart {
	background-color: #bfa789;
	color: white;
}

.btn-add-to-cart:hover {
	background-color: #ebcea9b5;
	color: white;
	transform: scale(1.1);
	filter: drop-shadow(0 0 0.5rem rgba(0, 0, 0, 0.5));
	transition: ease-in-out 0.1s;
}

/* Show the button on hover */
.card:hover .card-img-overlay {
	opacity: 1;
	margin-bottom: 0;
}

.card:hover {
	transform: scale(1.02);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
	transition: 0.3s;
}

.social-icon {
	color: #bfa789;
	font-size: 1.5em;
	margin: 0 2px;
}

/* ACCOUNT */
#sidebar {
	background-color: white;
	margin-top: 20px;
	width: 250px;
	height: 100%;
}

#sidebar ul li {
	list-style: none;
	font-size: 18px;
	border-bottom: 1px solid #bfa789;
	cursor: pointer;
}

#sidebar ul li a {
	display: block;
	text-decoration: none;
	color: #bfa789;
	padding: 10px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	transition: 0.3s;
}

#sidebar ul li a:hover {
	background-color: #bfa789;
	color: white;
}

.content {
	flex-grow: 1;
	padding: 15px;
}

.accordion-button {
	font-size: large;
	color: #bfa789;
}

.accordion-button:focus {
	box-shadow: none;
	color: #bfa789;
	font-weight: bold;
}

.content-section {
	display: none;
}

.content-section:target {
	display: block;
}

.accordion-collapse {
	transition: height 0.3s ease;
}

.collapse.show {
	display: block;
}

/* SHOPPING CART */
.cart-item {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	margin-bottom: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s, box-shadow 0.3s;
}

.cart-item:hover {
	transform: scale(1.02);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

.cart-item img {
	width: 80px;
	height: auto;
	margin-right: 15px;
	border-radius: 4px;
}

.cart-item button {
	border: none;
	background: none;
	transition: color 0.3s;
}

.cart-item button i {
	color: #000;
}

.cart-item button:hover i {
	color: #007bff;
}

.summary {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.delivery, .payment-methods {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	margin-top: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.payment-methods img {
	height: 30px;
	margin-right: 10px;
	transition: transform 0.3s;
}

.payment-methods img:hover {
	transform: scale(1.1);
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
	transition: background-color 0.3s, transform 0.3s;
}

.btn-primary:hover {
	background-color: #0056b3;
	transform: scale(1.02);
}

.quantity input {
	width: 50px;
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 4px;
	padding: 5px;
	transition: border-color 0.3s;
}

.quantity input:focus {
	border-color: #007bff;
	outline: none;
}

.details {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	margin-top: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.details-btn {
	margin-right: 10px;
	cursor: pointer;
	color: #007bff;
	text-decoration: none;
	transition: color 0.3s;
}

.details-btn:hover {
	color: #0056b3;
}

.remove-btn {
	cursor: pointer;
	color: #ff0000;
	text-decoration: none;
	transition: color 0.3s;
}

.remove-btn:hover {
	color: #cc0000;
}

.collapse-content {
	background-color: #f8f9fa;
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 10px;
	margin-top: 10px;
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
	transition: max-height 0.3s ease-in-out, opacity 0.3s ease-in-out;
	overflow: hidden;
	max-height: 0;
	opacity: 0;
}

.collapse-content.show {
	max-height: 300px;
	opacity: 1;
}

.sticky-centered {
	position: -webkit-sticky; /* Safari */
	position: sticky;
	top: 50%;
	transform: translateY(-25%);
	z-index: 1; /* Đảm bảo form nằm trên các phần tử khác */
}

.form-container {
	height: 200vh; /* Đủ cao để có không gian cuộn */
}

.pagination {
	display: flex;
	list-style: none;
	padding: 0;
}

.page-item {
	margin: 0 5px;
}

.page-link {
	display: block;
	padding: 8px 12px;
	border: 1px solid #dee2e6;
	border-radius: 4px;
	text-decoration: none;
	color: #007bff;
	background-color: #fff;
}

.page-link:hover {
	background-color: #e9ecef;
	border-color: #dee2e6;
}

.page-item.active .page-link {
	color: #fff;
	background-color: #007bff;
	border-color: #007bff;
}

.page-item.disabled .page-link {
	color: #6c757d;
	pointer-events: none;
	background-color: #fff;
	border-color: #dee2e6;
}
</style>
</head>

<body>

	<!-- HEADER START -->
	<header class="bg-body shadow border-bottom ">
		<div class="container">
			<!-- BANNER HEADER -->
			<div class="d-flex">
				<div class="navbar-brand d-flex align-items-center gap-4 ">
					<a href="/"><img src="/hinhAnh/pets/logo.png" alt="logo"
						class="logo"></a>
				</div>
			</div>
			<nav class="main-menu d-flex navbar navbar-expand-lg ">
				<!-- KHÔNG REPOSIVE -->
				<div class="d-flex d-lg-none align-items-end mt-3">
					<ul class="d-flex justify-content-end list-unstyled m-0">
						<li><a href="account.html" class="mx-3"> <i
								class="fa-solid fa-user"></i>
						</a></li>
						<li><a href="wishlist.html" class="mx-3"> <i
								class="fa-solid fa-heart"></i>
						</a></li>
						<li class=""><a href="#" class="mx-3"
							data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
							aria-controls="offcanvasCart"> <i
								class="fa-solid fa-cart-shopping"></i>
						</a></li>
					</ul>
				</div>

				<!-- REPOSIVE BUTTON-->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
					aria-controls="offcanvasNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="offcanvas offcanvas-end" tabindex="-1"
					id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
					<div class="offcanvas-header justify-content-end ">
						<button type="button"
							class="btn-close w-50 border border-5 shadow-sm  "
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div
						class="offcanvas-body justify-content-between align-items-center ">
						<div class="d-flex">
							<select class="shadow form-select border-0 mb-0 me-1">
								<option selected>Shop by Category</option>
								<option>Clothes</option>
								<option>Food</option>
								<option>Toy</option>
							</select>
						</div>
						<ul
							class="navbar-nav menu-list list-unstyled d-flex gap-md-3 mb-0">
							<li class="nav-item"><a href="index.html"
								class="nav-link active text-warning animated-link">Home</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" role="button" id="pages"
								data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
								<ul class="dropdown-menu" aria-labelledby="pages">
									<li><a href="about.html" class="dropdown-item">About
											Us<span class="badge bg-success text-warning  ms-2">PRO</span>
									</a></li>
									<li><a href="shop.html" class="dropdown-item">Shop<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="single-product.html" class="dropdown-item">Single
											Product<span class="badge bg-success text-warning ms-2">PRO</span>
									</a></li>
									<li><a href="cart.html" class="dropdown-item">Cart<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="wishlist.html" class="dropdown-item">Wishlist<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="checkout.html" class="dropdown-item">Checkout<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="blog.html" class="dropdown-item">Blog<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="single-post.html" class="dropdown-item">Single
											Post<span class="badge bg-success text-warning ms-2">PRO</span>
									</a></li>
									<li><a href="contact.html" class="dropdown-item">Contact<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="faqs.html" class="dropdown-item">FAQs<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="account.html" class="dropdown-item">Account<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="thank-you.html" class="dropdown-item">Thankyou<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="error.html" class="dropdown-item">Error
											404<span class="badge bg-success text-warning ms-2">PRO</span>
									</a></li>
									<li><a href="styles.html" class="dropdown-item">Styles<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
								</ul></li>
							<li class="nav-item"><a href="shop.html" class="nav-link">Shop</a>
							</li>
							<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a>
							</li>
							<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a>
							</li>
							<li class="nav-item"><a href="#" class="nav-link">Others</a>
							</li>
							<li class="nav-item"><a
								href="https://templatesjungle.gumroad.com/l/waggy-pet-shop-ecommerce-html-website-template"
								class="nav-link fw-bold text-dark" target="_blank">GET PRO</a></li>
						</ul>
						<!-- SEARCH -->
						<div class="search-container d-flex align-items-center ">
							<button id="search-btn" class="search-btn">
								<i class="fa fa-search"></i>
							</button>
							<input type="text" id="search-input" class="search-input"
								placeholder="Search...">
							<button id="submit-btn" class="submit-btn">
								<i class="fa fa-paper-plane"></i>
							</button>
						</div>
						<!-- END SEARCH -->
						<!-- SAU REPOSIVE -->
						<div class="d-none d-lg-flex align-items-end">
							<ul class="d-flex justify-content-end list-unstyled m-0">
								<li><a href="account.html" class="mx-3"> <i
										class="fa-solid fa-user"></i>
								</a></li>
								<li><a href="wishlist.html" class="mx-3"> <i
										class="fa-solid fa-heart"></i>
								</a></li>
								<li class=""><a href="#" class="mx-3"
									data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
									aria-controls="offcanvasCart"> <i
										class="fa-solid fa-cart-shopping"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- HEADER END -->

	<!-- MAIN START -->
	<main>
		<!-- BANNER -->
		<div id="banner" class="carousel slide shadow-lg"
			data-bs-ride="carousel" data-bs-interval="3000">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/hinhAnh/pets/banner-img.png" class="d-block" alt="...">
					<div class="carousel-caption d-none d-md-block text-dark">
						<h5 class="text-dark">Save 10 - 20 % off</h5>
						<p class="text-dark">Best destination for your pets</p>
						<div
							class="d-md-flex justify-content-md-center align-items-md-center">
							<a href="#"
								class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
								now</a>
						</div>
					</div>
					<div class="d-block d-md-none text-dark text-center">
						<h5 class="text-dark">Save 10 - 20 % off</h5>
						<p class="text-dark">Best destination for your pets</p>
						<a href="#"
							class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">Shop
							now</a>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/hinhAnh/pets/banner-img3.png" class="d-block" alt="...">
					<div class="carousel-caption d-none d-md-block text-dark">
						<h5 class="text-dark">Save 10 - 20 % off</h5>
						<p class="text-dark">Best destination for your pets</p>
						<div
							class="d-md-flex justify-content-md-center align-items-md-center">
							<a href="#"
								class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
								now</a>
						</div>
					</div>
					<div class="d-block d-md-none text-dark text-center">
						<h5 class="text-dark">Save 10 - 20 % off</h5>
						<p class="text-dark">Best destination for your pets</p>
						<a href="#"
							class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
							now</a>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/hinhAnh/pets/banner-img4.png" class="d-block" alt="...">
					<div class="carousel-caption d-none d-md-block text-dark">
						<h5 class="text-dark">Save 10 - 20 % off</h5>
						<p class="text-dark">Best destination for your pets</p>
						<div
							class="d-md-flex justify-content-md-center align-items-md-center">
							<a href="#"
								class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
								now</a>
						</div>
					</div>
					<div class="d-block d-md-none text-dark text-center">
						<h5 class="text-dark">Save 10 - 20 % off</h5>
						<p class="text-dark">Best destination for your pets</p>
						<a href="#"
							class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 w-50">Shop
							now</a>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev btn-dark" type="button"
				data-bs-target="#banner" data-bs-slide="prev">
				<i class="fa-solid fa-caret-left"></i> <span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next btn-dark" type="button"
				data-bs-target="#banner" data-bs-slide="next">
				<i class="fa-solid fa-caret-right"></i> <span
					class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- CATEGORIES -->
		<section id="categories">
			<div class="container my-3 py-5">
				<div class="row my-5">
					<div class="col text-center">
						<a href="#" class="categories-item"> <i
							class="fas fa-utensils category-icon"></i>
							<h5 class="mt-3">Foodies</h5>
						</a>
					</div>
					<div class="col text-center">
						<a href="#" class="categories-item"> <i
							class="fas fa-dove category-icon"></i>
							<h5 class="mt-3">Bird Shop</h5>
						</a>
					</div>
					<div class="col text-center">
						<a href="#" class="categories-item"> <i
							class="fas fa-dog category-icon"></i>
							<h5 class="mt-3">Dog Shop</h5>
						</a>
					</div>
					<div class="col text-center">
						<a href="#" class="categories-item"> <i
							class="fas fa-fish category-icon"></i>
							<h5 class="mt-3">Fish Shop</h5>
						</a>
					</div>
					<div class="col text-center">
						<a href="#" class="categories-item"> <i
							class="fas fa-cat category-icon"></i>
							<h5 class="mt-3">Cat Shop</h5>
						</a>
					</div>
				</div>
			</div>
		</section>
		<!-- ITEMS -->
		<section class="container my-5">
			<div class="row">
				<div class="col-md-2 form-container p-0">
					<div class="sticky-centered">
						<form action="/index/filter" method="get"
							class="p-3 border rounded shadow bg-body">
							<h1 class="h4 mb-4 text-center">Filter</h1>
							<div class="mb-3">
								<label for="ten" class="form-label">Tên</label> <input
									type="text" id="ten" name="ten" value="${param.ten}"
									class="form-control" placeholder="Nhập tên">
							</div>
							<div class="mb-3">
								<label for="loai" class="form-label">Loài</label> <select
									id="loai" name="loai" class="form-select">
									<option value="">Chọn loài</option>
									<c:forEach var="item" items="${filter}">
										<option value="${item}"
											${item eq param.loai ? 'selected' : ''}>${item}</option>
									</c:forEach>
								</select>
							</div>

							<button type="submit" class="btn btn-primary w-100">Filter</button>
							<a href="/index" class="btn btn-secondary w-100 mt-2">Reset</a>
						</form>
					</div>
				</div>
				<div class="col-md-10">
					<h1 class="h3 mb-4">Danh sách thú cưng</h1>
					<div id="products-container" class="row">
						<c:forEach items="${thuCungItems.content}" var="items"
							varStatus="status">
							<div class="col-lg-3 col-sm-6 mb-4 product-item">
								<div class="card h-100">
									<div
										class="card-img-overlay d-flex flex-column gap-3 justify-content-center align-items-center p-0">
										<a href="/cart/details/view/${items.maThuCung}"
											class="fs-4 btn btn-add-to-cart add-to-cart">Add to Cart</a> <a
											href="/index/products/view/detail/${items.maThuCung}"
											class="nav-link text-light border rounded px-2 py-1 bg-dark">Chi tiết</a>
									</div>
									<img src="/hinhAnh/pets/${items.hinhAnh}"
										class="card-img-top h-100" alt="${items.hinhAnh}">
									<div class="card-body text-start pb-0">
										<h5 class="card-title fs-4 fw-bold">${items.tenThuCung}</h5>
										<div class="rate-star fs-6">
											<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="fas fa-star"></i> <i class="fas fa-star"></i> <i
												class="far fa-star"></i> <label class="text-body-tertiary">5.0</label>
										</div>
										<div class="text-price d-flex gap-2">
											<p class="card-text fs-3">${items.gia}</p>
											<p class="card-text fs-5 text-decoration-line-through">$20.00</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="text-center d-flex justify-content-center">
						<nav aria-label="Page navigation">
							<ul class="pagination">
								<!-- Previous page link -->
								<c:if test="${currentPage > 1}">
									<li class="page-item"><a class="page-link"
										href="?page=${currentPage - 1}">&laquo;</a></li>
								</c:if>

								<!-- Page number links -->
								<c:forEach var="i" begin="1" end="${totalPages-1}">
									<li class="page-item ${i == currentPage ? 'active' : ''}">
										<a class="page-link" href="?page=${i}">${i}</a>
									</li>
								</c:forEach>

								<!-- Next page link -->
								<c:if test="${currentPage < totalPages}">
									<li class="page-item"><a class="page-link"
										href="?page=${currentPage + 1}">&raquo;</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!-- Offcanvas Cart -->
		<div class="offcanvas offcanvas-end w-50" tabindex="-1"
			id="offcanvasCart" aria-labelledby="offcanvasCartLabel">
			<div class="offcanvas-header">
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
					aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<div class="card">
					<div class="card-header">
						<h4>Giỏ hàng thú nuôi</h4>
					</div>
					<div class="card-body">
						<table class="table table-hover">
							<thead class="table-light">
								<tr>
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
										<td><c:out value="${entry.value.tenThuCung}" /></td>
										<td><c:out value="${entry.value.loai}" /></td>
										<td><c:out value="${entry.value.giong}" /></td>
										<td><c:out value="${entry.value.tuoi}" /></td>
										<td><fmt:formatNumber value="${entry.value.gia}"
												type="currency" currencySymbol="$" maxFractionDigits="2"
												minFractionDigits="2" /></td>
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
						<div class="d-flex justify-content-around">
							<div class="d-flex align-items-center">
								<span class="text-muted me-2">Số lượng:</span> <span
									class="fw-bold">${cart.size()} sản phẩm</span>
							</div>
							<c:set var="totalPrice" value="0" />
							<c:forEach var="item" items="${cart.values()}">
								<c:set var="totalPrice" value="${totalPrice + item.gia}" />
							</c:forEach>
							<div class="d-flex align-items-center">
								<span class="text-muted me-2">Tổng tiền:</span> <span
									class="fw-bold"><fmt:formatNumber value="${totalPrice}"
										type="currency" currencySymbol="$" maxFractionDigits="2"
										minFractionDigits="2" /></span>
							</div>
						</div>
						<div class="text-end">
							<button class="btn btn-success my-2">Thanh toán</button>
							<a class="btn btn-warning my-2" href="/cart/details/clear">Xóa
								tất cả</a> <a class="btn btn-info my-2" href="/cart/details/view">Xem
								tất cả</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- MAIN END -->

	<!-- FOOTER START -->
	<footer class="my-5 shadow-lg">
		<div class="container py-5 my-5">
			<div class="row">
				<div class="col-md-3">
					<div class="footer-menu">
						<img width="100%" src="images/logo.png" alt="logo">
						<p class="blog-paragraph fs-6 mt-3">Đăng ký nhận tin để nhận
							thông tin về các ưu đãi lớn của chúng tôi.</p>
						<div class="social-links">
							<ul class="d-flex list-unstyled gap-2">
								<li class="social"><a
									href="https://www.facebook.com/hiimcorn"> <i
										class="fab fa-facebook-f social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i width="100%"
										class="fab fa-twitter social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i
										class="fab fa-pinterest-p social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i
										class="fab fa-instagram social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i
										class="fab fa-youtube social-icon"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="footer-menu">
						<h3>Liên kết nhanh</h3>
						<ul class="menu-list list-unstyled">
							<li class="menu-item"><a href="#" class="nav-link">Trang
									chủ</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Về
									chúng tôi</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Ưu
									đãi</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Dịch
									vụ</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Liên
									hệ</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3">
					<div class="footer-menu">
						<h3>Trung tâm trợ giúp</h3>
						<ul class="menu-list list-unstyled">
							<li class="menu-item"><a href="#" class="nav-link">Câu
									hỏi thường gặp</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Thanh
									toán</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Đổi
									trả & Hoàn tiền</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Thanh
									toán</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Thông
									tin giao hàng</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3">
					<div>
						<h3>Bản tin của chúng tôi</h3>
						<p class="blog-paragraph fs-6">Đăng ký nhận tin của chúng tôi
							để cập nhật các ưu đãi lớn nhất của chúng tôi.</p>
						<div
							class="search-bar border rounded-pill border-dark-subtle px-2">
							<form class="text-center d-flex align-items-center" action=""
								method="">
								<input type="text" class="form-control border-0 bg-transparent"
									placeholder="Nhập email của bạn ở đây" />
								<iconify-icon class="send-icon" icon="tabler:location-filled"></iconify-icon>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<div class="footer-bottom">
		<div class="container">
			<hr class="m-0">
			<div class="row mt-3">
				<div class="col-md-6 copyright">
					<p class="secondary-font">© 2024 Vanh.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER END -->

</body>
<script src="/js/script.js"></script>


</html>