package com.hackaton.prize.service;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.domain.RentalDetail;
import com.hackaton.prize.infrastructure.repository.InstitutionRepository;
import com.hackaton.prize.infrastructure.repository.RentalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MakeOrderSevice {

    @Autowired
    RentalRepository rentalRepository;

    @Autowired
    InstitutionRepository institutionRepository;

    public void makeDummy() {
        Rental sampleRental = new Rental();

        RentalDetail sampleDetail = new RentalDetail();
        sampleDetail.setStaffComment("detail comment");
        sampleRental.setRentalDetail(sampleDetail);
        rentalRepository.save(sampleRental);

    }


}
