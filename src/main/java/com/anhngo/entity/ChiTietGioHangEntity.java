package com.anhngo.entity;

import java.io.Serializable;
import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "chitiet_giohang")
//
public class ChiTietGioHangEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_chitietgiohang")
	private int maChiTietGioHang;

	@ManyToOne
	@JoinColumn(name = "ma_giohang")
	private GioHangEntity gioHang;

	@ManyToOne
	@JoinColumn(name = "ma_thucung")
	private ThuCungEntity thuCung;

	@Column(name = "soluong")
	private int soLuong;

	@Column(name = "gia")
	private BigDecimal gia;
}
