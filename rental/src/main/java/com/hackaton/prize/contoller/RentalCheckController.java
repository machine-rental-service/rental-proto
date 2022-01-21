package com.hackaton.prize.contoller;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.infrastructure.repository.RentalDetailRepository;
import com.hackaton.prize.service.AdminService;
import com.hackaton.prize.service.RentalCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class RentalCheckController {

    private final RentalCheckService rentalCheckService;

    private final RentalDetailRepository rentalDetailRepository; //todo:컨트롤러에 노출될필요 없으므로 리팩토링필요

    private final AdminService adminService;

    public RentalCheckController(RentalCheckService rentalCheckService,
                                 RentalDetailRepository rentalDetailRepository, AdminService adminService) {
        this.rentalCheckService = rentalCheckService;
        this.rentalDetailRepository = rentalDetailRepository;
        this.adminService = adminService;
    }


    @RequestMapping(value = "/rentalCheck")
    public String rentalCheck() {
        return "redirect:/rentalCheckList?email=";
    }

    @RequestMapping(value="/rentalCheckList")
    public ModelAndView rentalCheckList(@RequestParam("email") String email) {
        System.out.println(email);
        List<Rental> myRentalList=rentalCheckService.getMyRentalList(email);
        ModelAndView mav=new ModelAndView();
        mav.addObject("myRentalList",myRentalList);
        mav.setViewName("myRental/rentalCheckList");
        return mav;
    }

    @RequestMapping("/rentalCheckDetail")
    public String detail(@RequestParam(value = "id") Long id, Model model) {
        Rental rental = adminService.getRental(id);
        model.addAttribute("rental", rental);
        return "myRental/rentalCheckDetail";
    }

}
