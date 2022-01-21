package com.hackaton.prize.service;

import java.time.LocalDate;
import java.time.ZoneId;
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
	private String modifyFunctionMessage= "modify"; // function - modify가 아니라면 rental 상태까지 수정
	private String KoreaTimeZone = "Asia/Seoul";

	public AdminService(RentalRepository rentalRepository) {
		this.rentalRepository = rentalRepository;
	}

	public Rental getRental(Long id) {
		Optional<Rental> rentalWrapper = rentalRepository.findById(id);
		return rentalWrapper.get();
	}

	public long updateStatus(Long id, String function, String staffComment){
		Rental rental = getRental(id);
		RentalDetail rentalDetail = rental.getRentalDetail();
		rentalDetail.setStaffComment(staffComment);
		rentalDetail.setStaffApproved(LocalDate.now(ZoneId.of(KoreaTimeZone)));

		if (!function.equals(modifyFunctionMessage)) {
			rental.setStatus(function);
		}
		rental=rentalRepository.save(rental);
		return rental.getId();
	}

	public List<Rental> getRentalList() {
		List<Rental> rentalList = rentalRepository.findAllByOrderByIdDesc();
		return rentalList;
	}
}
