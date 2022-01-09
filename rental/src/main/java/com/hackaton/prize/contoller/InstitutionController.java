package com.hackaton.prize.contoller;

import com.hackaton.prize.domain.Institution;
import com.hackaton.prize.infrastructure.repository.InstitutionRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/institution")
public class InstitutionController {

    private final InstitutionRepository institutionRepository;

    public InstitutionController(InstitutionRepository institutionRepository) {
        this.institutionRepository = institutionRepository;
    }

    @GetMapping("/search")
    public String moveSearchForm() {
        return "endUser/rental-apply/institutionSearch";
    }

    @PostMapping("/search")
    public String search(Model model, String keyword) {
        model.addAttribute("keyword",keyword);
        List<Institution> list= institutionRepository.findAllByAddressContains(keyword);
        model.addAttribute("list", list);
        return "endUser/rental-apply/institutionSearchResult";
    }


}
