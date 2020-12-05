package com.hackaton.prize.infrastructure.repository;

import com.hackaton.prize.domain.Rental;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentalRepository extends JpaRepository<Rental, Long> {

    List<Rental> findBylesseeEmail(String lesseeEmail);
}
