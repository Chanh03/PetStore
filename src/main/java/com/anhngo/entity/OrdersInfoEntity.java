package com.anhngo.entity;

import java.math.BigDecimal;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrdersInfoEntity {
	private Long maDonHang;
	private String tenKhachHang;
	private String tenNhanVien;
	private Date ngayDat;
	private String tenThuCung;
	private int soLuong;
	private BigDecimal gia;
	private BigDecimal thanhTien;
}
