package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ThuCungEntity;

@Controller
public class HomeController {
	@Autowired
	private ThuCungDAO thuCungDAO;

	@RequestMapping("/")
	public String home(Model model) {
		List<ThuCungEntity> thuCungItems = thuCungDAO.findAll();
		model.addAttribute("thuCungItems", thuCungItems);
		return "index";
	}

	@RequestMapping("/index/products/view")
	public String index(Model model) {
		List<ThuCungEntity> thuCungItems = thuCungDAO.findAll();
		model.addAttribute("thuCungItems", thuCungItems);
		return "index";
	}

}
