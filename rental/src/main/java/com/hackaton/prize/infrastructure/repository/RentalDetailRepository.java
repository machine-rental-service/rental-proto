package com.hackaton.prize.infrastructure.repository;

import com.hackaton.prize.domain.RentalDetail;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RentalDetailRepository extends JpaRepository<RentalDetail, Long> {

}
