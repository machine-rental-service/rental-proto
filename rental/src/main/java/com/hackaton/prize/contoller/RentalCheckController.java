package com.hackaton.prize.contoller;

import com.hackaton.prize.service.MakeOrderSevice;
import com.hackaton.prize.service.RentalCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RentalCheckController {//테스트용 컨트롤러입니다(변경금지)

    @Autowired
    RentalCheckService rentalCheckService;

    @RequestMapping("/rentalCheck")
    public String rentalCheck() {
        rentalCheckService.make();
        return "rentalCheck"; //jsp 폴더 이하의.jsp 파일을 기재해주시면됩니다.
    }

    @RequestMapping("/rentalCheckList")
    public String rentalCheckList() {
        rentalCheckService.make();
        return "rentalCheckList"; //jsp 폴더 이하의.jsp 파일을 기재해주시면됩니다.
    }
}
