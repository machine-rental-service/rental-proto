package com.hackaton.prize.infrastructure.repository;

import com.hackaton.prize.domain.Rental;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RentalRepository extends JpaRepository<Rental, Long> {
	List<Rental> findByAppliedBetween(LocalDate satrt, LocalDate end);

    List<Rental> findByLesseeEmail(String lesseeEmail);

    List<Rental> findAllByOrderByIdDesc();

}
