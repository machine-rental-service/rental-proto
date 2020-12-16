package com.hackaton.prize.contoller;

import com.hackaton.prize.domain.Rental;
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

    @Autowired
    RentalCheckService rentalCheckService;

    @RequestMapping(value = "/rentalCheck")
    public String rentalCheck() {
        return "redirect:/rentalCheckList?email=";
    }

    @RequestMapping(value="/rentalCheckList", method = RequestMethod.GET)
    public ModelAndView rentalCheckList(@RequestParam("email") String email) {
        System.out.println(email);
        List<Rental> myRentalList=rentalCheckService.getMyRentalList(email);
        ModelAndView mav=new ModelAndView();
        mav.addObject("myRentalList",myRentalList);
        mav.setViewName("rentalCheckList");
        return mav;
    }

    @RequestMapping("/rentalCheckDetail/{id}")
    public String rentalCheckDetail(@PathVariable("id") Long id, Model model) {
        Rental rental=rentalCheckService.getRentalDetail(id);
        model.addAttribute("rental",rental);
        return "rentalCheckDetail";
    }

}
