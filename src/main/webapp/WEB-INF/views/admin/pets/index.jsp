<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Pets Management</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="container d-flex gap-3">
		<jsp:include page="form.jsp" />
		<jsp:include page="table.jsp" />
	</div>
</body>
</html>