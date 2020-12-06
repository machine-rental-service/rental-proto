package com.hackaton.prize.contoller;

import com.hackaton.prize.domain.dto.DummyDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/apply")
public class RentalController {

    @GetMapping(value = "/step1")
    public String writeRentalData(Model model) {
        return "endUser/rental-apply/applyForm1";
    }

    @PostMapping(value = "/step1")
    public String saveRentalData() {
        return "admin/applyForm2"; //2단계로 이동
     }

    @PostMapping(value = "/step2") //대여 접수 폼 2단계 수집정보 저장 후, 해당 접수 조회 페이지로 이동
    public String saveRentalData(Model model, Long rentalId) {
        //연산 끝난후 디테일까지 정리하고 id값 적어서 넘겨줌(방금작성한 게시글)
        return "dummy/applyRead"; //2단계 폼으로 이동
    }



}