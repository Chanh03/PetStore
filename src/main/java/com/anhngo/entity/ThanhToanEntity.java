package com.anhngo.entity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "thanhtoan")
public class ThanhToanEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_thanhtoan")
	int maThanhToan;

	@ManyToOne
	@JoinColumn(name = "MaGioHang")
	GioHangEntity gioHang;

	@Column(name = "phuongthuc_tt")
	String phuongThucTT;

	@Column(name = "trangthai_tt")
	String trangThaiTT;
}
