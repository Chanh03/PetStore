package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ThuCungEntity;

@Controller
public class HomeController {
	@Autowired
	private ThuCungDAO thuCungDAO;

	@RequestMapping({ "/", "/index", "/index/filter" })
	public String home(Model model, @RequestParam(required = false) String ten,
			@RequestParam(required = false) String loai, @RequestParam(defaultValue = "1") int page) {
		Pageable pageable = PageRequest.of(page, 16);
		Page<ThuCungEntity> thuCungPage = thuCungDAO.findWithFilters(ten, loai, pageable);
		model.addAttribute("thuCungItems", thuCungPage);
		model.addAttribute("currentPage", page);
		model.addAttribute("filter", thuCungDAO.loaiList());
		model.addAttribute("totalPages", thuCungPage.getTotalPages());

		return "index";
	}

	@RequestMapping("/index/products/view")
	public String index(Model model) {
		List<ThuCungEntity> thuCungItems = thuCungDAO.findAll();
		model.addAttribute("thuCungItems", thuCungItems);
		return "index";
	}
}
