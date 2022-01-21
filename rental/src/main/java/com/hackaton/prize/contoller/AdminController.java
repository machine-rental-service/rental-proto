package com.hackaton.prize.contoller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.domain.RentalDetail;
import com.hackaton.prize.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private final AdminService adminService;

	public AdminController(AdminService adminService) {
		this.adminService = adminService;
	}

	@RequestMapping("/list")
	public String uiList(Model model) {
		List<Rental> rentalList = adminService.getRentalList();
		model.addAttribute("rentalList", rentalList);
		return "admin/adminMain";
	}

	@RequestMapping("/rental_detail")
	public String detail(@RequestParam(value = "id") Long id, Model model) {
		Rental rental = adminService.getRental(id);
		model.addAttribute("rental", rental);
		return "admin/rentalDetail";
	}

	@PostMapping("/update_status")
	public String update(@RequestParam(value = "staffComment") String staffComment, @RequestParam(value = "id") Long id,
						 @RequestParam(value = "func") String function) {
		Long refreshNumber = adminService.updateStatus(id, function, staffComment);
		return "redirect:rental_detail?id="+refreshNumber.toString();
	}
}