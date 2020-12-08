package com.hackaton.prize.infrastructure.repository;

import com.hackaton.prize.domain.Institution;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InstitutionRepository extends JpaRepository<Institution, Long> {
    List<Institution> findAllByAddressContains(String keyword);
    Institution findByName(String name);

}
