package com.hackaton.prize.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {//테스트용 컨트롤러입니다(변경금지)

    @RequestMapping("/")
    public String showMain() {
        return "main3";
    }



}
