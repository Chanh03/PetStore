package com.anhngo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ThuCungEntity;
import com.anhngo.utils.ParamService;

@Controller
public class NewAdminPETS {
	@Autowired
	private ThuCungDAO thuCungDAO;

	@Autowired
	ParamService paramService;

	@RequestMapping({ "/admin/pets1/index", "/admin/pets1/edit/{id}" })
	public String admin(Model model, @PathVariable(required = false) Integer id,
			@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "5") int size,
			@RequestParam(defaultValue = "maThuCung") String sortBy,
			@RequestParam(defaultValue = "asc") String sortDir) {
		ThuCungEntity item;
		if (id != null) {
			item = thuCungDAO.findById(id).orElse(new ThuCungEntity());
		} else {
			item = new ThuCungEntity();
		}
		model.addAttribute("item", item);

		Sort sort = Sort.by(sortBy);
		sort = sortDir.equalsIgnoreCase("asc") ? sort.ascending() : sort.descending();
		Pageable pageable = PageRequest.of(page, size, sort);
		Page<ThuCungEntity> itemsPage = thuCungDAO.findAll(pageable);
		model.addAttribute("items", itemsPage.getContent());
		model.addAttribute("totalPages", itemsPage.getTotalPages());
		model.addAttribute("currentPage", page);
		model.addAttribute("sortBy", sortBy);
		model.addAttribute("sortDir", sortDir);
		return "/html/pets";
	}

	@RequestMapping("/admin/pets1/save")
	public String save(@ModelAttribute("item") ThuCungEntity item, RedirectAttributes redirectAttributes,
			@RequestParam("saveFile") MultipartFile file) {

		try {
			if (thuCungDAO.existsById(item.getMaThuCung())) {
				return "redirect:/admin/pets1/index";
			}
			String path = "/hinhAnh/pets";
			paramService.save(file, path);
			String fileName = file.getOriginalFilename();
			redirectAttributes.addFlashAttribute("messageUpload", "Tải lên thành công: " + fileName);
			redirectAttributes.addFlashAttribute("filename", fileName);
		} catch (RuntimeException e) {
			// Xử lý ngoại lệ nếu cần thiết
		}
		thuCungDAO.save(item);
		return "redirect:/admin/pets1/index";
	}

	@RequestMapping("/admin/pets1/update")
	public String update(@ModelAttribute("item") ThuCungEntity item, @RequestParam("saveFile") MultipartFile file,
			RedirectAttributes redirectAttributes) {
		try {
			String path = "/hinhAnh/pets";
			paramService.save(file, path);
			String fileName = file.getOriginalFilename();
			redirectAttributes.addFlashAttribute("messageUpload", "Tải lên thành công: " + fileName);
			redirectAttributes.addFlashAttribute("filename", fileName);
		} catch (RuntimeException e) {
			// Xử lý ngoại lệ nếu cần thiết
		}
		thuCungDAO.save(item);
		return "redirect:/admin/pets1/edit/" + item.getMaThuCung();
	}

	@RequestMapping("/admin/pets1/delete/{id}")
	public String delete(@PathVariable Integer id) {
		thuCungDAO.deleteById(id);
		return "redirect:/admin/pets1/index";
	}
}
