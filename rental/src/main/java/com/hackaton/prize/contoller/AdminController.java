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
	public String list(Model model,
					   @RequestParam(value = "page", defaultValue = "1") int page,
					   @RequestParam(value = "size", defaultValue = "20") int size,
					   @RequestParam(value = "orderBy", defaultValue = "applied") String orderBy) {

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

	@RequestMapping("/rental_detail/{id}")
	public String detail(@PathVariable("id") Long id, Model model) {
		Rental rental = adminService.getRental(id);
		model.addAttribute("rental", rental);
		return "admin/rentalDetail";
	}

	@RequestMapping("/search")
	public String serarch(@RequestParam(value = "searchType") String keyType,
                        @RequestParam(value = "keyword") String[] keyword, Model model) {
		List<Rental> rentalList = adminService.searchRental(keyType, keyword);
		model.addAttribute("rentalList", rentalList);
		return "admin/adminMain";
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