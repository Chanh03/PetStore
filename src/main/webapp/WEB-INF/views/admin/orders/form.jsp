<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<form:form action="/admin/orders/save" modelAttribute="item">
		<form:hidden placeholder="" path="maDonHang" />
		<form:select path="khachHang.maKhachHang">
			<c:forEach items="${customers}" var="item">
				<form:option value="${item.maKhachHang}">${item.tenKhachHang}</form:option>
			</c:forEach>
		</form:select>
		<form:select path="nhanVien.maNhanVien">
			<c:forEach items="${staffs}" var="item">
				<form:option value="${item.maNhanVien}">${item.tenNhanVien}</form:option>
			</c:forEach>
		</form:select>
		<form:input type="date" path="ngayDat" />
		<button formaction="/admin/orders/save">Lưu</button>
		<button formaction="/admin/orders/update">Sửa</button>
		<button formaction="/admin/orders/delete/${item.maDonHang}">Xóa</button>
	</form:form>
</body>
</html>