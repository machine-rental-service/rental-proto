package com.hackaton.prize.contoller;

import com.hackaton.prize.domain.RentalDetail;
import com.hackaton.prize.domain.dto.RentalDetailDto;
import com.hackaton.prize.service.RentalCheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/test")
public class TestController {

    @Autowired
    RentalCheckService rentalCheckService;

    @GetMapping()
    public String test() {
        List<RentalDetailDto> test =new ArrayList<RentalDetailDto>();
        return "test";
    }
}
