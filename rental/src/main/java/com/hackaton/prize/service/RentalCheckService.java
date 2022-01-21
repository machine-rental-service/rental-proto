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

    private final RentalRepository rentalRepository;

    public RentalCheckService(RentalRepository rentalRepository) {
        this.rentalRepository = rentalRepository;
    }

    public List<Rental> getMyRentalList(String email) {
       List<Rental> myRentalList = rentalRepository.findByLesseeEmail(email);
       return myRentalList;
    }
}
