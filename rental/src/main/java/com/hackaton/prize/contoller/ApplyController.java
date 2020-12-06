package com.hackaton.prize.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/apply")
public class ApplyController {

//	@Autowired
//	private ApplyService applyService;

//	@RequestMapping("/list")
//	public String list(Model model,
//					   @RequestParam(value = "page", defaultValue = "1") int page,
//					   @RequestParam(value = "size", defaultValue = "20") int size,
//					   @RequestParam(value = "orderBy", defaultValue = "applied") String orderBy) {
//		List<Rental> rentalList = adminService.getRentalList(page, size, orderBy);
//		List<Integer> pageList = adminService.getPageList(page, size);
//		int lastPage = (int) (adminService.getBoardCount() / size);
//
//		model.addAttribute("rentalList", rentalList);
//		model.addAttribute("pageList", pageList);
//		model.addAttribute("page", page);
//		model.addAttribute("size", size);
//		model.addAttribute("orderBy", orderBy);
//		model.addAttribute("lastPage", lastPage);
//		return "admin/adminMain";
//	}

	@RequestMapping("/1")
	public String applyDetail1() {
		return "endUser/rental-apply/applyForm1";
	}

	@RequestMapping("/2")
	public String applyDetail2() {
		return "admin/applyForm2";
	}

	@RequestMapping("/pop_up")
	public String institutionPopUp() {
		return "endUser/rental-apply/institutionSearch"; //jsp 폴더 이하의.jsp 파일을 기재해주시면됩니다.
	}

}