package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.anhngo.dao.ThuCungDAO;
import com.anhngo.entity.ThuCungEntity;
import com.anhngo.utils.ParamService;

@Controller
public class AdminController_PETS {
	@Autowired
	private ThuCungDAO thucungDAO;

	private ParamService paramService;

	@RequestMapping({ "/admin/pets/index", "/admin/pets/edit/{id}" })
	public String admin(Model model, @PathVariable(required = false) Integer id) {
		ThuCungEntity item;
		if (id != null) {
			item = thucungDAO.findById(id).orElse(new ThuCungEntity());
		} else {
			item = new ThuCungEntity();
		}
		model.addAttribute("item", item);

		System.out.println(id);
		List<ThuCungEntity> items = thucungDAO.findAll();
		model.addAttribute("items", items);
		return "/admin/pets/index";
	}

	@RequestMapping("/admin/pets/save")
	public String save(ThuCungEntity item, RedirectAttributes redirectAttributes) {
//		if (file.isEmpty()) {
//			redirectAttributes.addFlashAttribute("messageUpload", "Vui lòng chọn file tải lên");
//		} else {
//			redirectAttributes.addFlashAttribute("message", "Đã lưu thành công");
//			try {
//				String path = "/file"; // Đường dẫn tương đối trong thư mục webapp
//				paramService.save(file, path);
//				redirectAttributes.addFlashAttribute("messageUpload",
//						"Tải lên thành công: " + file.getOriginalFilename());
//				redirectAttributes.addFlashAttribute("filename", file.getOriginalFilename());
//			} catch (RuntimeException e) {
//				redirectAttributes.addFlashAttribute("messageUpload", "Tải lên thất bại: " + e.getMessage());
//			}
//			thucungDAO.save(item);
//		}
		thucungDAO.save(item);
		return "redirect:/admin/pets/index";
	}

	@RequestMapping("/admin/pets/update")
	public String update(ThuCungEntity item) {
		thucungDAO.save(item);
		return "redirect:/admin/pets/edit/" + item.getMaThuCung();
	}

	@RequestMapping("/admin/pets/delete/{id}")
	public String delete(@PathVariable Integer id) {
		thucungDAO.deleteById(id);
		return "redirect:/admin/pets/index";
	}
}
