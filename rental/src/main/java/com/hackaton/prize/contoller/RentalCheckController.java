package com.hackaton.prize.contoller;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.service.RentalCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class RentalCheckController {//테스트용 컨트롤러입니다(변경금지)

    @Autowired
    RentalCheckService rentalCheckService;

    @RequestMapping(value = "/rentalCheck")
    public String rentalCheck() {
        return "rentalCheck";
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

    @RequestMapping("/rentalCheckDetail")
    public String rentalCheckDetail() {
        return "rentalCheckDetail"; //jsp 폴더 이하의.jsp 파일을 기재해주시면됩니다.
    }
}
