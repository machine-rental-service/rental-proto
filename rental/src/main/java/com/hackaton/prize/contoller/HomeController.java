package com.hackaton.prize.contoller;

import com.hackaton.prize.service.MakeOrderSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {//테스트용 컨트롤러입니다(변경금지)

    @Autowired
    MakeOrderSevice makeOrderSevice;

    @RequestMapping("/applyForm1")
    public String showMain() {
        makeOrderSevice.makeDummy();
        return "endUser/rental-apply/applyForm1"; //jsp 폴더 이하의.jsp 파일을 기재해주시면됩니다.
    }

    @RequestMapping("/institutionSearch")
    public String apply2() {
        return "endUser/rental-apply/institutionSearch"; //jsp 폴더 이하의.jsp 파일을 기재해주시면됩니다.
    }

}
