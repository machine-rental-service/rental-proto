package com.hackaton.prize.service;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.infrastructure.repository.RentalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

@Service
public class RentalCheckService {

    @Autowired
    RentalRepository rentalRepository;

    public List<Rental> getMyRentalList(String email) {
       List<Rental> myRentalList=new LinkedList<>();
       myRentalList=rentalRepository.findBylesseeEmail(email);
       return myRentalList;
    }

    public Rental getRentalDetail(long id) {
        Optional<Rental> rentalDetail = rentalRepository.findById(id);
        return rentalDetail.get();
    }
}
