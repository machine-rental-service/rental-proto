package com.hackaton.prize.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.domain.RentalDetail;
import com.hackaton.prize.infrastructure.repository.RentalDetailRepository;
import com.hackaton.prize.infrastructure.repository.RentalRepository;


@Service
public class AdminService {

	private final RentalRepository rentalRepository;

	private RentalDetailRepository rentalDetailRepository;

	public AdminService(RentalRepository rentalRepository, RentalDetailRepository rentalDetailRepository) {
		this.rentalRepository = rentalRepository;
		this.rentalDetailRepository = rentalDetailRepository;
	}

	public Rental getRental(Long id) {
		Optional<Rental> rentalWrapper = rentalRepository.findById(id);
		return rentalWrapper.get();
	}

	public void updateStatus(Rental rental, RentalDetail rentalDetail) {
		rentalRepository.save(rental);
	}

	public List<Rental> getRentalList() {
		List<Rental> rentalList = rentalRepository.findAllByOrderByIdDesc();
		return rentalList;
	}
}
