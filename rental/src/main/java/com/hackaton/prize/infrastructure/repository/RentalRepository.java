package com.hackaton.prize.infrastructure.repository;

import com.hackaton.prize.domain.Rental;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentalRepository extends JpaRepository<Rental, Long> {
	List<Rental> findByLesseeNameContaining(String keyword);

	List<Rental> findByLocalInstitutionContaining(String keyword);

	List<Rental> findByAppliedBetween(LocalDate satrt, LocalDate end);

    List<Rental> findBylesseeEmail(String lesseeEmail);
}
