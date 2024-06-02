package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anhngo.dao.ChiTietDonHangDAO;
import com.anhngo.dao.DonHangDAO;
import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ChiTietDonHangEntity;
import com.anhngo.entity.DonHangEntity;
import com.anhngo.entity.ThuCungEntity;

@Controller
public class AdminController_ORDERDETAILS {
	@Autowired
	private ChiTietDonHangDAO chiTietDonHangDAO;
	@Autowired
	private DonHangDAO donHangDAO;
	@Autowired
	private ThuCungDAO thuCungDAO;

	@RequestMapping({ "/admin/orderdetails/index", "/admin/orderdetails/edit/{id}" })
	public String index(Model model, @PathVariable(required = false) Integer id) {
		ChiTietDonHangEntity item;
		if (id != null) {
			item = chiTietDonHangDAO.findById(id).orElse(new ChiTietDonHangEntity());
		} else {
			item = new ChiTietDonHangEntity();
		}
		List<ChiTietDonHangEntity> items = chiTietDonHangDAO.findAll();
		model.addAttribute("items", items);
		model.addAttribute("item", item);

		List<DonHangEntity> orders = donHangDAO.findAll();
		model.addAttribute("orders", orders);
		List<ThuCungEntity> pets = thuCungDAO.findAll();
		model.addAttribute("pets", pets);
		return "/admin/orderdetails/index";
	}

	@RequestMapping("/admin/orderdetails/save")
	public String save(ChiTietDonHangEntity item) {
		chiTietDonHangDAO.save(item);
		return "redirect:/admin/orderdetails/index";
	}

	@RequestMapping("/admin/orderdetails/update")
	public String update(ChiTietDonHangEntity item) {
		chiTietDonHangDAO.save(item);
		return "redirect:/admin/orderdetails/edit/" + item.getMaChiTietDonHang();
	}

	@RequestMapping("/admin/orderdetails/delete/{id}")
	public String delete(@PathVariable Integer id) {
		chiTietDonHangDAO.deleteById(id);
		return "redirect:/admin/orderdetails/index";
	}
}
