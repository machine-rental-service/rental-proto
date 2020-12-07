package com.hackaton.prize.domain.dto;

import lombok.Data;

@Data
public class RentalDto {

    private String lesseeName;

    private String lesseeBirthday; //생년월일 YYMMDD

    private String lesseeEmail;

    private String lesseePhoneNumber;

    private String lesseeAddress;

    private String localInstitution; // 권역 사무소 (현재 DB 연관 관계 가질필요 없음)

}
