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
import com.hackaton.prize.infrastructure.repository.RentalRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class AdminService {
	private RentalRepository rentalRepository;

	public List<Rental> getRentalList(int pageNum, int size, String orderBy) {
		Page<Rental> page = rentalRepository.findAll(PageRequest.of(pageNum - 1, size, Sort.by(Sort.Direction.DESC, orderBy)));

		List<Rental> rentalList = page.getContent();

		return rentalList;
	}

	public Long getBoardCount() {
		return rentalRepository.count();
	}

	public List<Integer> getPageList(int curPageNum, int size) {
		int pageBlock = 5;

		List<Integer> pageList = new ArrayList<Integer>();

		// 총 게시글 갯수
		Double postsTotalCount = Double.valueOf(this.getBoardCount());
		int realEnd = (int) Math.ceil(postsTotalCount / (size * 1.0));
		// 총 게시글 기준으로 계산한 마지막 페이지 번호 계산 (올림으로 계산)
		int endPage = (int) (Math.ceil(curPageNum / (pageBlock * 1.0))) * pageBlock;
		int startPage = endPage - pageBlock + 1;

		endPage = (int) (((postsTotalCount / size) < endPage) ? realEnd : endPage);

		for (int i = startPage; i <= endPage; i++) {
			pageList.add(i);
		}

		return pageList;
	}

	public Rental getRental(Long id) {
		Optional<Rental> rentalWrapper = rentalRepository.findById(id);

		return rentalWrapper.get();
	}

	public void updateStatus() {
		// TODO Auto-generated method stub

	}

	public List<Rental> searchRental(String keyType, String[] keyword) {
		List<Rental> rentalList = new ArrayList<>();
		if (keyType.equals("lesseeName")) {
			rentalList = rentalRepository.findByLesseeNameContaining(keyword[0]);
		} else if (keyType.equals("localInstitution")) {
			rentalList = rentalRepository.findByLocalInstitutionContaining(keyword[0]);
		} else if (keyType.equals("applied")) {
			LocalDate start = LocalDate.parse(keyword[1], DateTimeFormatter.ISO_DATE);
			LocalDate end = LocalDate.parse(keyword[2], DateTimeFormatter.ISO_DATE);
			rentalList = rentalRepository.findByAppliedBetween(start, end);
		}
		return rentalList;
	}

	public Long updateStatus(Rental rental) {
		return rentalRepository.save(rental).getId();

	}

}
