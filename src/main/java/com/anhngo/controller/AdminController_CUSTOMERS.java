package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anhngo.dao.KhachHangDAO;
import com.anhngo.entity.KhachHangEntity;
import com.anhngo.utils.MaHoa;

@Controller
public class AdminController_CUSTOMERS {
	@Autowired
	private KhachHangDAO khachhangDAO;

	@RequestMapping({ "/admin/customers/index", "/admin/customers/edit/{id}" })
	public String admin(Model model, @PathVariable(required = false) Integer id) {
		KhachHangEntity item;
		if (id != null) {
			item = khachhangDAO.findById(id).orElse(new KhachHangEntity());
		} else {
			item = new KhachHangEntity();
		}
		model.addAttribute("item", item);
		List<KhachHangEntity> items = khachhangDAO.findAll();
		for (KhachHangEntity khachHangEntity : items) {
			khachHangEntity.setEmailKH(MaHoa.maskEmail(khachHangEntity.getEmailKH()));
			khachHangEntity.setMatKhauKH(MaHoa.maskPassword(khachHangEntity.getMatKhauKH()));
		}
		model.addAttribute("items", items);
		return "/admin/customers/index";
	}

	@RequestMapping("/admin/customers/save")
	public String save(KhachHangEntity item) {
		khachhangDAO.save(item);
		return "redirect:/admin/customers/index";
	}

	@RequestMapping("/admin/customers/update")
	public String update(KhachHangEntity item) {
		khachhangDAO.save(item);
		return "redirect:/admin/customers/edit/" + item.getMaKhachHang();
	}

	@RequestMapping("/admin/customers/delete/{id}")
	public String delete(@PathVariable Integer id) {
		khachhangDAO.deleteById(id);
		return "redirect:/admin/customers/index";
	}
}
