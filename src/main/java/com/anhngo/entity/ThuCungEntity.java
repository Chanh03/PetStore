package com.anhngo.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "thucung")
public class ThuCungEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_thucung")
	private int maThuCung;

	@Column(name = "ten_thucung")
	private String tenThuCung;

	@Column(name = "loai")
	private String loai;

	@Column(name = "giong")
	private String giong;

	@Column(name = "tuoi")
	private int tuoi;

	@Column(name = "gia")
	private BigDecimal gia;

	@Column(name = "hinhanh")
	private String hinhAnh;

	@OneToMany(mappedBy = "thuCung")
	private List<ChiTietDonHangEntity> chiTietDonHang;

	@OneToMany(mappedBy = "thuCung")
	private List<ChiTietGioHangEntity> chiTietGioHang;
}
