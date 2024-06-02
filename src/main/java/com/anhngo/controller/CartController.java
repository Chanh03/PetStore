package com.anhngo.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ThuCungEntity;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {
	@Autowired
	private ThuCungDAO thuCungDAO;

	@RequestMapping("/cart/details/view/{id}")
	public String cart(Model model, @PathVariable("id") int id, HttpSession session,
			RedirectAttributes redirectAttributes) {
		// Lấy giỏ hàng từ session
		HashMap<Integer, ThuCungEntity> cart = (HashMap<Integer, ThuCungEntity>) session.getAttribute("cart");

		// Nếu giỏ hàng chưa tồn tại, tạo mới
		if (cart == null) {
			cart = new HashMap<>();
		}

		// Kiểm tra nếu sản phẩm đã có trong giỏ hàng
//		if (cart.containsKey(id)) {
//			redirectAttributes.addFlashAttribute("message", "Sản phẩm đã có trong giỏ hàng");
//			return "redirect:/cart/details/view";
//		} else if (id == 0) {
//			return "redirect:/cart/details/view";
//		} else {
//			// Thêm sản phẩm vào giỏ hàng
//			ThuCungEntity thucung = thuCungDAO.findById(id).get();
//			cart.put(id, thucung);
//		}
		// Thêm sản phẩm vào giỏ hàng
		ThuCungEntity thucung = thuCungDAO.findById(id).get();
		cart.put(id, thucung);
		session.setAttribute("cart", cart);
		model.addAttribute("cart", cart);

		return "redirect:/cart/details/view";
	}

	@RequestMapping("/cart/details/remove/{id}")
	public String remove(Model model, @PathVariable("id") int id, HttpSession session) {
		// Lấy giỏ hàng từ session
		HashMap<Integer, ThuCungEntity> cart = (HashMap<Integer, ThuCungEntity>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<>();
		}

		// Xóa sản phẩm khỏi giỏ hàng
		cart.remove(id);
		session.setAttribute("cart", cart);
		model.addAttribute("cart", cart);
		return "redirect:/cart/details/view";
	}

	@RequestMapping("/cart/details/clear")
	public String clear(Model model, HttpSession session) {
		// Lấy giỏ hàng từ session
		HashMap<Integer, ThuCungEntity> cart = (HashMap<Integer, ThuCungEntity>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<>();
		}

		// Xóa toàn bộ sản phẩm khỏi giỏ hàng
		cart.clear();
		session.setAttribute("cart", cart);
		model.addAttribute("cart", cart);
		return "redirect:/cart/details/view";
	}

	@RequestMapping("/cart/details/view")
	public String cart() {
		return "cartViewDetail";

	}
}
