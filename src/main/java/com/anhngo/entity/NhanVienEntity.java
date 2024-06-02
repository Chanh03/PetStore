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
@Table(name = "nhanvien") // Sửa lại tên bảng cho đúng với cơ sở dữ liệu
public class NhanVienEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_nhanvien")
	private int maNhanVien;

	@Column(name = "ten_nhanvien")
	private String tenNhanVien;

	@Column(name = "matkhau_nv")
	private String matKhauNV;

	@Column(name = "email_nv")
	private String emailNV;

	@Column(name = "sdt_nv")
	private String soDienThoaiNV;

	@OneToMany(mappedBy = "nhanVien")
	private List<DonHangEntity> donHang;
}
