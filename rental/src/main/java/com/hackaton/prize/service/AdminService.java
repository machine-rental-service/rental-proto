package com.hackaton.prize.service;

import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.domain.RentalDetail;
import com.hackaton.prize.infrastructure.repository.RentalDetailRepository;
import com.hackaton.prize.infrastructure.repository.RentalRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class AdminService {
	private RentalRepository rentalRepository;
	private RentalDetailRepository rentalDetailRepository;

	public Rental getRental(Long id) {
		Optional<Rental> rentalWrapper = rentalRepository.findById(id);

		return rentalWrapper.get();
	}

	public void updateStatus(Rental rental, RentalDetail rentalDetail) {
		rentalRepository.save(rental);
		rentalDetailRepository.save(rentalDetail);
	}

	public List<Rental> getRentalList() {
		List<Rental> rentalList = rentalRepository.findAll();
		
		return rentalList;
	}
}
