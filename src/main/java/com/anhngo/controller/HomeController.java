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

	@RequestMapping({ "/index", "/" })
	public String index(Model model, @RequestParam(defaultValue = "1") int page) {
		Pageable pageable = PageRequest.of(page - 1, 16); // Chú ý: page - 1 vì page trong Spring bắt đầu từ 0
		Page<ThuCungEntity> thuCungPage = thuCungDAO.findAll(pageable);

		model.addAttribute("thuCungItems", thuCungPage.getContent()); // Truyền danh sách thay vì Page
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", thuCungPage.getTotalPages());
		model.addAttribute("filter", thuCungDAO.loaiList());
		return "index";
	}

	@RequestMapping("/index/filter")
	public String home(Model model, @RequestParam(required = false) String ten,
			@RequestParam(required = false) String loai, @RequestParam(defaultValue = "1") int page) {
		List<ThuCungEntity> thuCungList = thuCungDAO.findWithFilters(ten, loai);
		int pageSize = 16;

		// Tính toán chỉ số bắt đầu và kết thúc của trang hiện tại
		int startIndex = (page - 1) * pageSize;
		int endIndex = Math.min(startIndex + pageSize, thuCungList.size());

		// Trích xuất danh sách con cho trang hiện tại
		List<ThuCungEntity> thuCungPage = thuCungList.subList(startIndex, endIndex);

		// Tính tổng số trang
		int totalPages = (int) Math.ceil((double) thuCungList.size() / pageSize);

		model.addAttribute("thuCungItems", thuCungPage); // Truyền danh sách thay vì Page
		model.addAttribute("ten", ten);
		model.addAttribute("loai", loai);
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("filter", thuCungDAO.loaiList());
		return "index";
	}

	@RequestMapping("/index/products/view")
	public String index(Model model) {
		List<ThuCungEntity> thuCungItems = thuCungDAO.findAll();
		model.addAttribute("thuCungItems", thuCungItems);
		return "index";
	}
}
