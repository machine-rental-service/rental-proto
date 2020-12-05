package com.hackaton.prize.contoller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.service.AdminService;
import com.hackaton.prize.service.MakeRentalService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {
	@Autowired // 더미 생성하는 서비스
	MakeRentalService MakeRentalService;

	private AdminService adminService;

	@RequestMapping("")
	public String list(Model model, @RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "size", defaultValue = "20") int size, @RequestParam(value = "orderBy", defaultValue = "applied") String orderBy) {
		List<Rental> rentalList = adminService.getRentalList(page, size, orderBy);
		List<Integer> pageList = adminService.getPageList(page, size);
		int lastPage = (int) (adminService.getBoardCount() / size);

		model.addAttribute("rentalList", rentalList);
		model.addAttribute("pageList", pageList);
		model.addAttribute("page", page);
		model.addAttribute("size", size);
		model.addAttribute("orderBy", orderBy);
		model.addAttribute("lastPage", lastPage);

		return "admin/adminMain";
	}

	@RequestMapping("/rentalDetail/{id}")
	public String detail(@PathVariable("id") Long id, Model model) {
		Rental rental = adminService.getRental(id);

		model.addAttribute("rental", rental);

		return "admin/rentalDetail";
	}

	@RequestMapping("/search")
	public String serarch(@RequestParam(value = "searchType") String keyType, @RequestParam(value = "keyword") String[] keyword, Model model) {
		List<Rental> rentalList = adminService.searchRental(keyType, keyword);

		model.addAttribute("rentalList", rentalList);

		return "admin/adminMain";
	}

	@PostMapping("/updateStatus")
	public String update(Rental rental) {
		adminService.updateStatus(rental);

		return "redirect:";
	}
}