package com.hackaton.prize.service;

import com.hackaton.prize.domain.Rental;
import com.hackaton.prize.infrastructure.repository.RentalRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
@ExtendWith(SpringExtension.class)
@DataJpaTest
@TestPropertySource("classpath:application-test.properties")
class RentalCheckServiceTest {

    private String myEmail = "sodamlee315@gmail.com";
    private RentalCheckService rentalCheckService;

    @Autowired
    private RentalRepository rentalRepository;

    @BeforeEach
    @DisplayName("서비스 생성")
    void generateService(){
        rentalCheckService = new RentalCheckService(rentalRepository);
    }

    @BeforeEach
    @DisplayName("서비스 테스트용 준비조건 추가")
    void setRentalsByMyName(){
        Rental rental = Rental.builder()
                .id(1L)
                .lesseeEmail(myEmail)
                .status("test now")
                .build();
        Rental rental2 = Rental.builder()
                .id(2L)
                .lesseeEmail(myEmail)
                .status("test now2")
                .build();
        rentalRepository.save(rental);
        rentalRepository.save(rental2);
    }

    @Test
    @DisplayName("등록했던 email로 리스트 가져오기")
    void getMyRentalList(){
        List<Rental> rentals = rentalCheckService.getMyRentalList(myEmail);
        for(Rental rental : rentals){
          assertEquals(myEmail, rental.getLesseeEmail());
        }
    }

}