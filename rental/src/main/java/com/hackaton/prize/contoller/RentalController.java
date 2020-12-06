package com.hackaton.prize.contoller;

import com.hackaton.prize.domain.dto.DummyDto;
import com.hackaton.prize.domain.dto.RentalDto;
import com.sun.deploy.net.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/apply")
public class RentalController {

    @GetMapping(value = "/step1")
    public String moveRentalForm() {
        return "dummy/applyForm1";
        //        return "endUser/rental-apply/applyForm1";
    }

    @PostMapping(value = "/step1")
    public String saveRentalData(Model model, RentalDto rentalDto, HttpSession session) {
        session.setAttribute("lesseeData", rentalDto);
        return "dummy/applyForm2"; //2단계로 이동
    }

    @PostMapping(value = "/step2") //대여 접수 폼 2단계 수집정보 저장 후, 해당 접수 조회 페이지로 이동
    public String saveRentalData(Model model, HttpSession session) {
        RentalDto rentalDto = (RentalDto) session.getAttribute("lesseeData");
        System.out.println(rentalDto.getLesseeEmail());
        return "dummy/applyRead"; //2단계 폼으로 이동
    }


}