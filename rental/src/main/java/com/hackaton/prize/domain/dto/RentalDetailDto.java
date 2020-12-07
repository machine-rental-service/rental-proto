package com.hackaton.prize.domain.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class RentalDetailDto {
    private int tractor; //트랙터

    private int cultivator; // 경운기

    private int farmMaster; //관리기

    private int undergroundCropExtractor; //땅속작물수확기

    private int thresher; //탈곡기

    private int sower; //자주형 종파기

    private int ricePlantingMachine; //이앙 작업기

    private int riceHarvester; //벼 수확기

    private String otherToolsRequest; // 추가 생활공구 요청 한줄글
    
    private LocalDate started; //희망일
}
