package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anhngo.dao.DonHangDAO;
import com.anhngo.dao.KhachHangDAO;
import com.anhngo.dao.NhanVienDAO;
import com.anhngo.entity.DonHangEntity;
import com.anhngo.entity.KhachHangEntity;
import com.anhngo.entity.NhanVienEntity;

@Controller
public class AdminController_ORDERS {
	@Autowired
	private DonHangDAO donHangDAO;
	@Autowired
	private NhanVienDAO nhanVienDAO;
	@Autowired
	private KhachHangDAO khachHangDAO;

	@RequestMapping({ "/admin/orders/index", "/admin/orders/edit/{id}" })
	public String orders(Model model, @PathVariable(required = false) Integer id) {
		List<DonHangEntity> items = donHangDAO.findAll();
		model.addAttribute("items", items);

		DonHangEntity item;
		if (id != null) {
			item = donHangDAO.findById(id).orElse(new DonHangEntity());
		} else {
			item = new DonHangEntity();
		}
		model.addAttribute("item", item);
		// Lấy danh sách nhan viên
		List<NhanVienEntity> staffs = nhanVienDAO.findAll();
		model.addAttribute("staffs", staffs);
		List<KhachHangEntity> customers = khachHangDAO.findAll();
		model.addAttribute("customers", customers);
		return "/admin/orders/index";
	}

	@RequestMapping("/admin/orders/save")
	public String saveOrder(DonHangEntity order) {
		donHangDAO.save(order);
		return "redirect:/admin/orders/index";
	}

	@RequestMapping("/admin/orders/update")
	public String updateOrder(DonHangEntity order) {
		donHangDAO.save(order);
		return "redirect:/admin/orders/edit/" + order.getMaDonHang();
	}

	@RequestMapping("/admin/orders/delete/{id}")
	public String deleteOrder(@PathVariable("id") int id) {
		donHangDAO.deleteById(id);
		return "redirect:/admin/orders/index";
	}

}
