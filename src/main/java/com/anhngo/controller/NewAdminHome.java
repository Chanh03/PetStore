package com.anhngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.anhngo.dao.DonHangDAO;

@Controller
public class NewAdminHome {
	@Autowired
	private DonHangDAO donHangDAO;

	@RequestMapping("/admin/index")
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

		model.addAttribute("thongKeDoanhThu_shipped", donHangDAO.thongKeDoanhThu_shipped());
		model.addAttribute("thongKeDoanhThu_pending", donHangDAO.thongKeDoanhThu_pending());
		model.addAttribute("totalOrders", totalOrders);
		model.addAttribute("totalShippedOrders", totalShippedOrders);
		model.addAttribute("totalPendingOrders", totalPendingOrders);
		model.addAttribute("totalRevenue", totalRevenue);

		return "html/index";
	}

	@RequestMapping("/admin/orders-by-status")
	public String ordersByStatus(Model model, @RequestParam(name = "status", required = false) String status) {
		// Lấy danh sách đơn hàng theo trạng thái
		List<Object[]> ordersList = donHangDAO.findOrdersByStatus(status);
		model.addAttribute("ordersInfo", ordersList);

		// Thống kê
		int totalOrders = ordersList.size();
		int totalShippedOrders = 0;
		int totalPendingOrders = 0;
		double totalRevenue = 0;

		for (Object[] order : ordersList) {
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
