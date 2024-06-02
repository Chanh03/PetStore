package com.anhngo.entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "giohang")
public class GioHangEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_giohang")
	private int maGioHang;

	@ManyToOne
	@JoinColumn(name = "ma_khachhang")
	private KhachHangEntity khachHang;

	@OneToMany(mappedBy = "gioHang")
	private List<ChiTietGioHangEntity> chiTietGioHang;
}
