<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<form:form action="/admin/orderdetails/index" modelAttribute="item">
		<form:hidden path="maChiTietDonHang" />
		<form:select path="donHang.maDonHang">
			<c:forEach items="${orders}" var="item">
				<form:option value="${item.maDonHang}">${item.maDonHang}</form:option>
			</c:forEach>
		</form:select>
		<form:select path="thuCung.maThuCung">
			<c:forEach items="${pets}" var="item">
				<form:option value="${item.maThuCung}">${item.tenThuCung}</form:option>
			</c:forEach>
		</form:select>
		<form:input path="soLuong" />
		<form:input path="gia" />
		<form:input path="trangThai" />
		<button formaction="/admin/orderdetails/save">Lưu</button>
		<button formaction="/admin/orderdetails/update">Sửa</button>
		<button formaction="/admin/orderdetails/delete/${maChiTietDonHang}">Xóa</button>
	</form:form>
</body>
</html>