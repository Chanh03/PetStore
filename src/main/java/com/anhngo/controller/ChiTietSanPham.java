package com.anhngo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ThuCungEntity;

@Controller
public class ChiTietSanPham {
	@Autowired
	private ThuCungDAO thuCungDAO;

	@RequestMapping("/index/products/view/detail/{id}")
	public String chitietsanpham(Model model, @PathVariable("id") int id) {
		ThuCungEntity thucung = thuCungDAO.findById(id).get();
		model.addAttribute("thuCungDetail", thucung);
		return "chiTietSanPham";
	}
}
