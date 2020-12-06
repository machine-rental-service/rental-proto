package com.hackaton.prize.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/institution")
public class InstitutionController {

    @RequestMapping("/pop_up")
    public String institutionPopUp() {
        return "endUser/rental-apply/institutionSearch"; //jsp 폴더 이하의.jsp 파일을 기재해주시면됩니다.
    }
}
