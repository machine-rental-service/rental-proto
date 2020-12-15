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

	@Autowired
	private AdminService adminService;

	@RequestMapping("/list")
	public String uiList(Model model) {

		List<Rental> rentalList = adminService.getRentalList();

		model.addAttribute("rentalList", rentalList);

		return "admin/adminMain";
	}

	@RequestMapping("/rental_detail/{id}")
	public String detail(@PathVariable("id") Long id, Model model) {
		Rental rental = adminService.getRental(id);
		model.addAttribute("rental", rental);
		return "admin/rentalDetail";
	}

	@PostMapping("/update_status")
	public String update(@RequestParam(value = "staffComment") String staffComment, @RequestParam(value = "id") Long id, @RequestParam(value = "func") String func) {
		Rental rental = adminService.getRental(id);
		RentalDetail rentalDetail = rental.getRentalDetail();

		rentalDetail.setStaffComment(staffComment);
		rentalDetail.setStaffApproved(LocalDate.now(ZoneId.of("Asia/Seoul")));

		// func - modify가 아니라면 rental 상태까지 수정
		if (!func.equals("modify")) {
			rental.setStatus(func);
		}

		adminService.updateStatus(rental, rentalDetail);

		return "redirect:list";
	}
}