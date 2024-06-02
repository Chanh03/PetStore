package com.anhngo.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "khachhang")
public class KhachHangEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_khachhang")
	private int maKhachHang;

	@Column(name = "ten_khachhang")
	private String tenKhachHang;

	@Column(name = "email_kh")
	private String emailKH;

	@Column(name = "matkhau_kh")
	private String matKhauKH;

	@Column(name = "sdt_kh")
	private String soDienThoaiKH;

	@Column(name = "diachi_kh")
	private String diaChiKH;

	@OneToMany(mappedBy = "khachHang")
	private List<DonHangEntity> donHang;

	@OneToMany(mappedBy = "khachHang")
	private List<GioHangEntity> gioHang;
}
