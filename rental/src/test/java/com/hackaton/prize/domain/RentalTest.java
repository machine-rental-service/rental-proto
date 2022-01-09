package com.hackaton.prize.domain;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

class RentalTest {

    @BeforeEach
    void makeRentalThatHasNoDetail(){
        Rental rental = Rental.builder()
                .id(1L)
                .lesseeEmail("sodamlee315@gmail.com")
                .status("test now")
                .build();
    }

    @DisplayName("Rental-RentalDetail 1:1관계를 벗어나, Detail을 설정하지 않았을 때 Exception 발생")
    @Test
    void setNoRentalDetail() {
        Throwable exception = assertThrows(NullPointerException.class, () -> {
            throw new NullPointerException("newRentalDetail NULL!!");
        });
        assertEquals(exception.getMessage(), "newRentalDetail NULL!!");
    }
}