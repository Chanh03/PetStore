package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anhngo.dao.DonHangDAO;

@Controller
public class TestFormController {
	@Autowired
	private DonHangDAO donHangDAO;

	@RequestMapping("/admin/ordersinfo1/index")
	public String ordersInfo(Model model) {
		// Lấy danh sách đơn hàng
		List<Object[]> ordersList = donHangDAO.findAllOrdersInfo();
		model.addAttribute("ordersInfo", ordersList);

		// Thống kê
		int totalOrders = ordersList.size();
		int totalShippedOrders = 0;
		int totalPendingOrders = 0;
		double totalRevenue = 0;

		for (Object[] order : ordersList) {
			String status = (String) order[8];
			double revenue = ((Number) order[7]).doubleValue();

			if (status.equals("Shipped")) {
				totalShippedOrders++;
			} else {
				totalPendingOrders++;
			}

			totalRevenue += revenue;
		}

		model.addAttribute("totalOrders", totalOrders);
		model.addAttribute("totalShippedOrders", totalShippedOrders);
		model.addAttribute("totalPendingOrders", totalPendingOrders);
		model.addAttribute("totalRevenue", totalRevenue);

		return "html/index";
	}

}
